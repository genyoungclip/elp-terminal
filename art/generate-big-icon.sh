#!/bin/sh
set -e -u

echo "Generating ~/Elp-terminal-icons/ic_launcher.png..."
mkdir -p ~/Elp-terminal-icons/

vector2svg ../app/src/main/res/drawable/ic_launcher.xml ~/Elp-terminal-icons/ic_launcher.svg

sed -i "" 's/viewBox="0 0 108 108"/viewBox="18 18 72 72"/' ~/Elp-terminal-icons/ic_launcher.svg

SIZE=512
rsvg-convert \
	-w $SIZE \
	-h $SIZE \
	-o ~/Elp-Terminal-icons/ic_launcher_$SIZE.png \
	~/Elp-Termimal-icons/ic_launcher.svg

rsvg-convert \
	-b default \
	-w $SIZE \
	-h $SIZE \
	-o ~/Elp-terminal-icons/ic_launcher_square_$SIZE.png \
	~/Elp-terminal-icons/ic_launcher.svg
