out_to_x no
own_window no
out_to_console yes
background no
max_text_width 0

# Update interval in seconds
update_interval 2.0

# This is the number of times Conky will update before quitting.
# Set to zero to run forever.
total_run_times 0

# Shortens units to a single character (kiB->k, GiB->G, etc.). Default is off.
short_units yes

# How strict should if_up be when testing an interface for being up?
# The value is one of up, link or address, to check for the interface
# being solely up, being up and having link or being up, having link
# and an assigned IP address. 
if_up_strictness address

# Add spaces to keep things from moving about?  This only affects certain objects.
# use_spacer should have an argument of left, right, or none
use_spacer left

# Force UTF8? note that UTF8 support required XFT
override_utf8_locale no

# number of cpu samples to average
# set to 1 to disable averaging
cpu_avg_samples 2

# Stuff after 'TEXT' will be formatted on screen
TEXT

# JSON for i3bar

 [{ "full_text" : " Root:${fs_free /} Free", "color" : "\#1affff" },
	{ "full_text" : "Home:${fs_free /home} Free", "color" : "\#ffffff" },
  { "full_text" : " RAM ${memperc}%" , "color" :
    ${if_match ${memperc}<90}"\#ffffff"${else}"\#ff0000"${endif} },
  { "full_text" : " Date:${exec date +"%j/%V %a %b %e"}", "color" : "\#33cc33" },
  { "full_text" : " ${time %H:%M:%S}", "color" : "\#ffffff"}
],

