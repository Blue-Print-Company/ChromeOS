# Get Recovery Image
echo "Fetching Image Link..."
linkdl=$(curl -v --stderr - https://cros-updates-serving.appspot.com/ | grep -o 'https[^"]*'"$1"'[^"]*zip' | tail -1)
echo "Downloading From $linkdl"
curl -L ${linkdl} -o Img.bin.zip

# Process Files
echo Unzipping...
7z x Img.bin.zip
echo Renaming...
mv *".bin" $2
echo Cleaning Up...
rm Img.bin.zip






# Usage
# fetchimage <Version> <Image Name>
