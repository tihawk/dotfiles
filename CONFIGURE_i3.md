## Notes
- to restart i3 press  `$mod+shift+r`
- to run an application on login add `exec <command>` to `i3/config`
- to run an application on i3 restart add `exec_always <command>` to `i3/config`

## Configuration

- keybinding `i3lock`
  - `bindsym $mod+shift+x exec i3lock`

- to set wallpaper
  - install `feh` or `<forgot name>`
  - run `feh --bg-scale </absolute/path/to/wallaper.jpg>`
  - add `exec_always <command above>` to `i3/config`

- to configure screen
  - option 1: `xrandr`
  - option 2: `arandr` - gui for `xrandr`
    - export script for setting the screen
    - add the command in the script to `i3/config` as `exec_always`

- renaming workspaces
```
# setting variables to not repeat the name
# setting the number as a prefix allows for proper ordering
set $workspace1 "1: Terminals"
set $workspace10 "10: Spotify"

bindsym $mod+1 workspace $workspace1
bindsym $mod+0 workspace $workspace10

bindsym $mod+Shift+1 move container to workspace $workspace1
bindsym $mod+Shift+0 move container to workspace $workspace10
```
- automatically run in workspace
  1. get class of app
    - run `xprop` and click on the app while it's running
    - copy the second value of `WM_CLASS(STRING)`
  2. in `i3/config` write
    - `assign [class=<window-class of app>] $workspace10`

## Ricing lol

- using icons in workspace names
  - clone font awesome repo
  - copy otf or ttf files into `~/.local/share/fonts`
  - make sure locale is set to something with UTF-8
  - copy paste icons into workspace name

### some links
- [Source Code Pro font](https://github.com/adobe-fonts/source-code-pro/)
- [scripts for i3blocks](https://github.com/vivien/i3blocks-contrib)
- [infinality article by webupd8](http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html)
- [i3wm docs by](https://i3wm.org/docs/)
- [dot files that youtuber](https://github.com/bookercodes/dotfiles/tree/ubuntu)
- [arc firefox theme](https://github.com/horst3180/arc-firefox-theme)
- [arc gtk theme](https://github.com/horst3180/Arc-theme)
- [i3lock](https://www.reddit.com/r/unixporn/comments/3358vu/i3lock_unixpornworthy_lock_screen/)

- configuring system fonts
  - run the code below this list to install SourceCodePro font
  - `font pango:SourceCodePro 11`
  - `sudo apt install lxappearance`
  - generate gtk config files by changing something in lxappearance
  - edit the two config files, one in home dir, one in .config

```
wget 'https://github.com/adobe-fonts/source-code-pro/releases/download/2.038R-ro%2F1.058R-it%2F1.018R-VAR/TTF-source-code-pro-2.038R-ro-1.058R-it.zip'
unzip TTF-source-code-pro-2.038R-ro-1.058R-it.zip
mv *.ttf ~/.local/share/fonts
```

- colour of bars and titles
```
set $bg-color            #41234d
set $inactive-bg-color   #2c1834
set $text-color          #f3f4f5
set $inactive-text-color #676E7D
set $urgent-bg-color     #E53935

# window colours
#                           border                     background                 text                  indicator
client.focused              $bg-color                  $bg-color                  $text-color           #00ff00
client.unfocused            $inactive-bg-color         $inactive-bg-color         $inactive-text-color  #00ff00
client.focused_inactive     $inactive-bg-color         $inactive-bg-color         $inactive-text-color  #00ff00
client.urgent               $urgent-bg-color           $urgent-bg-color           $text-color           #00ff00

# bar
bar {
  status_command i3blocks -c /home/tihawk/.i3/i3blocks.conf
	colors {
		background $bg-color
	    	separator #757575
		#                  border             background         text
		focused_workspace  $bg-color          $bg-color          $text-color
		inactive_workspace $inactive-bg-color $inactive-bg-color $inactive-text-color
		urgent_workspace   $urgent-bg-color   $urgent-bg-color   $text-color
	}
}

# remove borders from windows
hide_edge_borders both
```
- set up the bars
  - [scripts for i3blocks](https://github.com/vivien/i3blocks-contrib)
  - `$ sudo pacman -S i3blocks`
  - `$ cp /etc/i3blocks.conf ~/i3blocks/`
  - inside the `blocks{}` block of `i3/conf` change the `status_command` line to `status_command i3blocks -c /home/tihawk/i3blocks/i3blocks.conf`
  - add all required scripts, and their representations inside the config file
  
- get terminator to be transparent
  - install `picom`
  - in `picom.conf` set `vsync` to `false` on virtual machines
  - in `picom.conf` add line `opacity-rule = ["85:class_g = 'Terminator'"];`
  - add `execute picom --config /full/path/to/picom.conf` to `i3/conf`

- nautilus or thunar