# Main Script

# Init
rm *.zip
rm *.tar.gz
rm Recovery.bin
rm -rf ./Brunch
mkdir Brunch
echo Install Dept.
sudo apt update && sudo apt -y install -qq pv cgpt tar unzip
sudo apt update && sudo apt -y install -qq wget curl grep p7zip-full
clear

# Start
echo "Fetching Image Link..."
bash fetchimage.sh $1 Image.bin
echo "Fetching Brunch..."
bash getbrunch.sh Brunch
bash build.sh Image.bin $2
echo Uploading...
outf=$(curl -s --upload-file $2 https://transfer.sh/$2)
echo Output File: $outf
echo $outf

if $GITHUB_ACTIONS || true
then
   echo "UPLOADURL="'$outf' >> $GITHUB_ENV
fi
# Usage
# Main <Version> <Output>
