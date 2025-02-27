-- Common CoreLibs imports.
import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

-- Project imports
import "button"
import "crank"
import "lifecycle"
import "simulator"

-- Use common shorthands for playdate code
local pd <const> = playdate
local gfx <const> = pd.graphics

--- By convention, most games need to perform some initial setup when they're
--- initially launched. Perform that setup here.
---
--- Note: This will be called exactly once. If you're looking to do something
--- whenever the game is resumed from the background, see playdate.gameWillResume
--- in lifecycle.lua
local function gameDidLaunch()
    print(pd.metadata.name .. " launched!")

    gfx.setBackgroundColor(gfx.kColorBlack)
end
gameDidLaunch()

--- This update method is called once per frame.
function pd.update()
    -- Example code. Draw a full-screen rectangle and the frames per second
    gfx.fillRect(0, 0, 400, 240)
    pd.drawFPS(0,0)

    -- Update and draw all sprites. Calling this method in playdate.update
    -- is generally what you want, if you're using sprites.
    -- See https://sdk.play.date/#f-graphics.sprite.update for more info
    gfx.sprite.update()

    -- Update all timers once per frame. This is required if you're using
    -- timers in your game.
    -- See https://sdk.play.date/#f-timer.updateTimers for more info
    pd.timer.updateTimers()
end
