Paddle = Class{}

function Paddle:init(x, y, width, height)
    self.x = x
    self.y = y
    self.dy = 0
    self.width = width
    self.height = height
end

function Paddle:update(dt)
    self.y = math.max(0, self.y + self.dy * dt)
    self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y)
end

function Paddle:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end