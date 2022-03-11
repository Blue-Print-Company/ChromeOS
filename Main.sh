# Main Script

# Init
rm *.zip
rm *.tar.gz
rm Recovery.bin
rm -rf ./Brunch
mkdir Brunch
echo Installing Dept.
sudo apt update && sudo apt -y install -qq pv cgpt tar unzip lrzip wget curl grep p7zip-full
echo Done

# Start
echo "Fetching Image Link..."
bash fetchimage.sh $1 Image.bin
echo "Fetching Brunch..."
bash getbrunch.sh Brunch
bash build.sh Image.bin $2

# Usage
# Main <Version> <Output>
