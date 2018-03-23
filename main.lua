-- Title: Animating images
-- Name: Nice Mena
-- Course: ICS2O/3C
-- This program displays animated images
--------------------------------------------------------------------------------
---- creating local variables
local textSize = 50
local backgroundImage = display.newImageRect("Images/fire.png", 1050, 1010)
local pll= display.newImageRect("Images/pll.png", 200, 200)
local casket = display.newImageRect("Images/casket.png", 300, 300)
local redcoat = display.newImageRect("Images/triton.png", 200, 200)
local asign = display.newImageRect("Images/asing.jpg", 400, 500)
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = -2
scrollSpeed2 = 3
scrollSpeed3 = 4
scrollSpeed4 = 3

--set the position of the background image
backgroundImage.x = 1028
backgroundImage.y = 800

--make pll transparent
pll.alpha = 0

--set the initial x and y position of pll
pll.x = 800
pll.y = display.contentHeight/3

--set the initial x and y position of casket
casket.x = 100
casket.y = display.contentHeight*2.5/3

--set the initial x and y position of asign
asign.x = 100
asign.y = 10

--set the initial x and y position of asign
asign.x = 100
asign.y = 10

--Function: Moved pll
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of casket
local function Movedpll(event)
	  --add the scroll speed to the x-value of pll
	  pll.x = pll.x + scrollSpeed
	  -- change the transparency of pll every time they moves so that they fades in
	  pll.alpha = pll.alpha + 0.01
	end

-- MoveCasket will be called over and over again
Runtime:addEventListener("enterFrame", Movedpll)

--Function: Movecasket
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of casket
local function Movecasket(event)
	  --add the scroll speed to the x-value of casket
	  casket.x = casket.x + scrollSpeed2 
	  -- change the transparency of the casket every time it moves so that it fades out
	  casket.alpha = casket.alpha - 0.0005
	  --make casket smaller as it moves
	  casket:scale(1 - 0.003, 1 - 0.003)
	end

-- Movecasket will be called over and over again
Runtime:addEventListener("enterFrame", MoveCasket)


--Function: MoveAsign
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the casket
local function MoveAsign(event)
	  --add the scroll speed to the x-value of the casket
	  MoveAsign.x = Asign.x + scrollSpeed3
	  MoveAsign.y = Asign.y + scrollSpeed3
	  -- make the asign spin as it moves
	  casket:rotate(5)
	end

-- MoveAsign will be called over and over again
Runtime:addEventListener("enterFrame", MoveAsign) 

--Function: Moveredcoat
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the redcoat
local function MoveRedcoat(event)
	  --add the scroll speed to the x-value of the redcoat
	  MoveRedcoat.x = Redcoat.x + scrollSpeed3
	  MoveRedcoat.y = Redcoat.y + scrollSpeed3
	  -- make the redcoat spin as it moves
	  casket:rotate(5)
	end
-- Movecasket will be called over and over again
Runtime:addEventListener("enterFrame", MoveRedcoat)

--Display phrase on the screen
areaText = display.newText("Gotta a secret can you keep it ?", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 400
areaText:rotate(-20)

--set the text color
areaText:setTextColor(1, 0, 1)

-- setting sound variables 
local Music = a
local BackgroundMusic

-- setting background music 
BackgroundMusic = audio.play(Music)
-----------------------------------------------------------------------------------------
