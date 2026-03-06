#!/bin/bash

# When accent color or color scheme changes, this script will execute a specified action.
run_matugen() {
    # Get the current accent color and color scheme
    ACCENT=$(gsettings get org.gnome.desktop.interface accent-color | tr -d "'")
    SCHEME=$(gsettings get org.gnome.desktop.interface color-scheme | tr -d "'")

    echo "Change detected!"
    echo "Current color: $ACCENT"
    echo "Current scheme: $SCHEME"

    # Script
    ~/.config/matugen/matugen.sh
}

# Start at the beginning
run_matugen

# Monitor for changes in the specified keys
gsettings monitor org.gnome.desktop.interface | while read -r line; do
    # Check if the line contains changes to accent-color or color-scheme
    if [[ "$line" == "accent-color:"* || "$line" == "color-scheme:"* ]]; then
        run_matugen
    fi
done