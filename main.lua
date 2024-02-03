local game = require("game")

local last_modified = 0
local state = nil
function love.load()
	state = game.init(0)
end

function love.update(dt)
	package.loaded["game"] = nil
	game = require("game")
	local input = {
		left = love.keyboard.isDown("left") or love.keyboard.isDown("a"),
		right = love.keyboard.isDown("right") or love.keyboard.isDown("d"),
		up = love.keyboard.isDown("up") or love.keyboard.isDown("w"),
		down = love.keyboard.isDown("down") or love.keyboard.isDown("s"),
		restart = love.keyboard.isDown("r"),
		exit = love.keyboard.isDown("escape") or love.keyboard.isDown("q"),
	}
	state = game.update(dt)(input)(state)
end

function love.draw()
	game.draw(state)()
end
