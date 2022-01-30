# Get Recovery Image
echo "Fetching Image Link..."
linkdl=$(curl -v --stderr - https://cros-updates-serving.appspot.com/ | grep -o 'https[^"]*'"$1"'[^"]*zip' | tail -1)
echo "Downloading From $linkdl"
wget -o Img.zip "${linkdl}"

# Process Files
fnamet=${zipinfo -1 Img.zip)
unzip Img.zip
mv $fnamet $2
rm Img.zip






# Usage
# fetchimage <Version> <Image Name>
