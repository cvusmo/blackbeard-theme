#!/bin/bash

# Create output directories if they don't exist
mkdir -p gtk-3.0 gtk-4.0 gnome-shell

# Compile GTK 3.0 variants
sass src/core/gtk-3.0/gtk-Dark.scss gtk-3.0/gtk-dark.css
sass src/core/gtk-3.0/gtk-Light.scss gtk-3.0/gtk.css

# Compile GTK 4.0 variants
sass src/core/gtk-4.0/gtk-Dark.scss gtk-4.0/gtk-dark.css
sass src/core/gtk-4.0/gtk-Light.scss gtk-4.0/gtk.css

# Compile GNOME Shell variants
sass src/core/gnome-shell/gnome-shell-Dark.scss gnome-shell/gnome-shell.css
sass src/core/gnome-shell/gnome-shell-Light.scss gnome-shell/gnome-shell-light.css

# Optional: Compile GTK 2.0 (using gtkrc for now, no SASS)
# Note: GTK 2.0 uses gtkrc files; copy them if needed
mkdir -p gtk-2.0
cp src/core/gtk-2.0/gtkrc-Dark gtk-2.0/gtkrc
cp src/core/gtk-2.0/gtkrc gtk-2.0/gtkrc-light
