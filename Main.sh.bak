# Main Script

# Init
rm *.zip
rm *.tar.gz
rm Recovery.bin
rm -rf ./Brunch
mkdir Brunch
sudo apt update && sudo apt -y install -qq pv cgpt tar unzip wget curl grep

# Start
bash fetchimage.sh $1 Image.bin
bash getbrunch.sh Brunch
bash build.sh Image.bin $2

# Usage
# Main <Version> <Output>
