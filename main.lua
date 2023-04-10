function love.load()
-- this runs once, when the project is first loaded


-- setting up the x and y values
  x = 50
  y = 30
  w = 30
  h = 30

  speed = 500

  width = love.graphics.getWidth()
  height = love.graphics.getHeight()


end

function love.update(dt)
-- this runs as part of the game's update loop
  -- you can think of this as being called once
  -- per frame.  Put stuff in here that will
  -- update the state of your game variables

  -- right movement
  if love.keyboard.isDown("right") and x < width - w then
    x = x + speed * dt
  end

    -- left movement
  if love.keyboard.isDown("left") and x > 0 then
    x = x - speed * dt
  end

    -- up movement
  if love.keyboard.isDown("up") and y > 0  then
    y = y - speed * dt
  end

  -- down movement
  if love.keyboard.isDown("down") and y < height - h then
    y = y + speed * dt
  end




end

function love.draw(dt)
    -- draw the rectangle
    love.graphics.rectangle("line", x, y, w, h)
end
