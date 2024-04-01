#!/bin/sh
# needs to be tabbed between title layout and index
cat <<EOF | xmenu
[]= Tiled Layout			0
TTT Bottom Stack Layout			1
[M] Monocle Layout			2
|M| Centered Master Layout		3
HHH Grid Layout				4
><> Floating Layout			5
=== Bottom Stack Horizontal Layout	6
>M> Centered Floating Master Layout	7
||| Column Layout			8
[D] Deck Layout				9
(@) Spiral Layout			10
[\] Dwindle Layout			11
--- Horizontal Grid Layout		12
::: Gapless Grid Layout			13
### nrow Grid Layout			14
EOF
