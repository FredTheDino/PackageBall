local game = require "game"

local last_modified = 0
local state = nil
function love.load()
  state = game.init(0)
end

function love.update(dt)
  state = game.update(dt)(state)
  print(state)
end

function love.draw()
  game.draw(state)
end
