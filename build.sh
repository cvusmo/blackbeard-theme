#!/bin/bash

# Create output directories if they don't exist
mkdir -p gtk-3.0 gtk-4.0 gnome-shell gimp

# Compile GTK 3.0 variants
sass src/core/gtk-3.0/gtk-Dark.scss gtk-3.0/gtk-dark.css
sass src/core/gtk-3.0/gtk-Light.scss gtk-3.0/gtk.css

# Compile GTK 4.0 variants
sass src/core/gtk-4.0/gtk-Dark.scss gtk-4.0/gtk-dark.css
sass src/core/gtk-4.0/gtk-Light.scss gtk-4.0/gtk.css

# Compile GNOME Shell variants
sass src/core/gnome-shell/gnome-shell-Dark.scss gnome-shell/gnome-shell.css
sass src/core/gnome-shell/gnome-shell-Light.scss gnome-shell/gnome-shell-light.css

# Compile GIMP variants
sass src/sass/gtk/apps/_gimp-Light.scss gimp/gimp-light.css
sass src/sass/gtk/apps/_gimp-Dark.scss gimp/gimp.css

# Symlink to GIMP 3.0 theme dir
mkdir -p ~/.config/GIMP/3.0/themes/Blackbeard
ln -sf "$(pwd)/gimp/gimp-dark.css" ~/.config/GIMP/3.0/themes/Blackbeard/gimp-dark.css
ln -sf "$(pwd)/gimp/gimp.css" ~/.config/GIMP/3.0/themes/Blackbeard/gimp.css
cp src/core/apps/theme.ini ~/.config/GIMP/3.0/themes/Blackbeard/theme.ini

# Optional: GTK 2.0 (gtkrc)
mkdir -p gtk-2.0
cp src/core/gtk-2.0/gtkrc-Dark gtk-2.0/gtkrc
cp src/core/gtk-2.0/gtkrc gtk-2.0/gtkrc-light
