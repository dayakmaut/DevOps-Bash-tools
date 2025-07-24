#!/data/data/com.termux/files/usr/bin/bash

echo "📂 Mendeteksi file di folder ini..." | lolcat
selected=$(ls | fzf)

if [ -f "$selected" ]; then
  echo "🚀 Uploading '$selected' ke 0x0.st..." | lolcat
  response=$(curl -F "file=@$selected" https://0x0.st)
  echo -e "\n🔗 URL: $response" | lolcat
  echo "$response" | termux-clipboard-set 2>/dev/null && echo "📋 URL dicopy ke clipboard!" | lolcat
else
  echo "❌ File tidak ditemukan atau bukan file biasa." | lolcat
fi
