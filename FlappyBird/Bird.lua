Bird = Class{}

function Bird:init()
    self.image = love.graphics.newImage('bird.png')
    self.width = self.image:getWitdth()
    self.height = self.image:getHeight()

    self.x = VIRTUAL_WIDTH / 2 - (self.width / 2)
    self.y = VIRTUAL_HEIGHT / 2 - (self.height / 2)