
accent=$(gsettings get org.gnome.desktop.interface accent-color)
# Remove surrounding quotes
accent=${accent//\'/}
accent=${accent//\"/}

scheme=$(gsettings get org.gnome.desktop.interface color-scheme)
scheme=${scheme//\'/}
scheme=${scheme//\"/}

case $accent in
    "red") color="#cc0000" ;;
    "orange") color="#e59400" ;;
    "yellow") color="#e5e500" ;;
    "green") color="#198c19" ;;
    "teal") color="#007373" ;;
    "blue") color="#3232ff" ;;
    "purple") color="#8c198c" ;;
    "pink") color="#ff19ff" ;;
    "slate") color="#008080" ;;
esac

case $scheme in
    "default") mode="light" ;;
    "prefer-dark") mode="dark" ;;
    "prefer-light") mode="light" ;;
esac

# matugen
matugen color hex $color -m $mode