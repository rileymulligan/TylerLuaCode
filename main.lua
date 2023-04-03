function love.load()
  x = 50
  y = 30

  speed = 150

  width = love.graphics.getWidth()
  height = love.graphics.getWidth()


end

function love.update(dt)

  if love.keyboard.isDown("right") and x < width - 110 then
    x = x + speed * dt
  end

  if love.keyboard.isDown("left") then
    x = x - speed * dt
  end

  if love.keyboard.isDown("up") then
    y = y - speed * dt
  end

  if love.keyboard.isDown("down") then
    y = y + speed * dt
  end

end

function love.draw(dt)

    love.graphics.rectangle("line", x, y, 100, 200)

end