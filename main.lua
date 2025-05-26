
lvls={
	{ -- tutorial
	{"tutorial",{6,6,-1},{1,1,1}}
	},
    { -- level pack 2 "base levels"
	{"intro",{4,4,-1},{2,2,1},{3,3,1}},
	{"two-step",{4,5,-1},{4,3,1},{3,4,1},{3,5,1}},
	{"factory",{4,3,-1},{3,2,1},{4,2,1},{5,1,1},{6,3,1}},
	{"corner boost",{5,5,-1},{2,2,1},{1,2,1},{2,1,1},{4,4,1}},
	{"escape pod",{6,6,-1},{1,1,1},{2,1,1},{3,1,1}},
	{"corner boost 2",{4,6,-1},{6,4,1},{3,4,1},{4,3,1},{4,4,1}},
	{"escape pod 2",{6,5,-1},{3,3,1},{3,4,1},{4,3,1},{4,4,1}},
	{"inchworm",{5,6,-1},{2,4,1},{2,5,1},{2,6,1},{3,6,1}},
	{"goals",{3,6,-1},{4,6,-1},{3,3,1},{4,4,1},{6,4,1},{4,5,1},{5,6,1}},
	{"expand",{2,3,-1},{2,5,-1},{4,5,-1},{3,3,1},{3,4,1},{3,5,1},{4,3,1}},
	{"criss-cross",{2,6,-1},{4,1,-1},{4,2,1},{3,3,1},{3,4,1},{2,5,1}},
	{"factory 2",{1,3,-1},{1,1,1},{2,1,1},{4,2,1},{5,4,1},{4,5,1},{2,4,1}},
	{"elephant",{1,4,-1},{1,1,1},{3,1,1},{2,2,1},{4,3,1},{5,4,1},{2,4,1}},
	{"cage",{5,6,-1},{2,1,0},{3,1,0},{4,1,0},{5,1,0},{2,2,0},{5,2,0},{2,3,0},{3,2,1},{4,3,1},{5,3,0},{2,4,0},{3,4,0},{5,4,0}},
	{"extender",{6,4,-1},{1,5,1},{2,5,1},{3,5,1},{2,6,1},{3,6,1}},
	},
}

function love.load()

    lg = love.graphics

    math.randomseed(os.time())

    --init window size, etc. 
    scale, xtranslate, ytranslate=1, 0, 0
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.window.setTitle("Tactic-Toe")

    love.window.setFullscreen(true, "desktop")
    local width, height = lg.getWidth(), lg.getHeight()
    love.window.setFullscreen(false)
    love.window.setMode(1024, 1024, {resizable=true, minwidth=512, minheight=512})


    love.resize(lg.getWidth(), lg.getHeight())


    --font stuff. for bigger fonts, we should make new fonts with different size to avoid blurriness. better to choose bigger and scale down than choose smaller and scale up.
    picofont = lg.newFont("/data/fonts/pico-8.ttf", 48)
    picosmallfont = lg.newFont("/data/fonts/pico-8.ttf", 24)
    lg.setFont(picofont)
    love.keyboard.setKeyRepeat(true)
    keyrepeats = {}

    --colors (taken from pico8 palette ). Remember, use setColor(white) for pico8 white, use setcolor(1,1,1) for lg.draw
	black = {0,0,0}
	yellow = {1, 0.925, 0.153}
    darkBlue = {0.113, 0.169, 0.325}
    lightBlue = {41/255, 173/255, 1}
    lightGrey = {194/255, 195/255, 199/255}
    white = {1, 241/255, 232/255}
    pink = {1, 119/255, 168/255}

    --title init
    mode="title"
    titleAnim = newAnimation(lg.newImage("/data/imgs/title.png"), 512, 512, 4)
    titleBtn={"play","make","free","dele","info"}
    titleBtnIndx=1
	titleTimer = 0


    --lpack init
    lpackIcons = {}
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/tutorial.png"),240,240,4)
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/baselvls-sheet.png"),240,240,4)
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/rocketlvls.png"),240,240,1.8)
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/knightlvls.png"),240,240,1.2, true)
    cur={}
	for i=1,#lpackIcons do
		cur[i] = 1
	end
    lpack, lpOffset, lpTargOffset = 1, 0, 0

    --level select init 
    l={}
    for i=1,#lvls do
		l[i]=0
    end
    ls_boxselect=1
    ls_levelstart=1
    ls_shift=-12

    --level init
    blockIcons={}
    blockIcons[-1] = lg.newImage("/data/imgs/goal.png")
    blockIcons[0] = lg.newImage("/data/imgs/stoneBlock.png")
    blockIcons[1] = lg.newImage("/data/imgs/regBlock.png")
    blockIcons[2] = lg.newImage("/data/imgs/rocketBlock.png")
    blockIcons[3] = lg.newImage("/data/imgs/knightBlock.png")
    blockIcons["yes"] = lg.newImage("/data/imgs/selectedBlock.png")
    blockIcons["no"] = lg.newImage("/data/imgs/selectedBlockNoMoves.png")
    x,y = 0,0
    lock = 0
    dopamine = 0
    currwon=false
    cursor = newAnimation(lg.newImage("/data/imgs/cursor.png"),64,64,3.5)
	mouseloc={0,0}
	swipe={}
