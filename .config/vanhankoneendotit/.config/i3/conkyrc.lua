-- vim: ts=4 sw=4 noet ai cindent syntax=lua

--[[
Conky, a system monitor, based on torsmo
]]

conky.config = {
    out_to_x = false,
    out_to_console = true,
    short_units = true,
    update_interval = 1
}

--[[home = os.getenv("HOME")
dofile(home .. '/.config/i3/conkyrc.lua' .. 'jsonhelper.lua')
dofile(home .. '/.config/i3/conkyrc.lua' .. 'jsonparts.lua')
]]
--[[
-- if you care about performance, comment-out this variable.
]]
enabled = ''
    .. parts.cputemp .. ',' 
    .. parts.download .. ','
    .. parts.upload .. ','
    .. parts.memory .. ','
    .. parts.cpu0 .. ','
    .. parts.date .. ','
    .. parts.time

--[[
--enabled = ''
]]    .. parts.mpd .. ','
    .. parts.mem .. ','
    .. parts.uptime .. ','
    .. parts.host .. ','
--  .. parts.volume .. ','
    .. parts.machine .. ','
    .. jsonhelper.separator()


conky.text = [[ 
[ 
]] .. enabled .. [[
],
]]
