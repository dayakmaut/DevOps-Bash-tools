#!/data/data/com.termux/files/usr/bin/bash
echo "Installing dependencies..." | lolcat
pkg update && pkg upgrade -y
pkg install git curl wget nano fzf ruby neofetch toilet -y
gem install lolcat
echo "Cloning tools..." | lolcat
git clone git@github.com:dayakmaut/DevOps-Bash-tools.git
cd DevOps-Bash-tools/internet
bash launch.sh
if [ -f ~/DevOps-Bash-tools/internet/launch.sh ]; then
  cd ~/DevOps-Bash-tools/internet
  bash launch.sh
else
  echo "❌ launch.sh not found. Please create it manually." | lolcat
fi
