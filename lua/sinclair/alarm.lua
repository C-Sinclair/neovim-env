local uv = require'luv'

local timer = uv.new_timer()

timer:start(3000, 0, function()
  print("Awakey wakey")
  os.execute [[ notify-send -i face-wink "Alarm has finished sir!" ]]
  timer:close()
end)
