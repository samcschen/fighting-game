Class = require "class"

Player = Class{}

function Player:init(x,y, type)
  self.x = x
  self.y = y
  self.type = type
  self.velX = 0
  self.velY = 0
end

function Player:updateLocation(dt)
  self.x=self.x+self.velX*dt
  self.y=self.y+self.velY*dt
end

function Player:draw()
  love.graphics.rectangle("line", self.x, self.y, 70, 70)
end

function Player:control()
  if love.keyboard.isDown('a') then
    self.velX = self.velX - 10
  end
  if love.keyboard.isDown('d') then
    self.velX = self.velX + 10
  end
  if love.keyboard.isDown('w') then
    self.velY = self.velY - 10
  end
  if love.keyboard.isDown('s') then
    self.velY = self.velY + 10
  end
end