end

--main draw and update functions
function love.update(dt)
    if mode=="title" then
		update_title(dt)
	elseif mode=="select" then
		update_select(dt)
    elseif mode=="lpack" then
        update_lpack(dt)
	elseif mode=="tutorial" then
		update_tutorial(dt)
	elseif mode=="editor" then
		update_editor(dt)
	elseif mode=="level" then
		update_level(dt)
	elseif mode=="hint" then
		--if(btnp(❎)) 
        mode="level"
	end
end
function love.draw()
    --maintain centered screen
    lg.translate(xtranslate,ytranslate)
    lg.scale(scale)
    lg.setColor(darkBlue)
    lg.rectangle("fill",0,0,512,512)
    lg.setColor(1, 1, 1)
    --call draw for mode
    if mode=="title" then
		draw_title()
    elseif mode=="tutorial" then
 	    draw_tutorial()
    elseif mode=="editor" then
 	    draw_editor()
	elseif mode=="select" then
        draw_select()
	elseif mode=="lpack" then
		draw_lpack()
	elseif mode=="level" then
		draw_level()
	end
	lg.setColor(black)
	lg.rectangle("fill",-128,0,128,lg.getHeight())
	lg.rectangle("fill",512,0,256,lg.getHeight())
    lg.setColor(yellow)
	mx,my=love.mouse.getPosition()
	mx = (mx-xtranslate)/scale
	my = (my-ytranslate)/scale
	lg.setColor(white)
	lg.printf(mouseloc[1].." ".. mouseloc[2],0,0,400)
	lg.printf(math.floor(mx).." ".. math.floor(my),0,200,400)

end

--DRAW AND UPDATE FOR EACH MODE


--title
function draw_title()
    drawAnimation(titleAnim,0,0)

    lg.setColor(darkBlue)
    lg.printf(titleBtn[titleBtnIndx],160,404,200,"center",0,1,0.5)
    lg.setColor(yellow)
    lg.printf(titleBtn[titleBtnIndx],156,400,200,"center",0,1,0.5)
	for i = -1,3 do
		lg.setColor(yellow)
		lg.printf("c",i*140+titleTimer*140,468,480,"center", 0, 0.5, 0.5)
		lg.setColor(white)
		lg.printf("press",i*140-64+titleTimer*140,468,480,"center", 0, 0.5, 0.5)
	end
end

function update_title(dt)
    updateAnimation(titleAnim,dt)
	titleTimer = titleTimer + dt*0.5
	if titleTimer > 1 then 
		titleTimer = titleTimer - 1
	end
end


