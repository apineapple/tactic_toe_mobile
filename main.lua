

--[[   LEVELS YOU SHOULD TRY OUT !!!!! 

	{"traverse",{6,3,-1,},{2,3,1,},{4,6,0,},{2,4,2,},{2,2,2,},{1,4,0,},{6,5,2,},},
	{"traverse 2",{5,2,-1,},{3,2,0},{5,1,0},{4,4,0},{4,6,0,},{2,3,1,},{2,2,2,},{2,4,2,},{1,4,2,},},
	{"roundabout", {3,4,-1},{6,4,0},{5,1,0},{5,2,2},{3,1,0},{3,2,1},{4,4,1},{1,4,0},},
	{"paddleball",{6,3,-1,},{2,3,1,},{2,4,1,},{1,2,1,},{2,2,2,},{2,5,2,},},
	{"v-lock", {2,6,-1},{3,3,1},{3,4,1},{4,1,1},{4,2,1}},

]]

lvls={
{ -- level pack 1: "tutorial"
	{"tutorial",{6,3,-1},{6,1,-1},{1,3,0},{2,3,2},{3,5,1},{4,5,1},{0,7,0},{1,6,2}},
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
	{"climb",{2,1,-1},{2,6,0},{2,5,3},{4,4,0}},
	{"statue",{1,3,-1},{3,5,2},{2,3,3},{1,4,0},{4,1,0},{3,3,0}},
	{"focus",{4,4,-1},{3,4,0},{3,2,3},{4,3,3},{4,1,1}},
	{"recoil",{1,6,-1}, {4,5,0}, {5,4,0}, {4,4,3}, {4,3,3}},
	{"parade",{6,1,-1},{5,2,0},{6,2,0},{1,3,0},{2,3,0},{3,3,0},{4,3,0},{5,3,0},{1,5,3},{2,5,3},{3,5,3}},
	{"nest",{2,5,-1},{6,3,1},{3,4,3},{6,4,3},{4,5,3}},
	{"jury",{6,3,-1},{3,5,1},{4,5,3},{5,5,2},{6,6,0}},
	{"swarm",{6,1,-1},{1,2,3},{2,2,3},{1,3,3},{2,4,3},{6,3,2}},
	{"recoil 2",{4,3,-1},{3,2,3},{3,3,3},{3,4,3},{4,2,0},{5,3,0},{4,4,0}},
	{"rotate",{6,1,-1},{2,2,1},{5,2,0},{6,3,1},{3,4,3},{6,4,3},{4,5,3},{5,5,2}},
	{"thread",{6,6,-1},{1,1,1},{1,2,3},{2,1,3},{2,2,1},{3,3,1}},
	{"static",{3,1,-1},{1,2,0},{4,3,0},{3,4,3},{4,4,3},{1,6,0},{4,6,0}},
	{"wheel",{2,4,-1},{1,3,3},{2,3,3},{3,3,3},{1,4,3},{3,4,3},{1,5,3},{2,5,3},{3,5,3}},
	{"side by side",{5,2,-1},{1,6,0},{1,4,3},{2,1,0},{2,2,3},{2,5,3}},
	{"kendama",{1,2,-1},{2,2,1},{3,3,2},{6,3,1},{3,4,3},{3,5,3}},
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
    love.window.setMode(1024, 1024, {resizable=true, minwidth=512, minheight=512,vsync=1})
	mouseDown = false
	mouseDownX, mouseDownY = 0,0


    love.resize(lg.getWidth(), lg.getHeight())


    --font stuff. for bigger fonts, we should make new fonts with different size to avoid blurriness. better to choose bigger and scale down than choose smaller and scale up.
    picofont = lg.newFont("/data/fonts/pico-8.ttf", 48)
    picosmallfont = lg.newFont("/data/fonts/pico-8.ttf", 24)
    lg.setFont(picofont)
    love.keyboard.setKeyRepeat(true)
    keyrepeats = {}

    --colors (taken from pico8 palette ). Remember, use setColor(white) to print for pico8 white, use setcolor(1,1,1) for lg.draw
	black = {0,0,0}
	yellow = {1, 0.925, 0.153}
    darkBlue = {29/255, 43/255, 83/255}
    lightBlue = {41/255, 173/255, 1}
	darkGrey = {95/255, 87/255, 79/255}
    lightGrey = {194/255, 195/255, 199/255}
    white = {1, 241/255, 232/255}
    pink = {1, 119/255, 168/255}
	darkPurple = {126/255, 37/255, 83/255}

	--transition init
	transitionCounter = 0
	transitions = {}
	transitioned = false

    --title init
    mode="blank"
	setup_transition("title")
    titleAnim = newAnimation(lg.newImage("/data/imgs/misc/title.png"), 512, 512, 4)
    titleBtn={"play","make","free","delete","info"}
    titleBtnIndx = 1
	titleBtnPressed = 0
	titleTimer = 0
	blankbtn = lg.newImage("/data/imgs/misc/blankbtn.png")
	blockAnims = {}
	smallFire = lg.newImage("/data/imgs/misc/smallFire.png")
	bigFire = lg.newImage("/data/imgs/misc/bigFire.png")
	titleBlockAnimationIndex = 0
	titleMenuTimer = 0
	titlePressed = false
	titleMenu = lg.newImage("/data/imgs/misc/titleMenu.png")
	titleMenuQuad1 = lg.newQuad(0,0,192,192,384,384)
	titleMenuQuad2 = lg.newQuad(192,0,192,192,384,384)
	titleMenuQuad3 = lg.newQuad(0,192,192,192,384,384)
	titleMenuQuad4 = lg.newQuad(192,192,192,192,384,384)
	titleMenuBtn = {lg.newImage("/data/imgs/misc/titleMenuBtn.png"),lg.newImage("/data/imgs/misc/titleMenuBtnPressed.png")}
	titleMenuBtnPressed = 0
	titleMenuBtnTopHalf = lg.newQuad(0,0,240,26,240,52)
	titleMenuBtnBottomHalf = lg.newQuad(0,26,240,26,240,52)


    --lpack init
    lpackIcons = {}
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/lpacks/tutorial.png"),240,240,4)
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/lpacks/baselvls.png"),240,240,4)
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/lpacks/rocketlvls.png"),240,240,1.8)
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/lpacks/knightlvls.png"),240,240,1.2, true)
    lpackIcons[#lpackIcons + 1] = newAnimation(lg.newImage("/data/imgs/lpacks/yourlvls.png"),240,240,1.2, true)
    cur={}
	for i=1,#lpackIcons do
		cur[i] = 1
	end
    lpack, lpOffset, lpTargOffset = 1, 0, 0
	lpReturn,lpPress,lpSwipe = false,false,false
	lpOffsetMin, lpOffsetMax = 0, 320*(#lvls-1)

    --level select init 
    l={}
    for i=1,#lvls do
		l[i]=0
    end
    ls_boxselect=1
    ls_levelstart=1
    lsShift=-12
	lsShiftAtStart = 0
	lsPress = false
	lsSwipe = false
	lsReturn = false
	lsShiftMax, lsShiftMin = 0,0
	lateralArrowIcon = lg.newImage("/data/imgs/misc/lateralArrow.png")
	diagonalArrowIcon = lg.newImage("/data/imgs/misc/diagonalArrow.png")
	lvlbtns = {
		{lg.newImage("/data/imgs/misc/LSIcon.png"),lg.newImage("/data/imgs/misc/LSIconPressed.png")},
		{lg.newImage("/data/imgs/misc/hintIcon.png"),lg.newImage("/data/imgs/misc/hintIconPressed.png")},
		{lg.newImage("/data/imgs/misc/undoIcon.png"),lg.newImage("/data/imgs/misc/undoIconPressed.png")},
		{lg.newImage("/data/imgs/misc/restartIcon.png"),lg.newImage("/data/imgs/misc/restartIconPressed.png")},
	}
	lvlWonbtn = {lg.newImage("/data/imgs/misc/lvlWonbtn.png"),lg.newImage("/data/imgs/misc/lvlWonbtnPressed.png")}
	LSbtn = {lg.newImage("/data/imgs/misc/LSbtn.png"),lg.newImage("/data/imgs/misc/LSbtnPressed.png"),lg.newImage("/data/imgs/misc/LSbtnLocked.png")}
	returnbtn = {lg.newImage("/data/imgs/misc/returnbtn.png"),lg.newImage("/data/imgs/misc/returnbtnPressed.png")}
	lvlbtnPressed = 0
	lvlWonbtnPressed = 0
	LSbtnPressed = 0
	topls,bottomls = 0,0
	lastmx,lastmy = 0,0
	lastmx2, lastmy2 = 0,0
	lastmx3,lastmy3 = 0,0
	lastdt, lastdt2 = 0,0
	mouseVelocityX, mouseVelocityY = 0,0

    --level init
    blockIcons={}
    blockIcons[-1] = lg.newImage("/data/imgs/blocks/goal.png")
    blockIcons[0] = lg.newImage("/data/imgs/blocks/stoneBlock.png")
    blockIcons[1] = lg.newImage("/data/imgs/blocks/regBlock.png")
    blockIcons[2] = lg.newImage("/data/imgs/blocks/rocketBlock.png")
    blockIcons[3] = lg.newImage("/data/imgs/blocks/knightBlock.png")
    blockIcons["yes"] = {
		lg.newImage("/data/imgs/blocks/regBlockSelected.png"),
		lg.newImage("/data/imgs/blocks/rocketBlockSelected.png"),
		lg.newImage("/data/imgs/blocks/knightBlockSelected.png"),
	}
	blockIcons["yes"][0] = blockIcons[0]
    blockIcons["no"] = {
		lg.newImage("/data/imgs/blocks/regBlockNoMoves.png"),
		lg.newImage("/data/imgs/blocks/rocketBlockNoMoves.png"),
		lg.newImage("/data/imgs/blocks/knightBlockNoMoves.png"),
	}
	blockIcons["no"][0] = blockIcons[0]
	blockPreviews = {
		lg.newImage("/data/imgs/blocks/regBlockPreview.png"),
    	lg.newImage("/data/imgs/blocks/rocketBlockPreview.png"),
    	lg.newImage("/data/imgs/blocks/knightBlockPreview.png")
	}
	blankBlocks = {
		lg.newImage("/data/imgs/blocks/blankRegBlock.png"),
		lg.newImage("/data/imgs/blocks/blankRocketBlock.png"),
		lg.newImage("/data/imgs/blocks/blankKnightBlock.png")
	}
	flyingRocketFace = {
		{lg.newImage("/data/imgs/blocks/rocketBlockFlyingFace1.png"),lg.newImage("/data/imgs/blocks/rocketBlockFlyingFace2.png"),lg.newImage("/data/imgs/blocks/rocketBlockFlyingFace3.png")},
		{lg.newImage("/data/imgs/blocks/rocketBlockFlyingFace4.png"),nil,lg.newImage("/data/imgs/blocks/rocketBlockFlyingFace5.png")},
		{lg.newImage("/data/imgs/blocks/rocketBlockFlyingFace6.png"),lg.newImage("/data/imgs/blocks/rocketBlockFlyingFace7.png"),lg.newImage("/data/imgs/blocks/rocketBlockFlyingFace8.png")}
	}
	blockPreviews[-1],blockPreviews[0] = blockIcons[-1],blockIcons[0]
    lockIcon = lg.newImage("/data/imgs/misc/lock.png")
    x,y = 0,0
	a={}
	mselect = 1
    lock = 0
    dopamine = 0
    currwon=false
    cursor = newAnimation(lg.newImage("/data/imgs/misc/cursor.png"),64,64,3.5)
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

	-- dele init
	deleSelect = false

end

--main draw and update functions
function love.update(dt)
	--interesting note: the reason the deltaTime variable is needed is because load() evaulates the string from a global scope, rather than the scope from where it is called, 
	--so it treats dt as a global variable (which is nil, since dt is a local variable), so we need the deltaTime as a stand-in global variable 

	deltaTime = dt
	load("update_"..mode.."(deltaTime)")()

	
	lastmx3 = lastmx2
	lastmx2 = lastmx
	lastmx = mx

	lastmy3 = lastmy2
	lastmy2 = lastmy
	lastmy = my

	lastdt2 = lastdt
	lastdt = dt
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
	mx,my=detransform(love.mouse.getPosition())
	lg.setColor(white)




	--DEBUG PRINT STATEMENTS
	--lg.printf(mouseloc[1].." ".. mouseloc[2],0,0,400)
	--lg.printf(math.floor(mx).." ".. math.floor(my),0,200,400)
	--lg.printf(math.min((lpOffset-lpOffsetMax)/150,1),0,232,400)
	--lg.printf(lpOffset,0,64,400)
	--lg.printf(love.timer.getFPS(),0,232,400)
	--lg.printf(lsShift,0,232,400)
	--lg.printf(math.max(math.min((lsShift-lsShiftMax)/24,1),0.75),0,264,400)
	--lg.printf(math.max(math.min((lsShiftMin-lsShift)/100,1)*800,350) * math.max(math.min((lsShiftMin-lsShift)/24,1),0.75),0,264,400)
	--lg.printf(math.max(math.min((lsShift-lsShiftMax)/100,1)*800,350) * math.max(math.min((lsShift-lsShiftMax)/24,1),0.75),0,296,400)
	--lg.printf(mouseDownX..", ".. mouseDownY..", "..lvlWonbtnPressed,0,264,400)

end

--DRAW AND UPDATE FOR EACH MODE


--blank
function draw_blank()
	lg.setColor(darkBlue)
	lg.rectangle("fill",0,0,512,512)
end

function update_blank(dt)

end


--title
function draw_title()

	lg.setColor(1,1,1,0.8)
	for _,v in pairs(blockAnims)do
		draw_block_animation(v)
	end

	lg.setColor(1,1,1,0.9)
    drawAnimation(titleAnim,0,0,0,1,1)

    --[[lg.setColor(darkBlue)
	lg.printf(titleBtn[titleBtnIndx],160,404,200,"center",0,1,0.5)
    lg.setColor(yellow)
    lg.printf(titleBtn[titleBtnIndx],156,400,200,"center",0,1,0.5)
	lg.setColor(pink)--]]
	--lg.rectangle("fill",0,384,512,64)
	--lg.setFont(picosmallfont)
	for i = -1,2 do
		local timershift = math.floor(titleTimer*528/1.5)*1.5
		lg.setColor(darkBlue)
		lg.printf("press anywhere",i*528-60+timershift,404,480,"center", 0, 1, 1/2)
		lg.setColor(yellow)
		lg.printf("anywhere",i*528+32+timershift,400,480,"center", 0, 1, 1/2)
		lg.setColor(white)
		lg.printf("press",i*528-208+timershift,400,480,"center", 0, 1, 1/2)
	end

	if titlePressed then
		if titleMenuTimer < -0.3 then
			lg.setColor(1,1,1,0.1)
			lg.rectangle("fill",0,0,512,512)
		elseif titleMenuTimer < -0.2 then
			lg.setColor(1,1,1,0.4)
			lg.rectangle("fill",0,0,512,512)
		elseif titleMenuTimer < -0.1 then
			lg.setColor(1,1,1,0.1)
			lg.rectangle("fill",0,0,512,512)
		elseif titleMenuTimer < 0 then
			lg.setColor(1,1,1,0.4)
			lg.rectangle("fill",0,0,512,512)
		elseif titleMenuTimer < 0.125 then

		elseif titleMenuTimer < 1 then
			lg.setColor(1,1,1,0.8)
			local shift = math.floor((448*(1-(titleMenuTimer-0.125)*8/7))/8)*8
			--lg.draw(titleMenu,64,64+shift)
			lg.draw(titleMenu,titleMenuQuad1,64,64-shift)
			lg.draw(titleMenu,titleMenuQuad2,256,64-shift)
			lg.draw(titleMenu,titleMenuQuad3,64,256+shift)
			lg.draw(titleMenu,titleMenuQuad4,256,256+shift)

			lg.setColor(1,1,1,0.8)
			lg.draw(titleMenuBtn[1],136,92-shift)
			lg.draw(titleMenuBtn[1],136,160-shift)
			lg.draw(titleMenuBtn[1],136,296+shift)
			lg.draw(titleMenuBtn[1],136,364+shift)

			local a,b = transform(136,228-shift)
			local c,d = transform(240,28) 
			lg.setScissor(a,b,c,d)	-- during animation, the middle button of the title menu is cut in half. setScissor allows you to only draw inside a specified box. must transform coords first.
			lg.draw(titleMenuBtn[1],136,228-shift)
			lg.setColor(pink)
			lg.printf(titleBtn[3],72,238-shift,376,"center",0,1,1/2)

			a,b = transform(136,256+shift)
			lg.setScissor(a,b,c,d)
			lg.setColor(1,1,1,0.8)
			lg.draw(titleMenuBtn[1],136,228+shift)
			lg.setColor(pink)
			lg.printf(titleBtn[3],72,238+shift,376,"center",0,1,1/2)
			lg.setScissor()

			lg.printf(titleBtn[1],72,102-shift,376,"center",0,1,1/2)
			lg.printf(titleBtn[2],72,170-shift,376,"center",0,1,1/2)
			lg.printf(titleBtn[4],72,306+shift,376,"center",0,1,1/2)
			lg.printf(titleBtn[5],72,374+shift,376,"center",0,1,1/2)
		else
			lg.setColor(1,1,1,0.8)
			lg.draw(titleMenu,64,64)
			for i=1,5 do
				lg.setColor(1,1,1,0.8) 
				if titleMenuBtnPressed == i then
					lg.draw(titleMenuBtn[2],136,68*i+24)
					lg.setColor(darkPurple)
					lg.printf(titleBtn[i],72,68*i+42,376,"center",0,1,1/2)
				else
					lg.draw(titleMenuBtn[1],136,68*i+24)
					lg.setColor(pink)
					lg.printf(titleBtn[i],72,68*i+34,376,"center",0,1,1/2)
				end
			end
		end
	end
end

function update_title(dt)
	if #blockAnims == 0 then
		titleBlockAnimationIndex = titleBlockAnimationIndex + 1
		if titleBlockAnimationIndex > 6 then
			titleBlockAnimationIndex = titleBlockAnimationIndex - 6
		end

		if titleBlockAnimationIndex == 1 then
			make_block_animation("rocket",-0.5,1.5,8.5,1.5,0.7)
		elseif titleBlockAnimationIndex == 2 then
			make_block_animation("knight",4.5,-0.5,4.8,0.3,2)
		elseif titleBlockAnimationIndex == 3 then
			make_block_animation("reg",-0.5,3,0,2.5,2)
		elseif titleBlockAnimationIndex == 4 then
		elseif titleBlockAnimationIndex == 5 then
		elseif titleBlockAnimationIndex == 6 then
		end
	end

	for k,v in pairs(blockAnims) do
		update_block_animation(v,k,dt)
	end
    updateAnimation(titleAnim,dt)
	titleTimer = titleTimer + dt*0.1
	if titleTimer > 1 then 
		titleTimer = titleTimer - 1
	end
	if titlePressed and titleMenuTimer < 1 then
		if titleMenuTimer < 0.125 then
			titleMenuTimer = titleMenuTimer + dt
		else 
			titleMenuTimer = titleMenuTimer + dt * 0.5
		end
	end
end


--lpack 
function draw_lpack()
    --should have lpTargOffset = 320(lpack - 1), so who to print 
    local middlepack = math.ceil(lpOffset/320+0.5)
    for i=math.max(1,middlepack-1),math.min(#lpackIcons, middlepack+1) do 
        drawLpackIcon(i, math.floor((320*(i-1)-lpOffset+136)/4)*4)
    end 

	lg.setColor(1,1,1)
	if lpReturn then
		lg.draw(returnbtn[2],16,16)
	else
		lg.draw(returnbtn[1],16,16)
	end
end

function update_lpack(dt)
    --there are multiple options for this. one is to update all currently drawn lpacks. another is to only update the lpack selected.
	
	local middlepack = math.ceil(lpOffset/320+0.5)
    for i=math.max(1,middlepack-1),math.min(#lpackIcons, middlepack+1) do 
    	--updateAnimation(lpackIcons[i],dt)
    end

	--update only whichever lpack is in the middle
	updateAnimation(lpackIcons[math.max(math.min(#lpackIcons,middlepack),1)],dt)
    --updateAnimation(lpackIcons[lpack],dt)



	if lpSwipe then -- movement if pressing down. This took forever and might still want to tweak 
		mouseVelocityX = - ((mx-lastmx)/dt + (lastmx-lastmx2)/lastdt + (lastmx2-lastmx3)/lastdt2) / 3
		--mouseVelocityY = (lastmy-lastmy2)/lastdt2

		if mouseVelocityX > 0 then
			mouseVelocityX = math.min(mouseVelocityX, 1200)
		else
			mouseVelocityX = math.max(mouseVelocityX, -1200)
		end
		if lpOffset > lpOffsetMax then
				lpOffset = lpOffset + mouseVelocityX * dt * (1 - math.min((lpOffset-lpOffsetMax)/150,1))
		elseif lpOffset < lpOffsetMin then
				lpOffset = lpOffset + mouseVelocityX * dt * (1 - math.min((lpOffsetMin-lpOffset)/150,1))
		else
			lpOffset = lpOffset - mx + lastmx
		end

		if math.sqrt((mx-mouseDownX)^2 + (my-mouseDownY)^2) > 16 then
			lpPress = false
		end
	else --movement if not pressing down
		local pullback = 0
		if lpOffset > lpOffsetMax + 1 then
			if mouseVelocityX > 0 then
				mouseVelocityX = (1 - math.min((lpOffset - lpOffsetMax),20)*dt) * mouseVelocityX
			else
				pullback = -math.max(math.min((lpOffset-lpOffsetMax)/150,1)*800,350) * math.max(math.min((lpOffset-lpOffsetMax)/112,1),0.4)
			end
		elseif lpOffset < lpOffsetMin then
			if mouseVelocityX < 0 then
				mouseVelocityX = (1 - math.min((lpOffsetMin-lpOffset),20)*dt) * mouseVelocityX
			else
				pullback = math.max(math.min((lpOffsetMin-lpOffset)/150,1)*800,350) * math.max(math.min((lpOffsetMin-lpOffset)/112,1),0.4)
			end
		end
		lpOffset = lpOffset + (mouseVelocityX + pullback) * dt
		local friction = 2
		mouseVelocityX = mouseVelocityX - mouseVelocityX * friction * dt
	end

	--[[if mouseVelocityX ~= 0 or lsShift > lsShiftMax + 1 or lsShift < lsShiftMin then
		topls = math.min(math.max(math.ceil((8-lsShift)/56),1),#lvls[lpack])
		bottomls = math.min(math.max(math.ceil((228-lsShift)/56),1),#lvls[lpack])
	end--]]
	if math.abs(mouseVelocityX) < 40 then
		mouseVelocityX= 0
	end
    --[[if lpTargOffset ~= lpOffset then
        if lpOffset < lpTargOffset then
            lpOffset = lpOffset + 400*dt
        elseif lpOffset > lpTargOffset then 
            lpOffset = lpOffset - 400*dt
        end
        if math.abs(lpOffset-lpTargOffset) < 1 then
            lpOffset = lpTargOffset
        end
    end--]]
end

--level select
function draw_select()
    --draw level tabs
	local drawShift = math.floor(lsShift/4)*4
	for i=math.max(topls-1,1),math.min(bottomls+1,#lvls[lpack]) do
		lg.setColor(1,1,1)
		if LSbtnPressed == i and i <= l[lpack]+1 then
			lg.draw(LSbtn[2],46,212+56*i+drawShift)
			lg.setColor(darkGrey)
			lg.printf(i..". "..lvls[lpack][i][1],64,224+56*i+drawShift,560,"left",0,1,1)
		elseif i > l[lpack]+1 then
			lg.draw(LSbtn[3],46,212+56*i+drawShift)
			lg.draw(lockIcon,450,220+56*i+drawShift)
			lg.setColor(darkGrey)
			lg.printf(i..". "..lvls[lpack][i][1],64,216+56*i+drawShift,560,"left",0,1,1)
		else
			lg.draw(LSbtn[1],46,212+56*i+drawShift)
			lg.setColor(white)
			lg.printf(i..". "..lvls[lpack][i][1],64,216+56*i+drawShift,560,"left",0,1,1)
		end
	end

	--draw preview level. idk why i made this a helper, but whatever
    drawPreviewLevel(lvls[lpack][cur[lpack]])

	--draw return button
	if lsReturn then
		lg.draw(returnbtn[2],16,16)
	else
		lg.draw(returnbtn[1],16,16)
	end
end


function update_select(dt)
	if lsSwipe then -- movement if pressing down. This took forever and might still want to tweak 
		mouseVelocityY = ((my-lastmy)/dt + (lastmy-lastmy2)/lastdt + (lastmy2-lastmy3)/lastdt2) / 3
		--mouseVelocityY = (lastmy-lastmy2)/lastdt2

		if mouseVelocityY > 0 then
			mouseVelocityY = math.min(mouseVelocityY, 1000)
		else
			mouseVelocityY = math.max(mouseVelocityY, -1000)
		end
		if lsShift > lsShiftMax then
			if mouseVelocityY > 0 then
				lsShift = lsShift + mouseVelocityY * dt * (1 - math.min((lsShift-lsShiftMax)/100,1))
			else
				lsShift = lsShift + mouseVelocityY * dt
			end
		elseif lsShift < lsShiftMin then
			if mouseVelocityY < 0 then
				lsShift = lsShift + mouseVelocityY * dt * (1 - math.min((lsShiftMin-lsShift)/100,1))
			else
				lsShift = lsShift + mouseVelocityY * dt
			end
		else
			lsShift = lsShift + my - lastmy
		end

		if math.abs(my-mouseDownY) > 16 then
			lsPress = false
		end
	else --movement if not pressing down
		local pullback = 0
		if lsShift > lsShiftMax + 1 then
			if mouseVelocityY > 0 then
				mouseVelocityY = (1 - math.min((lsShift - lsShiftMax),20)*dt) * mouseVelocityY
			else
				pullback = -math.max(math.min((lsShift-lsShiftMax)/100,1)*800,350) * math.max(math.min((lsShift-lsShiftMax)/112,1),0.4)
			end
		elseif lsShift < lsShiftMin then
			if mouseVelocityY < 0 then
				mouseVelocityY = (1 - math.min((lsShiftMin-lsShift),20)*dt) * mouseVelocityY
			else
				pullback = math.max(math.min((lsShiftMin-lsShift)/100,1)*800,350) * math.max(math.min((lsShiftMin-lsShift)/112,1),0.4)
			end
		end
		lsShift = lsShift + (mouseVelocityY + pullback) * dt
		local friction = 3
		mouseVelocityY = mouseVelocityY - mouseVelocityY * friction * dt
	end

	if mouseVelocityY ~= 0 or lsShift > lsShiftMax + 1 or lsShift < lsShiftMin then
		topls = math.min(math.max(math.ceil((8-lsShift)/56),1),#lvls[lpack])
		bottomls = math.min(math.max(math.ceil((228-lsShift)/56),1),#lvls[lpack])
	end
	if math.abs(mouseVelocityY) < 40 then
		mouseVelocityY = 0
	end
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

    lg.setColor(1,1,1)

	for i=1,4 do
		if lvlbtnPressed == i then
			lg.draw(lvlbtns[i][2],coordToScreen(0,i))
		else
			lg.draw(lvlbtns[i][1],coordToScreen(0,i))
		end
	end

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

	if lock then
		mxCoord, myCoord = screenToCoord(mx,my)
	end
		
	-- level sprites
	for i=2, #b do
		if in_animation(b[i][1],b[i][2]) and b[i][3] ~= -1 then 
			--dont draw 
		elseif lock==1 and sx==b[i][1] and sy==b[i][2] and b[i][3] ~= -1 then
			-- selected block
			SelectedBlockInB = i
            lg.setColor(pink)
            lg.rectangle("fill", sx*64, sy*64, 64, 64)
            lg.setColor(yellow)
            lg.rectangle("fill", sx*64+8, sy*64+8, 48, 48)
            lg.setColor(1,1,1)
            local hasMoves = "yes"
			local sdx=0
			local sdy=0
			if (mxCoord<sx) then sdx =  - 1 end
			if (mxCoord>sx) then sdx=  1 end
			if (myCoord<sy) then sdy = -1 end
			if (myCoord>sy) then sdy = 1 end
            if #a == 0 then hasMoves = "no" end 
            lg.draw(blockIcons[hasMoves][b[i][3]], sx*64+sdx*4, sy*64+sdy*4)
		else
            lg.setColor(1,1,1)
            lg.draw(blockIcons[b[i][3]], b[i][1]*64, b[i][2]*64)
		end
	end

	--draw each block animation
	for k,v in pairs(blockAnims) do
		draw_block_animation(v)
	end
	
	-- yellow dots
	if (lock==1) then
		for i=1,#a do
			local dx=a[i][1]
			local dy=a[i][2]

			if(btype=="rocket") then
				-- draw rocket arrow when selected
				if rb[i][1] == mxCoord and rb[i][2] == myCoord then
					lg.setColor(1,1,1,0.5)
					lg.draw(blockPreviews[b[SelectedBlockInB][3]],coordToScreen(dx,dy))
					lg.setColor(1,1,1)
				end
				dx, dy = rb[i][1], rb[i][2]
				local r = 0
                if dx == sx or dy == sy then
					if dy == sy and dx < sx then
						r = math.pi
					else
						if dy > sy then
							r = math.pi / 2
						elseif dy < sy then
							r = 3 * math.pi / 2
						end
					end
					lg.draw(lateralArrowIcon,64*(dx)+32,64*(dy)+32,r,1,1,16,16)
                else
					if dx < sx and dy < sy then
						r = math.pi
					elseif dx < sx then 
						r = math.pi / 2
					elseif dy < sy then
						r = 3 * math.pi / 2
					end
					lg.draw(diagonalArrowIcon,64*(dx)+32,64*(dy)+32,r,1,1,16,16)
                end
			elseif dx == mxCoord and dy == myCoord then
				lg.setColor(1,1,1,0.5)
				lg.draw(blockPreviews[b[SelectedBlockInB][3]],coordToScreen(dx,dy))
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
    if not currwon and #swipe==0 and (lock == 0 or (lock == 1 and (sx ~= x or sy ~= y))) then 
        lg.setColor(1,1,1)
        --drawAnimation(cursor, x*64, y*64)
    end

	if currwon and #blockAnims == 0 then
		for z=g+2,#b do
			lg.setColor(yellow)
			lg.rectangle("fill", b[z][1]*64+8, b[z][2]*64+8, 48, 48)
			lg.setColor(1,1,1)
			lg.draw(blockIcons["yes"][b[z][3]], b[z][1]*64, b[z][2]*64)
		end
        if(lpack==1) then dopamine=0 end 
        if(lpack==-1) then dopamine=1 end 
        if(dopamine>=20/30) then 
            lg.setColor(yellow)
            lg.rectangle("fill",132,180,248,172)
        end
        if (dopamine>=24/30) then 
            lg.setColor(pink)
            lg.rectangle("fill", 136, 184, 240, 164)
        end
        if dopamine>=27/30 then
			local txts={"next level","level select", "retry"}
			if assert_mode("free_play") then
				txts = {"generate new", "return", "save level"}
			elseif (cur[lpack]>=#lvls[lpack]) then 
				txts[1]="continue" 
			end

            for i=1,3 do
				if lvlWonbtnPressed == i then
					lg.setColor(1,1,1)
					lg.draw(lvlWonbtn[2],144,52*i+140)
					lg.setColor(darkPurple)
	                lg.printf(txts[i],128,52*i+152,512,"center",0,0.5,0.5)
				else
					lg.setColor(1,1,1)
					lg.draw(lvlWonbtn[1],144,52*i+140)
					lg.setColor(pink)
	                lg.printf(txts[i],128,52*i+144,512,"center",0,0.5,0.5)
				end
            end
		end
		parts_draw()
	end
end

function update_level(dt)
    if lock == 1 then updateAnimation(cursor, dt) end
    if currwon then parts_update(dt) dopamine = dopamine + dt end

	
	if #blockAnims == 0 and undoQueue > 0 then
		local type = ""
		if b[un[#un][3]][3] == 1 then
			type = "reg"
		elseif b[un[#un][3]][3] == 2 then
			type = "rocket"
		elseif b[un[#un][3]][3] == 3 then
			type = "knight"
		end
		make_block_animation(type, b[un[#un][3]][1], b[un[#un][3]][2], un[#un][1], un[#un][2],0,true)
		b[un[#un][3]][1]=un[#un][1]
		b[un[#un][3]][2]=un[#un][2]
		deli(un,#un)
		undoQueue = undoQueue - 1
	end
	for k,v in pairs(blockAnims) do
		update_block_animation(v,k,dt)
	end

	
	if lock==0 and not currwon then
		--swipe_controls()
	end
end


--dele

function draw_dele_select()

	if deleSelect then 
		lg.printf("delete your custom levels?",128,64,256, "center", 0,1,1)
		lg.setColor(yellow)
		lg.printf("<<",128,128,256, "center", 0,1,1)
	else
		lg.printf("delete your game progress?",128,64,256, "center", 0,1,1)
		lg.setColor(yellow)
		lg.printf(">>",128,128,256, "center", 0,1,1)
	end
end

function update_dele_select(dt)

end


function draw_dele_progress()
	lg.printf("press up+left+right and c to delete level progress (permanent!)",128,64,256, "center", 0,1,1)


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

end

function update_dele_progress(dt)

end


function draw_dele_levels()
	lg.printf("press up+left+right and c to delete custom levels (permanent!)",128,64,256, "center", 0,1,1)


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

end

function update_dele_levels(dt)

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
		lg.setColor(1,1,1)
		lg.draw(blockIcons[i-1], 64, 4*(32+12*i)-2, 0, 0.5, 0.5)
		for j=1,freeSelectOptions[i] do
			lg.draw(blockIcons[i-1], 120+40*j,4*(32+12*i)-2,0,0.5,0.5)
		end
		lg.setColor(1,1,1,0.25)
		for j=freeSelectOptions[i]+1,5 do
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
	if 8 - freeSelectBlocksLeft - freeSelectOptions[1] < 3 then
		lg.printf("min. 3 moveable blocks", 0, 416, 512, "center")
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

function draw_transition()
	local transitionCounterStep = math.floor(transitionCounter * 10) / 10
	if not transitioned then 
		load("draw_"..transitions[1].."()")()
		lg.setColor(0,0,0,transitionCounterStep*2)
	else
		load("draw_"..transitions[2].."()")()
		lg.setColor(0,0,0,2 - transitionCounterStep*2)
	end
	lg.rectangle("fill",0,0,512,512)
end


function update_transition(dt) -- i like this system a lot for a few reasons. one is that it allows you to not forget to set up whatever mode youre changing to,
	transitionCounter = transitionCounter + dt * 1.75 -- e.g., forgetting to call setup_ls() when changing to select mode. 

	local deltaTime = dt
	if not transitioned then 
		load("update_"..transitions[1].."(deltaTime)")()
	else
		load("update_"..transitions[2].."(deltaTime)")()
	end

	if transitionCounter > 0.5 and not transitioned then --"discrete," one-time actions only in this if statement! no update functions or things that get called each frame!
		transitioned = true
		inputLock = false

		--special instructions passed from the setup_transition function
		if transitionInstructions ~= nil then
			transitionInstructions()
		end
			--[[if transitions[1] == transitions[2] then
			if currwon and transitions[1] == "level" then
				cur[lpack] = cur[lpack] + 1
			end
		end--]]

		--to set something when entering a mode, put it here.
		if transitions[2] == "title" then
			blockAnims = {}
			titleMenuTimer = 0
			titlePressed = false
		elseif transitions[2] == "lpack" then
			lpOffset=320*(lpack-1)
			lpTargOffset = lpOffset
		elseif transitions[2] == "select" then
		    lg.setFont(picosmallfont)
			setup_ls()
			currwon = false
		elseif transitions[2] == "level" then
			undoQueue = 0
			blockAnims = {}
			set_b()
			currwon = false
			dopamine = 0
		elseif transitions[2] == "editor_play" then
			set_b(elvl)
		elseif transitions[2] == "free_select" then

		elseif transitions[2] == "free_generate" then 
			lg.setFont(picosmallfont)
		elseif transitions[2] == "free_play" then
			set_b(randlvl)
			currwon = false
		end

		-- to set something when leaving a mode, it things here.
		if transitions[1] == "select" then
			lg.setFont(picofont)
		elseif transitions[1] == "level" then
			blockAnims = {}
		end
	end

	if transitionCounter > 1 then
		mode = transitions[2]
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

-- blocks and level
function set_b(lev)
	un={}
	undoQueue = 0
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
				freeSelectBlocksLeft = 8
				for i=1,4 do
					freeSelectOptions[i] = 0
				end
				freeSelectOptions[5] = 3
			elseif titleBtn[titleBtnIndx] == "dele" then
				lg.setFont(picosmallfont)
				mode = "dele_select"
			elseif titleBtn[titleBtnIndx] == "info" then
				mode = "info"
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
			lock = 0
            x=b[2][1]
            y=b[2][2]
        elseif key == "x" then
            mode="lpack" 
            lpOffset=320*(lpack-1) 
        elseif key == "up" and cur[lpack]>1 then
            cur[lpack] = cur[lpack] - 1
            ls_boxselect = ls_boxselect - 1
            if ls_boxselect < 3 and lsShift <= -24 and cur[lpack] > 1 then
                lsShift = lsShift + 12
                ls_boxselect = ls_boxselect + 1
            end
        elseif key == "down" and cur[lpack] <= #lvls[lpack]-1 and cur[lpack] <= math.min(l[lpack],#lvls[lpack]-1) then --- this bit to control locked levels
            cur[lpack] = cur[lpack] + 1
            ls_boxselect = ls_boxselect + 1
            if ls_boxselect > 3 and #lvls[lpack]-cur[lpack] > 1 then
                lsShift = lsShift - 12
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
		if currwon then level_won(key) end
		if lock==0 then level_unlocked(key) else level_locked(key) end
	elseif mode=="dele_select" then -- DELETE SAVE INPUT
		if key == "x" then
			mode = "title"
			lg.setFont(picofont)
		elseif (key == "left") and deleSelect then
			deleSelect = false
		elseif (key == "right") and not deleSelect then
			deleSelect = true
		elseif key == "c" then 
			if deleSelect then
				mode = "dele_levels"
			else
				mode = "dele_progress"
			end
		end
	elseif mode == "dele_progress" or mode == "dele_levels" then
		if key == "x" then 
			mode = "dele_select"
		end
	elseif mode=="free_select" then -- FREE SELECT INPUT
		if key == "x" then
			mode="title"	
			lg.setFont(picofont)
		elseif key == "c" and 8 - freeSelectBlocksLeft - freeSelectOptions[1] > 2 then
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
	elseif mode == "free_generate" then 
		if key == "x" then
			mode = "free_select"
		end
    end
end


function love.mousepressed(x, y, button, istouch, presses )
	if inputLock then return end
	if button ~= 1 then return end
	mouseDownX, mouseDownY = detransform(x,y)
	if not mouseDown then
		mouseDown = true
	end

	mouseDownXCoord, mouseDownYCoord = math.floor(mouseDownX/64), math.floor(mouseDownY/64)
	if (assert_mode("level") or assert_mode("free_play")) and not currwon then 
		if mouseDownXCoord == 0 then
			lvlbtnPressed = mouseDownYCoord
		else 
			lvlbtnPressed = 0
		end
		for i=g+2, #b do
			if b[i][1] == mouseDownXCoord and b[i][2] == mouseDownYCoord and b[i][3]>0 and not in_animation(b[i][1],b[i][2]) then
				lock=1
				sx,sy = mouseDownXCoord, mouseDownYCoord
				blocks(b[i])
				break
			end
		end
	elseif (assert_mode("level") or assert_mode("free_play")) and currwon then
		lvlWonbtnPressed = 0
		if mouseDownX > 144 and mouseDownX < 366 then
			for i=1,3 do
				if mouseDownY > 140 + 52*i and mouseDownY < 184+52*i then
					lvlWonbtnPressed = i
					break
				end
			end
		end
	elseif assert_mode("select") then
		if mouseDownX > 16 and mouseDownX < 80 and mouseDownY > 16 and mouseDownY < 64 then
			lsReturn = true
		elseif mouseDownX > 46 and mouseDownX < 444 and mouseDownY > 256 then
			lsShiftAtStart = lsShift
			lsSwipe = true
			lastmy = mouseDownY
			for i=topls,bottomls do
				if mouseDownY > 212+56*i+lsShift and mouseDownY < 256+56*i+lsShift then
					lsPress = true
					LSbtnPressed = i
					cur[lpack] = i
					break
				end
			end
		end
	elseif assert_mode("lpack") then
		if mouseDownX > 16 and mouseDownX < 80 and mouseDownY > 16 and mouseDownY < 64 then
			lpReturn = true
		elseif mouseDownY > 120 and mouseDownY < 360 then
			lpOffsetAtStart = lpOffset
			lpSwipe = true
			lastmx = mouseDownX
			local middlepack = math.ceil(lpOffset/320+0.5)
			for i=math.max(1,middlepack-1),math.min(#lpackIcons, middlepack+1) do 
				local offset = 320*(i-1)-lpOffset+136
				if mouseDownX > offset and mouseDownX < offset + 240 then
					lpPress = true
					lpack = i
					lpPressed = i
					break
				end
			end
		end
	elseif assert_mode("title") then
		if not titlePressed then
			titlePressed = true
			titleMenuTimer = -0.2
		elseif titleMenuTimer < 0 then

		elseif titleMenuTimer < 1 then
			titleMenuTimer = 1
		else
			titleMenuBtnPressed = 0
			if mouseDownX > 136 and mouseDownX < 376 then
				for i=1,5 do
					if mouseDownY > 68*i+24 and mouseDownY < 68*i+80 then
						titleMenuBtnPressed = i
						break
					end
				end
			end
		end
	end
end


function love.mousereleased( x, y, button, istouch, presses )
	if inputLock then return end
	if button ~= 1 then return end
	mouseUpX, mouseUpY = detransform(x,y)
	mouseUpXCoord, mouseUpYCoord = screenToCoord(mouseUpX,mouseUpY)
	if mouseDown then
		mouseDown = false
	end

	if (mode == "level" or mode == "free_play") and not currwon then
		if lvlbtnPressed ~= 0 then
			if mouseUpXCoord == mouseDownXCoord and mouseUpYCoord == mouseDownYCoord then
				if lvlbtnPressed == 1 then -- returtn to level select
					if mode == "level" then
						setup_transition("select")
					elseif mode == "free_play" then 
						setup_transition("free_select")
					elseif mode == "editor_play" then
						setup_transition("editor")
					end
				elseif lvlbtnPressed == 2 then
					-- hint button
				elseif lvlbtnPressed == 3 and #un>0 then
					-- undo button
					undoQueue = math.min(undoQueue + 1, #un)
					--[un[#un][3]][1]=un[#un][1]
					--b[un[#un][3]][2]=un[#un][2]
					--deli(un,#un)
				elseif lvlbtnPressed == 4 then
					-- restart level button
					setup_transition(mode)
				end
			end
			lvlbtnPressed = 0
		elseif lock and undoQueue == 0 then
			for j=1,#a do
				local dx=a[j][1] 
				local dy=a[j][2]
				if btype=="rocket" then
					dx=rb[j][1]
					dy=rb[j][2]
				end	 
				if mouseUpXCoord==dx and mouseUpYCoord==dy then
					for i=g+2,#b do
						if sx==b[i][1] and sy==b[i][2] then 
							add(un,{b[i][1],b[i][2],i})
							x=a[j][1]
							y=a[j][2] 
							make_block_animation(btype,b[i][1],b[i][2],x,y)
							b[i][1]=x
							b[i][2]=y
						end
					end
				break
				end
			end
			lock = 0
		end
		lock = false
	elseif (mode == "level" or mode == "free_play") and currwon then -- level won buttons 
		if lvlWonbtnPressed > 0 and mouseUpX > 144 and mouseUpX < 366 and mouseUpY > 140 + 52*lvlWonbtnPressed and mouseUpY < 184+52*lvlWonbtnPressed then
			if mode == "level" then
				if lvlWonbtnPressed == 1 then
					if (cur[lpack]==#lvls[lpack]) then
						setup_transition("lpack")
					else
						setup_transition(mode, "cur[lpack] = cur[lpack] + 1")
					end
				elseif lvlWonbtnPressed == 2 then
					setup_transition("select", "if (cur[lpack]<#lvls[lpack]) then cur[lpack] = cur[lpack] + 1 end")
				elseif lvlWonbtnPressed == 3 then
					setup_transition(mode)
				end
			elseif mode == "free_play" then 
				if lvlWonbtnPressed == 1 then -- generate a new level
					setup_transition("free_generate")
				elseif lvlWonbtnPressed == 2 then -- return to free select
					setup_transition("free_select")
				elseif lvlWonbtnPressed == 3 then -- save random level
				setup_transition("select", "save_level()")
				end
			end
		end
		lvlWonbtnPressed = 0
	elseif mode == "select" then
		if lsReturn and mouseUpX > 16 and mouseUpX < 80 and mouseUpY > 16 and mouseUpY < 64 then
			setup_transition("lpack")
		elseif lsPress and LSbtnPressed <= l[lpack]+1 and mouseUpX > 46 and mouseUpX < 444  then
			setup_transition("level")
		end
		LSbtnPressed = 0
		lsPress,lsSwipe,lsReturn = false,false,false
	elseif mode == "lpack" then
		if lpReturn and mouseUpX > 16 and mouseUpX < 80 and mouseUpY > 16 and mouseUpY < 64 then
			setup_transition("title")
		elseif lpPress and mouseUpY > 120 and mouseUpY < 360 then
			setup_transition("select")
		end
		lpPress,lpSwipe,lpReturn = false,false,false
		lpPressed = 0
	elseif mode == "title" then
		if titleMenuTimer > 1 and mouseUpX > 136 and mouseUpX < 376 then
			for i=1,5 do
				if mouseUpY > 68*i+24 and mouseUpY < 68*i+80 then -- title menu button controls
					if i == 1 then
						setup_transition("lpack")
					elseif  i == 2 then
					elseif  i == 3 then
						setup_transition("free_select")
					elseif  i == 4 then
					elseif  i == 5 then
					end
					break
				end
			end
		end
		titleMenuBtnPressed = 0
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

function drawAnimation(anim, x, y, r, sx, sy, ox, oy)
	if r == nil then r=0 end
	if sx == nil then sx=1 end
	if sy == nil then sy=1 end
	if ox == nil then ox=0 end
	if oy == nil then oy=0 end
    local spriteNum = math.floor(anim.currentTime / anim.duration * #anim.quads) + 1
	if anim.reverse == true then
		spriteNum = 1 + #anim.quads - spriteNum
	end
    lg.draw(anim.spriteSheet, anim.quads[spriteNum], x, y, r, sx, sy, ox, oy)
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

	local yoffset = 0
	lg.setColor(1,1,1)
	if i==lpPressed then
		yoffset = 8
	end
    drawAnimation(lpackIcons[i],offset,136+yoffset)

	if i == 1 then
		lg.setColor(pink)
		lg.printf("tutorial", offset-2, 300+yoffset, 280, "center", 0, 0.9, 0.9)
    elseif i == 2 then
        lg.setColor(darkBlue)
        lg.printf("base", offset+2, 166+yoffset, 240, "center", 0, 1, 1)
        lg.printf("levels", offset+2, 294+yoffset, 240, "center", 0, 1, 1)
        lg.setColor(yellow)
        lg.printf("base", offset, 168+yoffset, 240, "center", 0, 1, 1)
        lg.printf("levels", offset, 296+yoffset, 240, "center", 0, 1, 1)
    elseif i == 3 then
        lg.setColor(white)
        lg.printf("rocke", offset-32, 212+yoffset, 240, "center", 0, 1, 1)
        lg.printf("levels", offset-8, 288+yoffset, 240, "center", 0, 1, 1)
    elseif i == 4 then
		lg.setColor(black)
		lg.printf("kn  ght", offset+16, 212+yoffset, 240, "center", 0, 1, 1.25)
		lg.printf("levels", offset+16, 268+yoffset, 240, "center", 0, 1, 1.25)		
		lg.setColor(darkBlue)
		lg.printf("kn  ght", offset+12, 208+yoffset, 240, "center", 0, 1, 1.25)
		lg.printf("levels", offset+12, 264+yoffset, 240, "center", 0, 1, 1.25)
    elseif i == 5 then

    end

	if i==lpPressed then
        lg.setColor(0,0,0,0.5)
        lg.rectangle("fill", offset, 144, 240, 240)
    end

end

function drawPreviewLevel(level)
	lg.setColor(darkBlue)
    lg.rectangle("fill", 0,0,512,256)
	lg.setColor(yellow)
	lg.rectangle("fill",156,28,200,200)
    lg.setColor(darkBlue)
    lg.rectangle("fill", 160,32,192,192)
    lg.setColor(1,1,1)
    for i = 2, #level do
        lg.draw(blockPreviews[level[i][3]], 32*(1+level[i][1])+96, 32*(level[i][2]), 0, 0.5, 0.5 )
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
	dt = dt * 0.75
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
	x,y = mouseDownXCoord, mouseDownYCoord
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
	btype="reg"
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



--this function is unneccessary, as it is only called in the transition function. I've just kept it to keep that function less bulky. 
function setup_ls()
	lg.setFont(picosmallfont)
	ls_boxselect = math.min(3,cur[lpack])
	if math.abs(#lvls[lpack]-cur[lpack]) <= 1 then
		ls_boxselect=5-(#lvls[lpack]-cur[lpack])
	end
	 ls_levelstart = math.max(1,cur[lpack]-2)
	if #lvls[lpack]-cur[lpack] <= 1 then
		ls_levelstart = #lvls[lpack]-4
	end
	lsShift=-ls_levelstart*12
	topls = math.min(math.max(math.ceil((8-lsShift)/56),1),#lvls[lpack])
	bottomls = math.min(math.max(math.ceil((228-lsShift)/56),1),#lvls[lpack])
	lsShiftMax = -12
	if #lvls[lpack] < 5 then 
		lsShiftMin = -12
	elseif #lvls[lpack] == 6 then
		lsShiftMin = -36
	else
		lsShiftMin = -36-56*(#lvls[lpack]-5)
	end

	mouseVelocityY = 0
	lsShift = math.max(math.min(lsShiftMax,-12-56*(cur[lpack]-1)),lsShiftMin)
	topls = math.min(math.max(math.ceil((8-lsShift)/56),1),#lvls[lpack])
	bottomls = math.min(math.max(math.ceil((228-lsShift)/56),1),#lvls[lpack])
end



-- this function takes two parameters, "to" and specialInstructions. when you want to change modes, just call this function with the mode you want to change to as "to." if you need 
-- specific things to happen right when the screen switches modes, pass the code as a string and it will be executed when the screen transitions.  
function setup_transition(to, specialInstructions)
	transitions = {mode,to}
	transitionCounter = 0
	transitioned = false
	inputLock = true
	if specialInstructions ~= nil then
		transitionInstructions = load(specialInstructions)
	else
		transitionInstructions = nil
	end
	mode = "transition"
end


--some of these functions were kept just because im lazy and didnt want to ctrl + f certain bits.
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
			if (b[i][1]==b[j][1] and b[i][2]==b[j][2] and not in_animation(b[i][1],b[i][2])) then
				gnum = gnum + 1
				if (gnum==g) then return true end 
			end
		end
	end
	
	return false
end


-- used for permanent save stuff. this function writes a table to a given filename
function writeTable(table, filename)
	local str = tabletostr(table)
	love.filesystem.write(filename,str)
end

-- converts a given table into a string to be written to a file
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

--takes a string value from a file and converts it into a table, and returns the table.
function readTable(filename)
	local str = love.filesystem.read(filename)
	local func = load('return '..str)
	return func()
end

-- love callback called when the game is closed. this is the only time we save...kinda dangerous i know
function love.quit()
	writeTable(l,"playerProgress")
	writeTable(lvls[#lvls], "playerLevels")
end



-- recursive dfs, great for searching a small number of rounds but doesn't have the advantages of iterative bfs. also doesnt check if a position has been visited, so could loop forever if round is sufficiently high (like -2)
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

	randlvl = {"endless"}
	local spaces = {}

	-- generate goal
	local a,b = math.floor(math.random(6)),math.floor(math.random(6))
	randlvl[#randlvl+1] = {a,b,-1}
	spaces[6*(a-1)+b] = 1

	-- generate blocks
	for i = 1,4 do 
		for j=1,freeSelectOptions[i] do
			while spaces[6*(a-1)+b] do 
				a,b = math.floor(math.random(6)),math.floor(math.random(6))
			end
			randlvl[#randlvl+1] = {a,b,i-1}
			spaces[6*(a-1)+b] = 1
		end
	end
	set_b(randlvl)


	--if  future(freeSelectOptions[5]-1)=="not close" then
	--if  future()=="not close" then
	if  future(freeSelectOptions[5]-1)=="not close" and future(freeSelectOptions[5]+3) == "close!" then
		mode = "free_play"
		lpack = -1
		lg.setFont(picofont)
		lock = 0
	end
	levelGenCount = levelGenCount + 1
end

function draw_free_generate()
	lg.printf("generating tha ting",0,256,512,"center")
	lg.printf(levelGenCount,0,256+64,512,"center")
	lg.printf(tabletostr(randlvl),0,256+128+64,256,"center",0,0.5,0.5)
end

function update_free_play(dt)
	update_level(dt)
end

function draw_free_play(dt)
	draw_level()
end

function makea() -- makes a local copy of the table "a"
	local ta={}
	for i=1,#a do
		ta[i]={a[i][1],a[i][2]}
	end
	return ta
end

function coordToScreen(x,y)
	return x*64, y*64
end

function screenToCoord(x,y)
	return math.floor(x/64), math.floor(y/64)
end

-- use this to convert raw mouse x and y values to correctly transformed coordinates. always neccessary!
function detransform(x,y)
	return (x-xtranslate)/scale, (y-ytranslate)/scale
end
function transform(x,y)
	return (x*scale)+xtranslate, (y*scale)+ytranslate
	--return (x-xtranslate)/scale, (y-ytranslate)/scale
end


-- this function is called when you save a rand level, needs to be modified to support level editor as well. 
function save_level()
	set_b(randlvl)
	local templvl = tabletostr(b)
	templvl = load("return "..templvl)()
	lpack = #lvls
	if lvls[lpack][1][1] == "your levels here!" then
		lvls[lpack][1] = templvl
	else
		lvls[lpack][#lvls[lpack]+1] = templvl
	end
	l[lpack] = #lvls[lpack]
	cur[lpack] = #lvls[lpack]
end

--use this function instead of " mode == "level" " because it will also return true if transitioning into said mode.
function assert_mode(tmode)
	return (mode == tmode or (mode == "transition" and transitioned and transitions[2] == tmode) or (mode == "transition" and not transitioned and transitions[1] == tmode))
end


--make_block_animation, as well as draw work to allow multiple animations at once. 
function make_block_animation(type, originXCoord, originYCoord, destXCoord, destYCoord,startOffset, undo)
	local dt = deltaTime
	local mouseVelocity = 0
	if assert_mode("level") then
		math.sqrt((((mx-lastmx)/dt + (lastmx-lastmx2)/lastdt + (lastmx2-lastmx3)/lastdt2)/3)^2+(((mx-lastmx)/dt + (lastmx-lastmx2)/lastdt + (lastmx2-lastmx3)/lastdt2)/3)^2)
	end
	local block = {}
	block.type = type
	block.startX, block.startY = originXCoord,originYCoord -- only used for title screen, don't use for level stuff!
	block.originXCoord = originXCoord
	block.originYCoord = originYCoord
	block.destXCoord = destXCoord
	block.destYCoord = destYCoord
	block.movesOrder = {}
	block.undo = undo
	if type == "reg" or type == "rocket" then
		block.movesOrder[1] = {destXCoord - originXCoord, destYCoord - originYCoord}
	elseif type == "knight" then
		local dxcoord, dycoord = destXCoord - originXCoord, destYCoord - originYCoord
		if maxabs(dxcoord,dycoord) == dxcoord then
			block.movesOrder[1] = {dxcoord,0}
			block.movesOrder[2] = {0,dycoord}			
		else
			block.movesOrder[2] = {dxcoord,0}
			block.movesOrder[1] = {0,dycoord}
		end
		if undo then
			local temp = block.movesOrder[1]
			block.movesOrder[1] = block.movesOrder[2]
			block.movesOrder[2] = temp
		end
	end
	block.timer = 0
	if startOffset ~= nil then
		block.timer = - startOffset
	end
	if undo then
		block.movesOrder[1][1], block.movesOrder[1][2] = -block.movesOrder[1][1], -block.movesOrder[1][2]
	end
	block.timerDuration = 1
	if type == "reg" then
		block.face = blockIcons["yes"][1]
		block.timerDuration = 0.25
		if block.movesOrder[1][1] ~= 0 and block.movesOrder[1][2] ~= 0 then
			block.timerDuration = block.timerDuration + 0.05
		end
		if mouseVelocity < 100 then
			block.timerDuration = block.timerDuration + 0.15
		end
		if assert_mode("title") then
			block.timerDuration = 0.75
		end
		--block.timerDuration = math.max(0.25*math.sqrt((destXCoord-originXCoord)^2+(destYCoord-originYCoord)^2),0.4)
	elseif type == "rocket" then 
		block.timerDuration = math.min(math.max(0.25*math.sqrt((destXCoord-originXCoord)^2+(destYCoord-originYCoord)^2),0.25),0.9)
		if mouseVelocity < 100 then
			block.timerDuration = block.timerDuration + 0.15
		end
		local r,xoffset,yoffset = 0,0,0
		if block.movesOrder[1][2] < 0 then
			r = math.pi
			xoffset,yoffset = 32,32
			if block.movesOrder[1][1] < 0 then
				r = r - math.pi / 4
				yoffset = yoffset + 36
				xoffset = xoffset - 16
			elseif block.movesOrder[1][1] > 0 then
				r = r + math.pi / 4
				yoffset = yoffset + 12
				xoffset = xoffset + 8
			else
				yoffset = yoffset + 32
			end
		elseif block.movesOrder[1][2] > 0 then
			yoffset = 32
			if block.movesOrder[1][1] < 0 then 
				r = r + math.pi / 4
				yoffset = yoffset + 12
				xoffset = xoffset - 6
			elseif block.movesOrder[1][1] > 0 then 
				r = r - math.pi / 4
				yoffset = yoffset - 12
				xoffset = xoffset + 16
			end
		else
			if block.movesOrder[1][1] < 0 then 
				r = math.pi/2
				yoffset = yoffset + 64
			elseif block.movesOrder[1][1] > 0 then 
				r = 3*math.pi / 2
				xoffset = xoffset + 32
				yoffset = yoffset + 32
			end
		end
		block.firer = r
		if assert_mode("title") then
			block.timerDuration = block.timerDuration * 4
			block.fireAnim = newAnimation(smallFire,32,32,1,false)
			block.fireoffsetx = xoffset
			block.fireoffsety = yoffset
		else
			block.fireAnim = newAnimation(bigFire,64,64,1,false)
			block.fireoffsetx = xoffset * 2
			block.fireoffsety = yoffset * 2
		end
		block.face = flyingRocketFace[sign(block.movesOrder[1][2])+2][sign(block.movesOrder[1][1])+2]
	elseif type == "knight" then
		block.face = blockIcons["yes"][3]
		block.timerDuration = 0.5
		if mouseVelocity < 100 then
			block.timerDuration = 0.65
		end
		if assert_mode("title") then
			block.timerDuration = 1.5
		end
	end
	if undo then
		block.movesOrder[1][1], block.movesOrder[1][2] = -block.movesOrder[1][1], -block.movesOrder[1][2]
		block.timerDuration = block.timerDuration / 1.5
	end
	table.insert(blockAnims,block)
end

function draw_block_animation(block)
	local xpos, ypos, movetime, animtodraw = 0,0,0,nil
	if block.type == "reg" then
		xpos = block.originXCoord + block.timer * block.movesOrder[1][1]
		ypos = block.originYCoord + block.timer * block.movesOrder[1][2]		
		animtodraw = blockPreviews[1]
	elseif block.type == "rocket" then
		movetime = (1-math.cos(block.timer*math.pi))/2
		xpos = block.originXCoord + movetime * block.movesOrder[1][1]
		ypos = block.originYCoord + movetime * block.movesOrder[1][2]
		animtodraw = blockPreviews[2]
	elseif block.type == "knight" then
		animtodraw = blockPreviews[3]
		if (not block.undo and block.timer < 2 / 3) or (block.undo and block.timer < 1/3) then
			local movetime = block.timer * 3 / 2
			if block.undo then
				movetime = movetime * 2
			end
			xpos = block.originXCoord + movetime * block.movesOrder[1][1]
			ypos = block.originYCoord + movetime * block.movesOrder[1][2]
		else
			local movetime = block.timer * 3 - 2 
			if block.undo then
				movetime = (movetime + 1)/2
			end
			xpos = block.originXCoord + block.movesOrder[1][1] + movetime * block.movesOrder[2][1]
			ypos = block.originYCoord + block.movesOrder[1][2] + movetime * block.movesOrder[2][2]
		end
	end
	if block.timer < 0 then
			xpos, ypos = block.originXCoord, block.originYCoord
	end
	local scale = 2
	local i = 0
	if block.type == "reg" then
		i=1
	elseif block.type == "rocket" then
		i=2
	elseif block.type == "knight" then
		i=3
	end
	animtodraw = blankBlocks[i]
	if assert_mode("title") then
		scale = 1
		xpos = math.floor(xpos*8+0.5)/8
		ypos = math.floor(ypos*8+0.5)/8
	else
		xpos = math.floor(xpos*16+0.5)/16
		ypos = math.floor(ypos*16+0.5)/16
	end
	if block.type == "rocket" then
		drawAnimation(block.fireAnim,xpos*64,ypos*64,block.firer,1,1,block.fireoffsetx,block.fireoffsety)
	end
	
	if block.type == "rocket" and assert_mode("level") then
		local offset = math.abs(minabs(math.max(math.min(8,math.sqrt((ypos-block.destYCoord)^2+(xpos-block.destXCoord)^2)*16),-8), math.max(math.min(8,math.sqrt((ypos-block.originYCoord)^2+(xpos-block.originXCoord)^2)*16),-8)))
		lg.setColor(0,0,0,0.5)
		lg.rectangle("fill",math.floor((xpos*64+offset)/4+1/2)*4,math.floor((ypos*64+offset)/4+1/2)*4,64,64)
		lg.setColor(1,1,1)		
	end
	lg.draw(animtodraw,xpos*64,ypos*64,0,scale,scale)
	if assert_mode("level") then
		local sdx,sdy = 0,0
		local i = 1
		if block.type == "knight" and ((not block.undo and block.timer > 2/3) or (block.undo and block.timer > 1/3)) then
			i = 2
		end
		if block.type ~= "rocket" then
			if (block.movesOrder[i][1] < 0) then sdx = -4 end
			if (block.movesOrder[i][1] > 0) then sdx = 4 end
			if (block.movesOrder[i][2] < 0) then sdy = -4 end
			if (block.movesOrder[i][2] > 0) then sdy = 4 end
			if block.undo then
				sdx,sdy = -sdx,-sdy
			end
		end
		lg.draw(block.face,xpos*64+sdx,ypos*64+sdy,0,1,1)
	end
end

function update_block_animation(block,k,dt)
	block.timer = block.timer + dt / block.timerDuration
	if block.type == "rocket" then
		updateAnimation(block.fireAnim,dt)
	end

	if block.timer > 1 then
		if assert_mode("level") then
			deli(blockAnims,k)
			if #blockAnims == 0 then
				currwon=won()
				if currwon then 
					undoQueue = 0
					gnum=0
					cf=-20
					parts_init()
					mselect=1
					if lpack ~= -1 and l[lpack]<cur[lpack] then
						l[lpack] = l[lpack] + 1
					end	
					sx,sy = -1,-1
				end
			end
		elseif assert_mode("title") then
			block.timer = block.timer - 1.3
			if block.type == "knight" then
				block.originXCoord = block.destXCoord
				block.originYCoord = block.destYCoord
				block.destXCoord = block.destXCoord + maxabs(block.movesOrder[1][1], block.movesOrder[2][1])
				block.destYCoord = block.destYCoord + maxabs(block.movesOrder[1][2], block.movesOrder[2][2])
			elseif block.type == "reg" or block.type == "rocket" then
				block.originXCoord = block.destXCoord
				block.originYCoord = block.destYCoord
				block.destXCoord = block.destXCoord + block.movesOrder[1][1]
				block.destYCoord = block.destYCoord + block.movesOrder[1][2]
			end

			if ((block.originYCoord > 7.9 or block.originYCoord < -0.5) and block.originYCoord ~= block.startY) or ((block.originXCoord < 0 or block.originXCoord > 7.5) and block.originXCoord ~= block.startX) then
				deli(blockAnims,k)
			end
		end
	end
end

function in_animation(x,y)
	for i=1,#blockAnims do
		if blockAnims[i].destXCoord == x and blockAnims[i].destYCoord == y then
			return true
		end
	end
	return false
end

--returns value with smaller absolute value (e.g., minabs(-3,5) will return -3). if equal, returns the positive value. 
function minabs(a,b)
	if math.abs(a) < math.abs(b) then
		return a
	elseif math.abs(a) == math.abs(b) then
		return math.abs(a)
	else
		return b
	end
end

--returns value with larger absolute value (e.g., minabs(3,-5) will return -5). If equal, returns the positive value.
function maxabs(a,b)
	if math.abs(a) > math.abs(b) then
		return a
	elseif math.abs(a) == math.abs(b) then
		return math.abs(a)
	else
		return b
	end
end

function sign(number)
	if number > 0 then
		return 1
	elseif number < 0 then
		return -1
	else
		return 0
	end
end


-- bfs code

--[[

function search(mode)
 --initialize queue and current
 q = {}
 curr = b
 nbors = {}
 --visited and previous
 v={}
 
 add(q, {curr,nil})
 
 --begin search
 while (#q != 0) do
 	--dequeue
 	curr=q[1][1]
 	prev=q[1][2]
 	deli(q,1)
  if not isvisited(curr) then
   setvisited(curr,prev)
 		won(curr)
 		if won(curr) then
 			break
 		end
 		nbors = getnbors(curr)
 	 while #nbors != 0 do
    if not isvisited(nbors[1]) then
 			 if mode==0 then
 			 	add(q, {nbors[1], curr})
 			 elseif mode==1 then
 			  add(q, {nbors[1], curr},1)
 			 end
 			 deli(nbors,1)
 			else
 				deli(nbors,1)
		  end
 		end
  end
 end
 if won(curr) then
 	return findpath(v,curr)
 else 
  return nil
	end
end


function setvisited(board,prev)
	add(v,{board,prev})
end

function isvisited(board)
	for i=1,#v do
	 if equal(board,v[i][1]) then
	 	return true
	 end
	end
	return false
end

--checks if two tables are equal
--reguardless of permutation
function equal(tbl1,tbl2)
	if #tbl1 != #tbl2 then
	 return false
	end
	for i=1,#tbl2 do
		if not contains(tbl1,tbl2[i]) then
			return false
		end
	end
	return true
end

function findpath(vp,final)
	toreturn={}
	curr=vp[#vp][1]
	prev=vp[#vp][2]
	while(prev != nil) do
	 add(toreturn,curr,1)
	 for i=1,#vp do
	 	if equal(prev,vp[i][1]) then
	 		curr=prev
	 		prev=vp[i][2]
	 		break
	 	end
	 end
	end
	add(toreturn,curr,1)
	return toreturn
end


-- returns the "neighboring" board, i.e, they are connected by a directed edge.
function getnbors(board)
	toreturn={}
	temp={}
	moves={}
	for i=g+2,#board do
		if board[i][3]==2 then
			moves=findmoves(board, board[i])
		local bt={b[i][1],b[i][2],b[i][3]}
		blocks(bt)
		local moves=makea()

		else
			moves={}
		end
		for j=1,#moves do
			temp={}
			for i=1,#board do
			temp2={}
				add(temp2,board[i][1])
				add(temp2,board[i][2])
				if #board[i]==3 then
					add(temp2,board[i][3])
				end
				add(temp,temp2)
			end
			temp[i][1]=moves[j][1]
			temp[i][2]=moves[j][2]
			add(toreturn,temp)
		end
	end
	return toreturn
end




--finds all possible moves of a
--single block on a board
function findmoves(board, block)
--init x and y
	x=block[1]
	y=block[2]
	blockmoves={}
	
--proceed to check every nbor

--top middle
	if inbounds(x,y-1) and not contains(board, {x,y-1}) then
			if (contains(board,{x,y+1}) or (contains(board,{x-1,y+1})and contains(board,{x+1,y+1}))) then
				add(blockmoves, {x,y-1})
			end
	end
	
--top left
	if inbounds(x-1,y-1) and not contains(board, {x-1,y-1}) then
			if (contains(board,{x+1,y+1}) or (contains(board,{x,y+1})and contains(board,{x+1,y}))) then
				add(blockmoves, {x-1,y-1})
			end
	end
	
--top right
	if inbounds(x+1,y-1) and not contains(board, {x+1,y-1}) then
			if (contains(board,{x-1,y+1}) or (contains(board,{x-1,y})and contains(board,{x,y+1}))) then
				add(blockmoves, {x+1,y-1})
			end
	end
	
--left
	if inbounds(x-1,y) and not contains(board, {x-1,y}) then
			if (contains(board,{x+1,y}) or (contains(board,{x+1,y-1})and contains(board,{x+1,y+1}))) then
				add(blockmoves, {x-1,y})
			end
	end
	
--right
	if inbounds(x+1,y) and not contains(board, {x+1,y}) then
			if (contains(board,{x-1,y}) or (contains(board,{x-1,y-1})and contains(board,{x-1,y+1}))) then
				add(blockmoves, {x+1,y})
		end
	end
	
--bottom middle
	if inbounds(x,y+1) and not contains(board, {x,y+1}) then
			if (contains(board,{x,y-1}) or (contains(board,{x-1,y-1})and contains(board,{x+1,y-1}))) then
				add(blockmoves, {x,y+1})
			end
	end
	
--bottom left
	if inbounds(x-1,y+1) and not contains(board, {x-1,y+1}) then
			if (contains(board,{x+1,y-1}) or (contains(board,{x,y-1})and contains(board,{x+1,y}))) then
				add(blockmoves, {x-1,y+1})
			end
	end
	
--bottom right
	if inbounds(x+1,y+1) and not contains(board, {x+1,y+1}) then
			if (contains(board,{x-1,y-1}) or (contains(board,{x-1,y})and contains(board,{x,y-1}))) then
				add(blockmoves, {x+1,y+1})
			end
	end
	
	return blockmoves
end

--]]