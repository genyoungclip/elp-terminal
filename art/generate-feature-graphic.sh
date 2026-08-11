#!/bin/bash

echo "Generating feature graphics to ~/Elp-terminal-icons/Elp-terminal-feature-graphic.png..."
mkdir -p ~/Elp-terminal-icons/
rsvg-convert feature-graphic.svg > ~/Elp-terminal-icons/feature-graphic.png
