#!/data/data/com.termux/files/usr/bin/bash
clear
echo "🚀 SOFTSEC7 Launcher - Choose your script" | lolcat
selected=$(ls *.sh | fzf)
bash "$selected"
