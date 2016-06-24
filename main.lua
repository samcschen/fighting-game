require "player"

Gamestate = require "gamestate"

--Create various gamestates
menu = {}
game = {}
pause = {}

function love.load(dt)
  Gamestate.registerEvents()
  Gamestate.switch(game)
end

function game:init()
  --Create the players
  PlayerOne = Player(100,100,"PlayerOne")
  PlayerTwo = Player(200,100,"PlayerTwo")
end


function game:update(dt)
  PlayerOne:updateLocation(dt)
  PlayerOne:control()
  PlayerTwo:updateLocation(dt)
  PlayerTwo:control()
end

function game:draw()
  PlayerOne:draw()
  PlayerTwo:draw()
end
