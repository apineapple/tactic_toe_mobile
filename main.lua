
lvls={
{ -- level pack 1: "tutorial"
	{"tutorial",{6,6,-1},{1,1,1}}
},
{ -- level pack 2: "base levels"
	{"intro",{5,3,-1},{1,3,1},{2,3,1},{3,3,1}},
	{"intro 2",{5,5,-1},{1,1,1},{2,2,1},{3,3,1}},
	{"two-step",{4,5,-1},{4,3,1},{3,4,1},{3,5,1}},
	{"factory",{4,3,-1},{3,2,1},{4,2,1},{5,1,1},{6,3,1}},
	{"corner boost",{3,3,-1},{4,4,-1},{1,1,1},{2,2,1},{5,6,1},{6,5,1},{5,5,1}},
	{"escape pod",{1,5,-1},{3,3,1},{3,4,1},{4,4,1}},
	{"corner boost 2",{4,6,-1},{6,4,1},{3,4,1},{4,3,1},{4,4,1}},
	{"escape pod 2",{6,5,-1},{3,3,1},{3,4,1},{4,3,1},{4,4,1}},
	{"inchworm",{5,6,-1},{2,4,1},{2,5,1},{2,6,1},{3,6,1}},
	{"goals",{3,6,-1},{4,6,-1},{3,3,1},{4,4,1},{6,4,1},{4,5,1},{5,6,1}},
	{"expand",{2,3,-1},{2,5,-1},{4,5,-1},{3,3,1},{3,4,1},{3,5,1},{4,3,1}},
	{"criss-cross",{2,6,-1},{4,1,-1},{4,2,1},{3,3,1},{3,4,1},{2,5,1}},
	{"factory 2",{1,3,-1},{1,1,1},{2,1,1},{4,2,1},{5,4,1},{4,5,1},{2,4,1}},
	{"elephant",{1,4,-1},{1,1,1},{3,1,1},{2,2,1},{4,3,1},{5,4,1},{2,4,1}},
	{"extender",{6,4,-1},{1,5,1},{2,5,1},{3,5,1},{2,6,1},{3,6,1}},
},
{ -- level pack 3: "rocket levels"
	{"refuel",{6,6,-1},{1,2,0},{6,1,0},{2,2,2}},
	{"overshot",{5,5,-1},{1,1,0},{2,2,2},{3,3,2}},
	{"overshot 2",{5,5,-1},{1,1,0},{2,2,2},{6,4,1},{6,5,1}},
	{"round trip",{1,4,-1},{2,4,2},{1,3,0},{1,5,0},{6,4,0},},
	{"smile",{1,1,-1},{6,1,-1},{1,2,0},{2,1,0},{2,2,2},{6,2,0},{5,1,0},{5,6,0},{6,5,0},{1,5,0},{2,6,0},{5,2,2}},
	{"asteroid",{1,1,-1},{6,1,0},{5,2,2},{3,3,1},{2,5,0},{5,5,2},{6,6,0}},
	{"asteroid 2",{1,1,-1},{6,2,0},{6,1,0},{5,3,2},{3,3,1},{1,6,0},{5,5,2},{6,6,0}},
	{"rocket boost",{6,5,-1},{1,4,1},{4,2,1},{2,4,2},{2,5,2}},
	{"landlocked",{1,6,-1},{2,2,0},{3,2,1},{3,4,1},{3,5,1},{3,6,2}},
	{"out of bounds",{5,3,-1},{4,2,2},{4,1,1},{5,7,0},{1,3,1},{2,2,0},{5,2,1},{2,5,1}},
	{"lateral liftoff",{2,1,-1},{6,3,1},{5,4,2},{5,5,1},{3,6,1}},
	{"crevasse",{6,1,-1},{3,6,0},{2,5,2},{4,4,1},{4,5,1},{5,5,1}},
	{"rocket boost 2",{6,1,-1},{2,5,2},{4,4,2},{4,5,1},{5,5,1}},
	{"round trip 2",{4,4,-1},{5,4,1},{4,5,1},{5,5,2},{1,6,0},{6,6,0}},
	{"slingshot",{6,6,-1},{2,2,0},{2,3,1},{3,3,1},{2,4,2},{2,5,1}}
},
{ -- level pack 4: "knight levels"
	{"knight levels"}
},
{ -- last level pack: "your levels"
 {"your levels here!"}
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
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/yourlvls.png"),240,240,1.2, true)
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
    lockIcon = lg.newImage("/data/imgs/lock.png")
    x,y = 0,0
    lock = 0
    dopamine = 0
    currwon=false
    cursor = newAnimation(lg.newImage("/data/imgs/cursor.png"),64,64,3.5)
	mouseloc={0,0}
	swipe={}
	inputLock = false

	--persistent data init
	--love.filesystem.remove("playerProgress")
	if love.filesystem.getInfo("playerProgress") == nil then
		love.filesystem.newFile("playerProgress")
		writeTable(l,"playerProgress")
	else
		l = readTable("playerProgress")
	end
	if love.filesystem.getInfo("playerLevels") == nil then
		love.filesystem.newFile("playerLevels")
	else
		lvls[#lvls] = readTable("playerLevels")
	end

	l[#lvls] = #lvls[#lvls]

	--[[love.filesystem.remove("playerProgress")
	love.filesystem.newFile("playerProgress")
	local abc={1,2,3,4,5,67}
	serialize(abc,"playerProgress")
	defg = readLevelData("playerProgress")--]]


	--freeplay init
	freeSelectIndex=1
	freeSelectBlocksLeft = 10
	freeSelectOptions = {}
	for i=1,4 do
		freeSelectOptions[i] = 0
	end
	freeSelectOptions[5] = 3
	freeSelectBlinker = 0


	osString = love.system.getOS()
	if osString == "Windows" then
		--load the compiled c file
	end

end

--main draw and update functions
function love.update(dt)
	--interesting note: the reason the deltaTime variable is needed is because load() evaulates the string from a global scope, rather than the scope from where it is called, 
	--so it treats dt as a global variable (which is nil), so we need the deltaTime as a stand-in global variable 
	deltaTime = dt
	load("update_"..mode.."(deltaTime)")()
end

function love.draw()
    --maintain centered screen
    lg.translate(xtranslate,ytranslate)
    lg.scale(scale)
    lg.setColor(darkBlue)
    lg.rectangle("fill",0,0,512,512)
    lg.setColor(1, 1, 1)
    --call draw for mode
	load("draw_"..mode.."()")()

	lg.setColor(black)
	lg.rectangle("fill",-256,0,256,lg.getHeight())
	lg.rectangle("fill",512,0,256,lg.getHeight())
	lg.rectangle("fill",0,-256,lg.getWidth(),256)
	lg.rectangle("fill",0,512,lg.getWidth(),256)
    lg.setColor(yellow)
	mx,my=love.mouse.getPosition()
	mx = (mx-xtranslate)/scale
	my = (my-ytranslate)/scale
	lg.setColor(white)
	--lg.printf(mouseloc[1].." ".. mouseloc[2],0,0,400)
	--lg.printf(math.floor(mx).." ".. math.floor(my),0,200,400)

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
    --there are multiple options for this. one is to update all currently drawn lpacks. another is to only update the lpack selected.
	
	local middlepack = math.ceil(lpOffset/320+0.5)
    for i=math.max(1,middlepack-1),math.min(#lpackIcons, middlepack+1) do 
    	updateAnimation(lpackIcons[i],dt)
    end

    --updateAnimation(lpackIcons[lpack],dt)


    if lpTargOffset ~= lpOffset then
        if lpOffset < lpTargOffset then
            lpOffset = lpOffset + 400*dt
        elseif lpOffset > lpTargOffset then 
            lpOffset = lpOffset - 400*dt
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
	    lg.setColor(white)
		lg.draw(lockIcon,360,4*(69+12*i+ls_shift))
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
	if lpack > 1 then
		lg.printf(cur[lpack]..". "..b[1], 64, 16, 768, "center", 0, 0.5, 0.5)
	end

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
        lg.line(swipe[i][1]*64+32, swipe[i][2]*64+32, swipe[i+1][1]*64+32, swipe[i+1][2]*64+32)
		love.graphics.circle("fill", swipe[i][1]*64+32, swipe[i][2]*64+32, 8)
		love.graphics.circle("fill", swipe[i+1][1]*64+32, swipe[i+1][2]*64+32, 8)

	end
	--	if(lpack==6) exhandler(cur[lpack])
    if not currwon and #swipe==0 then 
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
        if(lpack==1) then dopamine=0 end 
        if(lpack==-1) then dopamine=1 end 
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
			if mode == "free_play" then
				txts = {"generate new", "return", "save level"}
			elseif (cur[lpack]>=#lvls[lpack]) then txts[1]="continue" end

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


--dele

function draw_dele()
	lg.setFont(picosmallfont)
	lg.printf("press keys to delete save file (permanent!)",128,64,256, "center", 0,1,1)


	local keys = 0
	if love.keyboard.isDown("up") then
		lg.printf("up",128,256,256,"center")
		keys = keys + 1
	end
	if love.keyboard.isDown("left") then
		lg.printf("left",32,288,256,"center")
		keys = keys + 1
	end
	if love.keyboard.isDown("right") then
		lg.printf("right",224,288,256,"center")
		keys = keys + 1
	end
	if keys == 3 and love.keyboard.isDown("c") then
		lg.printf("save deleted!",128,320,256,"center")
		for i=1,#lvls-1 do
			l[i]=0
			cur[i]=1
		end
		lvls[#lvls] = { {"your levels here!"}}

	end

	lg.setFont(picofont)
end

function update_dele(dt)

end



--free select
function draw_free_select()

	lg.setColor(yellow)
	lg.printf(freeSelectOptions[5],0,4*(32+12*5),512,"center",0,1,1)
    lg.rectangle("fill", 0, 408, 512, 36+8)
    lg.setColor(pink)
    lg.rectangle("fill", 0, 412, 512, 36)
	lg.setColor(lightGrey)
    lg.setFont(picosmallfont)
	for i=1,4 do
		if i ~= freeSelectIndex then 
			lg.printf("<              >",0,4*(32+12*i),512,"center",0,1,1)
		end
		lg.draw(blockIcons[i-1], 64, 4*(32+12*i)-2, 0, 0.5, 0.5)
		for j=1,freeSelectOptions[i] do
			lg.draw(blockIcons[i-1], 120+40*j,4*(32+12*i)-2,0,0.5,0.5)
		end

	end
	if freeSelectIndex ~= 5 then
		lg.printf("<              >",0,4*(32+12*5),512,"center",0,1,1)
		lg.printf(freeSelectOptions[5],0,4*(32+12*5),512,"center",0,1,1)
	end
	lg.printf("moves",-176,4*(32+12*5),512,"center",0,1,1)

	if freeSelectIndex == 5 then

	end

    lg.setColor(pink)
	lg.printf("freeplay", 0, 32, 512, "center")
	lg.printf("blocks left: "..freeSelectBlocksLeft, 0, 466, 512, "center")

	lg.setColor(yellow)
	if freeSelectBlocksLeft > 6 then
		lg.printf("pick block types", 0, 416, 512, "center")
	else 
		lg.printf("press c to generate", 0, 416, 512, "center")
	end

	if freeSelectBlinker > 1 then
		lg.printf("<              >",0,4*(32+12*freeSelectIndex),512,"center",0,1,1)
	else 
		lg.printf("<               >",0,4*(32+12*freeSelectIndex),512,"center",0,1,1)
	end


end

function update_free_select(dt)
	freeSelectBlinker = freeSelectBlinker + dt
	if freeSelectBlinker > 2 then
		freeSelectBlinker = freeSelectBlinker % 2
	end

end


function swipe_controls()
	mouseloc={math.floor((mx)/64),math.floor((my)/64)}
	--add so its only heart touches that count
	if love.mouse.isDown(1) then
		if (#swipe==0 or swipe[#swipe][1]~=mouseloc[1] or swipe[#swipe][2]~=mouseloc[2]) and mx-mouseloc[1]*64 > 10 and mx-mouseloc[1]*64 < 54 and  my-mouseloc[2]*64 > 10 and my-mouseloc[2]*64 < 54 then
			add(swipe,{mouseloc[1],mouseloc[2]})
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
				if mode=="free_play" then 
					mode = "free_select"
					return
				end
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
			end	
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
	 
	--if (lpack==-1) then mode="editor" return end 
		if mode == "level" then
			if mselect==1 then
				if (cur[lpack]==#lvls[lpack]) then
					mode="lpack"
					lpOffset=320*(lpack-1)
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
		elseif mode == "free_play" then 
			if mselect==1 then
				mode = "free_generate"
				lg.setFont(picosmallfont)
			elseif mselect==2 then
				mode = "free_select"
			elseif mselect==3 then
				
				while #un>0 do
					b[un[#un][3]][1]=un[#un][1]
					b[un[#un][3]][2]=un[#un][2]
					deli(un,#un)
				end

				local templvl = tabletostr(b)
				templvl = load("return "..templvl)()
				if lvls[#lvls][1][1] == "your levels here!" then
					lvls[#lvls][1] = templvl
					lg.setFont(picosmallfont)
				else
					lvls[#lvls][#lvls[#lvls]+1] = templvl
				end
				lpack = #lvls
				mode = "select"
				l[#lvls] = #lvls[#lvls]
				lpTargOffset = 320*(lpack-1)
			end
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
    if inputLock then
		return
	end
	
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
				if lpack == -1 then
					lpack = 2
				end
			elseif titleBtn[titleBtnIndx] == "make" then
				mode = "editor"
			elseif titleBtn[titleBtnIndx] == "free" then
				mode = "free_select"
				freeSelectIndex = 1
				freeSelectBlocksLeft = 10
				for i=1,4 do
					freeSelectOptions[i] = 0
				end
				freeSelectOptions[5] = 3
			elseif titleBtn[titleBtnIndx] == "dele" then
				mode = "dele"
			elseif titleBtn[titleBtnIndx] == "info" then

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
            lpOffset=320*(lpack-1) 
        elseif key == "up" and cur[lpack]>1 then
            cur[lpack] = cur[lpack] - 1
            ls_boxselect = ls_boxselect - 1
            if ls_boxselect < 3 and ls_shift <= -24 and cur[lpack] > 1 then
                ls_shift = ls_shift + 12
                ls_boxselect = ls_boxselect + 1
            end
        elseif key == "down" and cur[lpack] <= #lvls[lpack]-1 and cur[lpack] <= math.min(l[lpack],#lvls[lpack]-1) then --- this bit to control locked levels
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
		elseif key == "x" then
			mode = "title"
        end

        if lpack < 1 then 
            lpack = 1
        elseif lpack > #lpackIcons then
            lpack = #lpackIcons
        end
        lpTargOffset = 320*(lpack - 1)

    elseif mode=="level" or mode=="free_play" then       -- LEVEL INPUT
        if (currwon) then level_won(key) return end
        if (lock==0) then level_unlocked(key) return end
        if (lock==1) then level_locked(key) return end

	elseif mode=="dele" then 		-- DELETE SAVE INPUT
		if key == "x" then
			mode = "title"
		end

	elseif mode=="free_select" then -- FREE SELECT INPUT
		if key == "x" then
			mode="title"	
			lg.setFont(picofont)
		elseif key == "c" then
			mode = "free_generate"
			levelGenCount = 0
		elseif key == "up" and freeSelectIndex > 1 then
			freeSelectIndex = freeSelectIndex - 1
			freeSelectBlinker = 0
		elseif key == "down" and freeSelectIndex < 5 then
			freeSelectIndex = freeSelectIndex + 1
			freeSelectBlinker = 0
		elseif key == "right" then
			if freeSelectIndex == 5 then
				if freeSelectOptions[5] < 10 then
					freeSelectOptions[5] = freeSelectOptions[5] + 1
				end
			else
				if freeSelectOptions[freeSelectIndex] < 5 and freeSelectBlocksLeft > 0 then
					freeSelectOptions[freeSelectIndex] = freeSelectOptions[freeSelectIndex] + 1
					freeSelectBlocksLeft = freeSelectBlocksLeft - 1
				end
			end
		elseif key == "left" then
			if freeSelectIndex == 5 then
				if freeSelectOptions[5] > 3 then
					freeSelectOptions[5] = freeSelectOptions[5] - 1
				end
			else
				if freeSelectOptions[freeSelectIndex] > 0 then
					freeSelectOptions[freeSelectIndex] = freeSelectOptions[freeSelectIndex] - 1
					freeSelectBlocksLeft = freeSelectBlocksLeft + 1
				end
			end
		end
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
            add(animation.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
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
	a={}
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

function writeTable(table, filename)
	local str = tabletostr(table)
	love.filesystem.write(filename,str)
end

function tabletostr(table)
	local str = "{"
	for _,i in pairs(table) do
		if type(i) == "table" then
			str = str..tabletostr(i)..","
		elseif type(i) == "string" then
			str = str.."\""..i.."\""..","
		else
			str = str..i..","
		end
	end
	str = str.."}"
	return str
end

function readTable(filename)
	local str = love.filesystem.read(filename)
	local func = load('return '..str)
	return func()
end

function love.quit()
	writeTable(l,"playerProgress")
	writeTable(lvls[#lvls], "playerLevels")
end




function future(round)
	if round==-1 then 
		return "not close" 
	end
	if won() then 
		return "close!"
	end
	for i=g+1,#b do
		local bt={b[i][1],b[i][2],b[i][3]}
		blocks(bt)
		local ta=makea()
		for j=1,#ta do
			b[i][1],b[i][2]=ta[j][1],ta[j][2]
			local zzz=future(round-1)
			b[i][1],b[i][2]=bt[1],bt[2]
			if zzz=="close!" then 
				return zzz
			end
		end
	end
	return "not close"
end


function update_free_generate(dt)

	templvl = {"endless"}
	local spaces = {}

	-- generate goal
	local a,b = math.floor(math.random(6)),math.floor(math.random(6))
	templvl[#templvl+1] = {a,b,-1}
	spaces[6*(a-1)+b] = 1

	-- generate blocks
	for i = 1,4 do 
		for j=1,freeSelectOptions[i] do
			while spaces[6*(a-1)+b] do 
				a,b = math.floor(math.random(6)),math.floor(math.random(6))
			end
			templvl[#templvl+1] = {a,b,i-1}
			spaces[6*(a-1)+b] = 1
		end
	end
	set_b(templvl)


	--if  future(freeSelectOptions[5]-1)=="not close" then
	--if  future()=="not close" then
	if  future(freeSelectOptions[5]-1)=="not close" and future(freeSelectOptions[5]+3) == "close!" then
		mode = "free_play"
		lpack = -1
		lg.setFont(picofont)
	end
	levelGenCount = levelGenCount + 1
end

function draw_free_generate()
	lg.printf("generating tha ting",0,256,512,"center")
	lg.printf(levelGenCount,0,256+64,512,"center")
	lg.printf(tabletostr(templvl),0,256+128+64,256,"center",0,0.5,0.5)
end

function update_free_play(dt)
	update_level(dt)
end

function draw_free_play(dt)
	draw_level()
end

function makea()
	local ta={}
	for i=1,#a do
		ta[i]={a[i][1],a[i][2]}
	end
	return ta
end
