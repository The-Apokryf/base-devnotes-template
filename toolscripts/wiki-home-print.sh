#!/bin/sh

#uv run ruff rule --all > .docs/ruff-rules.md

echo "> _Inceptorium Apokryf @ $( date +%Y )_"
echo "# wiki almanac about [$(uv version)][link-to-project] "

NAMEREPO="$(gh repo view --json name | python3 toolscripts/py-shell-pipe-json.py name)"

# fonts[0]="ansi_regular"
# fonts[1]="alligator3"
# fonts[2]="4max"
# fonts[3]="amcneko"
# fonts[4]="amctubes"
# fonts[5]="banner"
# fonts[6]="ascii_new_roman"
# fonts[7]="banner3"
# fonts[8]="basic"
# fonts[9]="bell"
# fonts[10]="big"
# fonts[11]="binary"
# fonts[12]="blocks"
# fonts[13]="broadway"
# fonts[14]="bulbhead"
# fonts[15]="calgphy2"
# fonts[16]="caligraphy"
# fonts[17]="chunky"
# fonts[18]="colossal"
# fonts[19]="computer"
# fonts[20]="cybermedium"
# fonts[21]="cyberlarge"
# fonts[22]="cybersmall"
# fonts[23]="doh"
# fonts[24]="doom"
# fonts[25]="dosrebel"
# fonts[26]="double"
# fonts[27]="epic"

# font_choice=$[ $RANDOM % 28 ]

echo "\`\`\`"
# uvx rich-pyfiglet "${fonts[$font_choice]}" --font small
uvx rich-pyfiglet "$NAMEREPO" --font 4max
echo "\`\`\`"


echo "\`\`\`"
uvx pycowsay "$(curl https://api.github.com/zen)"
echo "\`\`\`"




echo "[link-to-project]: $(gh repo view --json url | python3 toolscripts/py-shell-pipe-json.py url)"