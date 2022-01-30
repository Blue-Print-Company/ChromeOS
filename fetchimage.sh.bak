# Get Recovery Image
echo "Fetching Image Link..."
linkdl=$(curl -v --stderr - https://cros-updates-serving.appspot.com/ | grep -o 'https[^"]*'"$1"'[^"]*zip' | tail -1)
echo "Downloading From $linkdl"
wget -o Img.bin.zip "${linkdl}"

# Process Files
gunzip -S Img.bin.zip
ls
for f in *; do mv "$f.bin" "Image.bin"; done
mv *.bin $2
rm Img.bin.zip






# Usage
# fetchimage <Version> <Image Name>
