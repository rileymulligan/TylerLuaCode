function love.load()
-- this runs once, when the project is first loaded


-- setting up the x and y values
  x = 50
  y = 30

  speed = 150

  width = love.graphics.getWidth()
  height = love.graphics.getWidth()


end

function love.update(dt)
-- this runs as part of the game's update loop
  -- you can think of this as being called once
  -- per frame.  Put stuff in here that will
  -- update the state of your game variables

  -- right movement
  if love.keyboard.isDown("right") and x < width - 110 then
    x = x + speed * dt
  end

    -- left movement
  if love.keyboard.isDown("left") then
    x = x - speed * dt
  end

    -- up movement
  if love.keyboard.isDown("up") then
    y = y - speed * dt
  end

  -- down movement
  if love.keyboard.isDown("down") then
    y = y + speed * dt
  end
end

function love.draw(dt)
    -- draw the rectangle
    love.graphics.rectangle("line", x, y, 100, 200)
end