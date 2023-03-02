# dotfiles

https://user-images.githubusercontent.com/58668163/222455341-b6467445-9f71-4bb4-b8e3-87e29587c649.mp4

# Dependencies 
- [AwesomeWM](https://github.com/awesomeWM/awesome)
- [Picom Ibhagwan](https://github.com/ibhagwan/picom)
- [Alacritty](https://github.com/alacritty/alacritty)
- [Neovim](https://github.com/neovim/neovim)
- [Rofi ](https://github.com/davatorium/rofi)
- [Elkowars Wacky Widgets](https://github.com/elkowar/eww)
- Commandline tools: pactl, date, upower, awk, grep, brightnessctl
- Python 3
- Make sure that eww is in your path!

# Top panel
## Setup
Make sure you have following lines in your awesomewm's rc.lua:
```
home = os.getenv("HOME")

awful.rules.rules = {
    ...

    { rule = { class = "eww-top-panel" },
        properties = {
            focusable = false,
            border_width = dpi(0)
        }
    },
    
    ...
}

awful.spawn("eww daemon")
awful.spawn(home .. "/.config/eww/run")
```

Panel can be launched by ./run script, or manually using:
```
eww open top-panel
```

## Launcher Configuration
You can add items to launcher by providing new record in launcher-items.json file in eww directory:

```
{
	"launch-path": "/path/to/executable &",
	"icon-path": "/path/to/icon"
}
```

Make sure that icon is 20px/20px.
If you encounter any problems with launcher, you can manually run/edit lc-items.py script to search for errors.
