-- Title: Animating images
-- Name: Nice Mena
-- Course: ICS2O/3C
-- This program displays animated images
--------------------------------------------------------------------------------
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

---------------------------------------------------------------------
-- SOUNDS
---------------------------------------------------------------------


-- setting sound variables 
local Music = audio.loadSound("Sounds/pllthemesong")
local BackgroundMusic


-- setting background music 
BackgroundMusic = audio.play(Music)

---------------------------------------------------------------------
-- LOCAL VARIABLES
---------------------------------------------------------------------

---- creating local variables
local textSize = 50
local backgroundImage = display.newImageRect("Images/fire.png", 1050, 1010)
local pll= display.newImageRect("Images/pll.png", 500, 400)
local redcoat = display.newImageRect("Images/triton.png", 600, 300)
local asign = display.newImageRect("Images/asign.png", 200, 300)

--global variables
scrollSpeed = -2
scrollSpeed2 = 3
scrollSpeed3 = 4

--set the position of the background image
backgroundImage.x = 500
backgroundImage.y = 300

--make pll transparent
pll.alpha = 0

--set the initial x and y position of pll
pll.x = 500
pll.y = display.contentHeight/2


--set the initial x and y position of asign
asign.x = 500
asign.y = 100

--set the initial x and y position of red coat
redcoat.x = 500
redcoat.y = 600

--Display phrase on the screen
areaText = display.newText("GOTTA SECRET, CAN YOU KEEP IT ?", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 300
areaText:rotate(-20)

--set the text color
areaText:setTextColor(200, 150, 175)

---------------------------------------------------------------------
-- LOCAL FUNCTIONS
---------------------------------------------------------------------


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

--Function: MoveAsign
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the casket
local function MoveAsign(event)
	  --add the scroll speed to the x-value of the casket
	 asign.x = asign.x + scrollSpeed2
-- change the transpanrency of asign everytime it oves so it fades out
	   asign.alpha = asign.alpha - 0.0005
	  --make asign smaller as it moves
	  asign:scale(1 - 0.003, 1 - 0.003)
	end

-- MoveAsign will be called over and over again
Runtime:addEventListener("enterFrame", MoveAsign) 

--Function: redcoat
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the redcoat
local function MoveRedcoat(event)
	--add the scroll speed to the x-value of the redcoat
	redcoat.x = redcoat.x + scrollSpeed3
	redcoat.y = redcoat.y + scrollSpeed3
	-- make the redcoat spin as it moves
	redcoat:rotate(5)
end

-- Movecasket will be called over and over again
Runtime:addEventListener("enterFrame", MoveRedcoat)



-----------------------------------------------------------------------------------------

