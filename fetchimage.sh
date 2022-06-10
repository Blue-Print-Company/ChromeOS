# Get Recovery Image
linkdl=$(curl -v --stderr - 'https://chromiumdash.appspot.com/serving-builds?deviceCategory=ChromeOS' | grep -o 'https[^"]*"$1"[^"]*zip' | tail -1)
echo "Downloading From $linkdl"
curl -L -s ${linkdl} -o Img.bin.zip

# Process Files
echo Unzipping...
7z x Img.bin.zip
echo Renaming...
mv *".bin" $2
echo Cleaning Up...
rm Img.bin.zip






# Usage
# fetchimage <Version> <Image Name>
