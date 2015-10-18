-- This is the main Lua script of your project.
-- You will probably make a title screen and then start a game.
-- See the Lua API! http://www.solarus-games.org/solarus/documentation/

-- This is just an example of quest that shows the Solarus logo
-- and then does nothing.
-- Feel free to change this!
local show_peach = false

function sol.main:on_started()
  -- This function is called when Solarus starts.
  print("This is a sample quest for Solarus.")

  -- Setting a language is useful to display text and dialogs.
  sol.language.set_language("en")

  local solarus_logo = require("menus/solarus_logo")

  -- Show the Solarus logo initially.
  sol.menu.start(self, solarus_logo)
  solarus_logo.on_finished = function()
    -- Do whatever you want next, like showing your title screen
    -- or starting a game.
   
  	 local exists = sol.game.exists("save1.dat")
	   local game = sol.game.load("save1.dat")
	   if not exists then
		  game:set_starting_location("chap-1")
    		end
    	game:start() --start game
  end
	

end



local peach_img = sol.surface.create("peach3.png")
function sol.main:on_draw(screen)
  if show_peach then
    peach_img:draw(screen)
  end

end