--lpack 
function draw_lpack()
    --should have lpTargOffset = 320(lpack - 1), so who to print 
    local middlepack = math.ceil(lpOffset/320+0.5)
    for i=math.max(1,middlepack-1),math.min(#lpackIcons, middlepack+1) do 
        drawLpackIcon(i, 320*(i-1)-lpOffset+136)
    end
end

function update_lpack(dt)
    --only animate the selected lpack, even if its off screen
    updateAnimation(lpackIcons[lpack],dt)
    if lpTargOffset ~= lpOffset then
        if lpOffset < lpTargOffset then
            lpOffset = lpOffset + 400*dt
            --lpOffset = lpOffset + 1.2
        elseif lpOffset > lpTargOffset then 
            lpOffset = lpOffset - 400*dt
           -- lpOffset = lpOffset - 1.2
        end

        if math.abs(lpOffset-lpTargOffset) < 1 then
            lpOffset = lpTargOffset
        end
    end
end

--level select
function draw_select()
    lg.setColor(lightGrey)
    --draw all level tabs

    lg.setFont(picosmallfont)
	for i=1,#lvls[lpack] do
	    lg.printf(i..". "..lvls[lpack][i][1],64,4*(69+12*i+ls_shift),560,"left",0,1,1)
	end
	for i=l[lpack]+2,#lvls[lpack] do
	    --spr(16,100,68+12*i+ls_shift)
	end
	--draw selected level tab
    lg.setColor(pink)
    lg.rectangle("fill", 4*12,4*(66+12*ls_boxselect-12),4*(113-14),4*10,0,0)
    --rectfill(12,66+12*ls_boxselect-12,113,66+12*ls_boxselect-2,10)
	--circfill(12,71+12*ls_boxselect-12,5,10)
	--circfill(116,71+12*ls_boxselect-12,5,10)

    lg.setColor(yellow)
	lg.printf(cur[lpack]..". "..lvls[lpack][cur[lpack]][1],64,4*(56+12*ls_boxselect),480,"left",0,1,1)
    lg.setFont(picofont)
	for i=1,l[lpack] do
	    --spr(21,100,67+12*i+ls_shift)
    end
    --draw preview level
    --rectfill(0,0,128,64,0)
    --rect(37,5,90,58,10)
	--rectfill(39,7,88,56,1)

    lg.setColor(darkBlue)
    lg.rectangle("fill", 0,0,512,256)
    drawPreviewLevel(lvls[lpack][cur[lpack]])
	--rectfill(0,2,16,8,6)
	--circfill(18,5,3,6)
end


function update_select()

end

-- level 
function draw_level()
    lg.setColor(black)
    lg.rectangle("fill", 0, 0, 512, 512)
    lg.setColor(darkBlue)
    lg.rectangle("fill", 64, 64, 384, 384)
	--print("bck",2,22,12)
	--print("hlp",2,38,10)
	--print("clr",2,54,8)

    lg.setColor(white)
	lg.printf(cur[lpack]..". "..b[1], 64, 16, 768, "center", 0, 0.5, 0.5)
	
	txt=""
	if (lpack==2) then txt="press c to " end
	if(x==0) then
		if (y==1) then
			txt=txt.."go to level select"
		elseif(y==2) then
			txt=txt.."see if close"
		elseif(y==3) then
			txt=txt.."restart level"
		end	
	elseif(lpack==2) then
		txt=txt.."select, x to undo"
	else
		txt=""
	end
	lg.printf(txt,64,472,768,"center",0, 0.5, 0.5)
		
	-- level sprites
	for i=2, #b do
		if lock==1 and sx==b[i][1] and sy==b[i][2] then
			-- selected block
            lg.setColor(pink)
            lg.rectangle("fill", sx*64, sy*64, 64, 64)
            lg.setColor(yellow)
            lg.rectangle("fill", sx*64+8, sy*64+8, 48, 48)
            lg.setColor(1,1,1)
            local hasMoves = "yes"
			local sdx=0
			local sdy=0
			if (x<sx) then sdx =  - 1 end
			if (x>sx) then sdx=  1 end
			if (y<sy) then sdy = -1 end
			if (y>sy) then sdy = 1 end
			local upn={116,20}
			if(#a==0) then upn={4,52} end
            if #a == 0 then hasMoves = "no" end 
            lg.draw(blockIcons[hasMoves], sx*64+sdx*4, sy*64+sdy*4)
		else
            lg.setColor(1,1,1)
            lg.draw(blockIcons[b[i][3]], b[i][1]*64, b[i][2]*64)
		end
	end
	
	-- yellow dots
	if (lock==1) then
		for i=1,#a do
			local dx=a[i][1]
			local dy=a[i][2]
			if(btype=="rocket") then
				dx, dy = rb[i][1], rb[i][2]
                if dx == 0 or dy == 0 then
                    --TODO draw the strafing arrow. use the rotate feature, only need one image
                else
                    --TODO draw the diagonal arrow
                end
            else
                --draw regular dot
                lg.setColor(yellow)
                lg.rectangle("fill", dx*64+24, dy*64+24, 16, 16)
            end
		end
	end
	yelloow = {1, 0.925, 0.153,1-#swipe*.01}
	lg.setLineWidth(8)
	for i=1, #swipe-1 do
		yelloow[4] = yelloow[4]+.01
		lg.setColor(yelloow)
        lg.line(swipe[i][1]*64+28, swipe[i][2]*64+28, swipe[i+1][1]*64+28, swipe[i+1][2]*64+28)
	end
	--	if(lpack==6) exhandler(cur[lpack])
    if not currwon then 
        lg.setColor(1,1,1)
        drawAnimation(cursor, x*64, y*64)
    end

	if currwon then
		for z=g+2,#b do
            lg.setColor(yellow)
            lg.rectangle("fill", b[z][1]*64+8, b[z][2]*64+8, 48, 48)
            lg.setColor(1,1,1)
            lg.draw(blockIcons["yes"], b[z][1]*64, b[z][2]*64)
		end
        if(lpack==-1 or lpack==1) then dopamine=0 end 
        if(dopamine>=20/30) then 
            lg.setColor(yellow)
            lg.rectangle("fill",132,196,248,136)
        end
        if (dopamine>=24/30) then 
            lg.setColor(pink)
            lg.rectangle("fill", 136, 200, 240, 128)
        end
        if dopamine>=27/30 then
			local txts={"next level","level select", "retry"}
            if(cur[lpack]>=#lvls[lpack]) then txts[1]="continue" end
            for i=1,3 do
                lg.setColor(white)
                if i == mselect then lg.setColor(yellow) end
                lg.printf(txts[i],152,40*i+170,480,"left",0,0.5,0.5)
            end
		end
		parts_draw()
	end
end

function update_level(dt)
    if lock == 1 then updateAnimation(cursor, dt) end
    if currwon then parts_update(dt) dopamine = dopamine + dt end

	if lock==0 and not currwon then
		swipe_controls()
	end

end

function swipe_controls()
	mouseloc={math.floor((mx)/64),math.floor((my)/64)}
	--add so its only heart touches that count
	if love.mouse.isDown(1) then
		if (#swipe==0 or swipe[#swipe][1]~=mouseloc[1] or swipe[#swipe][2]~=mouseloc[2]) and mx-mouseloc[1]*64 > 16 and mx-mouseloc[1]*64 < 48 and  my-mouseloc[2]*64 > 16 and my-mouseloc[2]*64 < 48 then
			table.insert(swipe,{mouseloc[1],mouseloc[2]})
		end
	else
		local swipeprev = nil
		local moreswipe = true
		local moved=nil
		local swipeid = nil
		local cbskip = 0
		while moreswipe do
			moreswipe = nil
			moved = #un
			for i=1,#swipe do
				if cbskip > 0 then
					cbskip = cbskip - 1 
				else
					swipeid = contains(swipe[i][1],swipe[i][2])
					if swipeid then
						if i<#swipe-3 and contains(swipe[i+1][1],swipe[i+1][2]) and contains(swipe[i+2][1],swipe[i+2][2]) and contains(swipe[i+3][1],swipe[i+3][2]) and swipe[i+2][1]==swipe[i][1] and swipe[i+2][2]==swipe[i][2] then
							cbskip = 2
							--need to worry about more than one apart error, user exploit
							--also deal with corner boost with more than one space
							local cbx = (swipe[i][1]+swipe[i+1][1])/2 - swipe[i+3][1]
							local cby = (swipe[i][2]+swipe[i+1][2])/2 - swipe[i+3][2]
							
							if cbx > 0 then
								cbx = swipe[i+3][1] + 1
							elseif cbx < 0 then
								cbx = swipe[i+3][1] - 1
							else
								cbx = swipe[i+3][1]
							end
							
							if cby > 0 then
								cby = swipe[i+3][2] + 1
							elseif cby < 0 then
								cby = swipe[i+3][2] - 1
							else
								cby = swipe[i+3][2]
							end

							swipeprev={cbx,cby}

						elseif swipeprev then
							x = swipe[i][1]
							y = swipe[i][2]
							level_unlocked("c")
							x = swipe[i][1]+(swipe[i][1]-swipeprev[1])
							y = swipe[i][2]+(swipe[i][2]-swipeprev[2])
							level_locked("c")
							if #un > moved then
								swipeprev=nil
								moreswipe = true
								break
							end
						end

						if cbskip == 0 then
							swipeprev={swipe[i][1],swipe[i][2]}
						end
					end
				end
			end
		end
		swipe={}
	end
end

function level_unlocked(key)
 cf=38 sx=-1 sy=-1
	
	if (key == "left" and (x>1 or (x==1 and y<4))) then x = x - 1 end
	if (key == "right" and x ~= 6) then x = x + 1 end
	if (key == "up" and y ~= 1) then y = y - 1 end
	if (key == "down" and ((y<6 and x>0) or y<3)) then y = y + 1 end
	
	
	if key == "c" then
		fval=""
		if (x==0) then
			if y==1 then
				if (lpack==-1) then mode="editor" return end 
				mode="select"
				setup_ls()
			elseif y==2 then
					btype=""
					if fval=="" then
						fval="not close"
						if (future(3)) then fval="close!" end
						end
			elseif y==3 then
				if (lp==-1) then set_b(elvl) return end
				set_b()
			end
			return
		end
		
		for i=g+2,#b do
			if (x==b[i][1] and y==b[i][2] and b[i][3]>0) then
				lock=1
				sx=x sy=y
				blocks(b[i])
				break
			end
		end
	end
	
	
	if key == "x" and #un>0 then
		fval=""
		b[un[#un][3]][1]=un[#un][1]
		b[un[#un][3]][2]=un[#un][2]
		deli(un,#un)
		lock=0
        cursor.currentTime = 0
	end
end


function level_locked(key)
		rx=x ry=y 
		if (key == "up") then ry=y-1 end
		if (key == "left") then rx=x-1 end
		if (key == "right") then rx=x+1 end
		if (key == "down") then ry=y+1 end
		
		val=2
		if(btype=="knight") then val=3 end
		if(btype=="eye") then val=6 end
		if inbounds(rx,ry) and math.abs(sx-rx)<val and math.abs(sy-ry)<val	then
	 	    x=rx y=ry
		end

	--cf=38+2*(flr(time())%2)
	
	if key == "c" then
		for j=1,#a do	
			local dx=a[j][1] 
			local dy=a[j][2]
			if btype=="rocket" then
				dx=rb[j][1]
				dy=rb[j][2]
			end	 
			if x==dx and y==dy then
	 		for i=g+2,#b do
					if sx==b[i][1] and sy==b[i][2] then 
						add(un,{b[i][1],b[i][2],i})
						x=a[j][1]
						y=a[j][2] 
						b[i][1]=x
						b[i][2]=y
					end
				end
			 break
		 end
	 end
	 lock=0 btype=""
     cursor.currentTime = 0
	 
		currwon=won()
		
		if currwon==true	then
			gnum=0
			cf=-20
			parts_init()
			mselect=1
			if lpack ~= -1 and l[lpack]<cur[lpack] then
				l[lpack] = l[lpack] + 1
                --TODO: PERMANENT MEMORY STUFF
				--dset(lpack+1,l[lpack])
				--dset(1,1)
			end	
			--dset(2,lpack)
			return
		end
	end
	if (key == "x") then lock=0 btype="" cursor.currentTime = 0 end 
end

function level_won(key)
	if(key == "up" and mselect>1) then mselect = mselect - 1 end
	if(key == "down" and mselect<3) then mselect = mselect + 1 end
	
	if (key == "x" and mode=="level") then mselect = 2 end
	
	if key == "c" or key == "x" then
		currwon=false
		dopamine=0
	 
	 if (lpack==-1) then mode="editor" return end 
	
		if mselect==1 then
			if (cur[lpack]==#lvls[lpack]) then
				mode="lpack"
			else
				if (cur[lpack]<#lvls[lpack]) then cur[lpack] = cur[lpack] + 1 end
				set_b()
			end
		elseif mselect==2 then
			if (cur[lpack]<#lvls[lpack]) then cur[lpack] = cur[lpack] + 1 end
			mode="select"
			setup_ls()
		elseif mselect==3 then
			set_b()
		end
	end
end

-- blocks and level
function set_b(lev)
	un={}
	if lev==nil then
        lev=lvls[lpack][cur[lpack]]
    end
	b={}
	b[1]=lev[1]
	for i=2, #lev do
		b[i]={}
		b[i][1]=lev[i][1]
		b[i][2]=lev[i][2]
		b[i][3]=lev[i][3]
	end
	
	g=0
	for i=2,#b do
		if b[i][3] ~= -1 then 
            break
        end
		g = g + 1	
	end
end




-- HELPERS AND ADDITIONAL


--input
function love.keypressed(key, scancode, isrepeat)
    -- there is no way to change the frequency of repeat keys in love2d, it falls to the system settings. So i put this so it only repeats every nth repeated input,
    -- so it repeats slower like how we have it in pico8. This will be a little funky since different systems have different native repeat delays.
    if isrepeat == false then
        keyrepeats[key] = 0
    else
        keyrepeats[key] = keyrepeats[key] + 1
    end

    if keyrepeats[key] % 8 ~= 0 then
        return
    end


    if mode == "title" then         --TITLE MODE INPUT
        if key == "left" then
            titleBtnIndx = titleBtnIndx - 1
        elseif key == "right" then
            titleBtnIndx = titleBtnIndx + 1
        elseif key == "c" then
            if titleBtn[titleBtnIndx] == "play" then 
                mode = "lpack"
            end

        end

        if titleBtnIndx < 1 then 
            titleBtnIndx = #titleBtn
        elseif titleBtnIndx > #titleBtn then
            titleBtnIndx = 1
        end
    elseif mode=="tutorial" then    -- TUTORIAL INPUT
        

    elseif mode=="editor" then      -- EDITOR INPUT


    elseif mode=="select" then      -- LEVEL SELECT INPUT
        if key == "c" then
            mode="level"
            set_b()
            x=b[2][1]
            y=b[2][2]
        elseif key == "x" then
            mode="lpack" 
            lpshift=-80*(lpack-1) 
        elseif key == "up" and cur[lpack]>1 then
            cur[lpack] = cur[lpack] - 1
            ls_boxselect = ls_boxselect - 1
            if ls_boxselect < 3 and ls_shift <= -24 and cur[lpack] > 1 then
                ls_shift = ls_shift + 12
                ls_boxselect = ls_boxselect + 1
            end
        elseif key == "down" and cur[lpack] <= #lvls[lpack]-1 then --and cur[lpack] <= math.min(l[lpack],#lvls[lpack]-1) then --- this bit to control locked levels
            cur[lpack] = cur[lpack] + 1
            ls_boxselect = ls_boxselect + 1
            if ls_boxselect > 3 and #lvls[lpack]-cur[lpack] > 1 then
                ls_shift = ls_shift - 12
                ls_boxselect = ls_boxselect - 1
            end
            if ls_levelstart + 3 > cur[lpack] and ls_levelstart > 1 then
                ls_levelstart = ls_levelstart - 1
            end
        end


    elseif mode=="lpack" then       -- LPACK SELECT INPUT
        if key == "left" then
            lpack = lpack - 1
        elseif key == "right" then
            lpack = lpack + 1
        elseif key == "c" then
            mode = "select"
			setup_ls()
        end

        if lpack < 1 then 
            lpack = 1
        elseif lpack > #lpackIcons then
            lpack = #lpackIcons
        end
        lpTargOffset = 320*(lpack - 1)

    elseif mode=="level" then       -- LEVEL INPUT
        if (currwon) then level_won(key) return end
        if (lock==0) then level_unlocked(key) return end
        if (lock==1) then level_locked(key) return end
    end

end

function love.resize(w,h)
    --resize() is a callback, called by the engine whenever you resize the window. so we adjust the scale whenever the window is resized. 
    scale = math.min(lg.getHeight(),lg.getWidth())/512
    xtranslate = (lg.getWidth()-math.min(lg.getHeight(),lg.getWidth()))/2
    ytranslate = (lg.getHeight()-math.min(lg.getHeight(),lg.getWidth()))/2
end

--use this function to make an animation from a spritesheet using quads. 
function newAnimation(image, width, height, duration, pingpong)
    local animation = {}
	if pingpong == true then
		animation.reverse = false
	end
    animation.spriteSheet = image;
    animation.quads = {};
    animation.currentTime = 0
    animation.duration = duration

    for y = 0, image:getHeight() - height, height do
        for x = 0, image:getWidth() - width, width do
            table.insert(animation.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
        end
    end

    return animation
end

function drawAnimation(anim, x, y)
    local spriteNum = math.floor(anim.currentTime / anim.duration * #anim.quads) + 1
	if anim.reverse == true then
		spriteNum = 1 + #anim.quads - spriteNum
	end
    lg.draw(anim.spriteSheet, anim.quads[spriteNum], x, y)
end

function updateAnimation(anim, dt)
    anim.currentTime = anim.currentTime + dt
    if anim.currentTime >= anim.duration then
        anim.currentTime = anim.currentTime - anim.duration
		if anim.reverse == true then 
			anim.reverse = false
		elseif anim.reverse == false then
			anim.reverse = true
		end
    end
end

function drawLpackIcon(i,offset)
    --lg.draw(lpackIcons[i], offset, 136)
    --this isnt a fantastic way to do this, but shouldn't be too hard to fix later if we want. 
    -- Also, sorry if they're ugly. feel free to fix, or tell me how to fix (i would be happy to)

    if i==lpack then
        lg.setColor(yellow)
        lg.rectangle("fill", offset-8, 128, 256, 256)
    end
    lg.setColor(1,1,1)
    drawAnimation(lpackIcons[i],offset,136)

	if i == 1 then
		lg.setColor(pink)
		lg.printf("tutorial", offset-2, 300, 280, "center", 0, 0.9, 0.9)
    elseif i == 2 then
        lg.setColor(darkBlue)
        lg.printf("base", offset+2, 166, 240, "center", 0, 1, 1)
        lg.printf("levels", offset+2, 294, 240, "center", 0, 1, 1)
        lg.setColor(yellow)
        lg.printf("base", offset, 168, 240, "center", 0, 1, 1)
        lg.printf("levels", offset, 296, 240, "center", 0, 1, 1)
    elseif i == 3 then
        lg.setColor(white)
        lg.printf("rocke", offset-32, 212, 240, "center", 0, 1, 1)
        lg.printf("levels", offset-8, 288, 240, "center", 0, 1, 1)
    elseif i == 4 then
		lg.setColor(black)--[[
		lg.printf("kn  ght", offset+15, 220, 240, "center", 0, 1, 1.25)
		lg.printf("kn  ght", offset+9, 220, 240, "center", 0, 1, 1.25)
		lg.printf("kn  ght", offset+12, 223, 240, "center", 0, 1, 1.25)
		lg.printf("kn  ght", offset+12, 217, 240, "center", 0, 1, 1.25)
		lg.printf("kn  ght", offset+15, 223, 240, "center", 0, 1, 1.25)
		lg.printf("kn  ght", offset+9, 223, 240, "center", 0, 1, 1.25)
		lg.printf("kn  ght", offset+15, 217, 240, "center", 0, 1, 1.25)
		lg.printf("kn  ght", offset+9, 217, 240, "center", 0, 1, 1.25)--]] -- this ended up not looking very good i think...
		lg.printf("kn  ght", offset+16, 212, 240, "center", 0, 1, 1.25)
		lg.printf("levels", offset+16, 268, 240, "center", 0, 1, 1.25)		
		lg.setColor(darkBlue)
		lg.printf("kn  ght", offset+12, 208, 240, "center", 0, 1, 1.25)
		lg.printf("levels", offset+12, 264, 240, "center", 0, 1, 1.25)
    elseif i == 5 then

    end
end

function drawPreviewLevel(level)
    lg.setColor(1,1,1)
    for i = 2, #level do
        lg.draw(blockIcons[level[i][3]], 32*(1+level[i][1])+98, 32*(1+level[i][2]), 0, 0.5, 0.5 )
    end
end

-- particle effects 
function parts_init()
 parts={}
    local co = {yellow, lightBlue, pink}
	for i=1,100 do
		table.insert(parts,{
		x=math.random()*(128),
		y=(math.random()-1) * 60,
		c=co[math.ceil(math.random()*3)],
		d=math.random()*2-1,
		t=math.random()*math.pi*2,
		})
	end
end

function parts_draw()
	for _,p in pairs(parts) do
        lg.setColor(p.c)
		lg.rectangle("fill",p.x*4,p.y*4,4,4)
	end
end

function parts_update(dt)
	for k,p in pairs(parts) do
        --local dx = (p.t < 0) and math.cos(p.t)/8 or -math.cos(p.t)/8
        local dx = math.cos(p.t)/8
		p.x = p.x + dx
		p.t = p.t + 0.015
		if p.t > math.pi*2 then p.t = p.t - math.pi*2 end
		p.y = p.y + (math.sin(p.t)*0.9+1)/18
        --p.y = p.y + math.sin(p.t)/10
		if p.y >128  then
			deli(parts,k)
		end
	end
end




function blocks(bl)
	if(bl[3]==1) then block_reg(bl[1],bl[2]) end
	if(bl[3]==2) then block_rocket(bl[1],bl[2]) end
	if(bl[3]==3) then block_knight(bl[1],bl[2]) end
	if(bl[3]==4) then block_eye(bl[1],bl[2]) end
end


function dir8(bx,by)
	a={}
	for dx=-1,1 do 
		for dy=-1,1 do
				if inbounds(bx+dx,by+dy) and (dx ~= 0 or dy ~= 0) then
					if (contains(bx-dx,by-dy) or 
					((dy == 0) and (contains(bx-dx,by+1) and contains(bx-dx,by-1))) or
	    ((dx == 0) and (contains(bx+1,by-dy) and contains(bx-1,by-dy))) or
	    ((dx ~= 0 and dy ~= 0) and (contains(bx,by-dy) and contains(bx-dx,by))) ) then
	     add(a,{bx+dx,by+dy})
	    end
	   end
		end
	end	
end

function contains(px,py)
	for i=g+2,#b do
		if (b[i][1]==px and b[i][2]==py) then return i end
	end
	return false
end

function inbounds(px,py)
 if px>6 or px<1 or py>6 or py<1 then
 	return false
	end
 return true
end

function block_reg(bx,by)
	btype=""
	dir8(bx,by)
	for i=#a,1,-1 do
		if contains(a[i][1],a[i][2]) then
		 deli(a,i)
		end
	end
end
	

function block_rocket(bx,by)
	dir8(bx,by)
	block_reg(bx,by)
	btype="rocket"
	rb={}
	for i=1,#a do
		rb[i]={}
		rb[i][1]=a[i][1]
		rb[i][2]=a[i][2]
		local qx=a[i][1]-bx
		local qy=a[i][2]-by
		while (true) do
			if inbounds(a[i][1]+qx,a[i][2]+qy) and not contains(a[i][1]+qx,a[i][2]+qy) then
				a[i][1] = a[i][1] + qx
				a[i][2] = a[i][2] + qy
			else
				break				
			end
		end
	end
end

function block_knight(bx,by)
	btype="knight"
	dir8(bx,by)	
	k={} kx=0 ky=0
	for i=1, #a do
		kx=a[i][1]-x
		ky=a[i][2]-y
		if kx ~= 0 and ky ~=0 then
			if(inbounds(x+kx,y+2*ky) and not contains(x+kx,y+2*ky)) then add(k,{x+kx,y+2*ky}) end
			if(inbounds(x+2*kx,y+ky) and not contains(x+2*kx,y+ky)) then add(k,{x+2*kx,y+ky}) end	
		elseif ky ~=0 then
			if(inbounds(x+1,y+2*ky) and not contains(x+1,y+2*ky)) then add(k,{x+1,y+2*ky}) end
			if(inbounds(x-1,y+2*ky) and not contains(x-1,y+2*ky)) then add(k,{x-1,y+2*ky}) end
		elseif kx ~= 0 then
			if(inbounds(x+2*kx,y+1) and not contains(x+2*kx,y+1)) then add(k,{x+2*kx,y+1}) end
			if(inbounds(x+2*kx,y-1) and not contains(x+2*kx,y-1)) then add(k,{x+2*kx,y-1}) end	
		end
	end
	a=k
end

function block_eye(bx,by)
	a={}
	btype="eye"
	for i=g+2,#b do
		if b[i][1] ~= bx or b[i][2] ~= by then
			local ex=2*bx-b[i][1]
			local ey=2*by-b[i][2]
			if inbounds(ex,ey) and not contains(ex,ey) then
				add(a,{ex,ey})
			end
			--nested loop for all others
			for j=g+2,i-1 do
				if b[j][1] ~= bx or b[j][2] ~= by then
					local tex=2*bx-(b[i][1]+b[j][1])/2
					local tey=2*by-(b[i][2]+b[j][2])/2
					if inbounds(tex,tey) and not contains(tex,tey) then
						add(a,{tex,tey})
					end
				end
			end
		end
	end
end

function setup_ls()
	ls_boxselect = math.min(3,cur[lpack])
	if math.abs(#lvls[lpack]-cur[lpack]) <= 1 then
		ls_boxselect=5-(#lvls[lpack]-cur[lpack])
	end
	 ls_levelstart = math.max(1,cur[lpack]-2)
	if #lvls[lpack]-cur[lpack] <= 1 then
		ls_levelstart = #lvls[lpack]-4
	end
	ls_shift=-ls_levelstart*12

	--ls_boxselect = 1
	--ls_shift = -12
	--ls_levelstart = 1
end

function add(table, elt)
    table[#table + 1] = elt
end

function deli(t, i)
    table.remove(t, i)
end


function won()
	local gnum=0
	for i=g+2, #b do
		for j = 2, g+1 do
			if (b[i][1]==b[j][1] and b[i][2]==b[j][2]) then
				gnum = gnum + 1
				if (gnum==g) then return true end 
			end
		end
	end
	
	return false
end
