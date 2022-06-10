linkdl=$(curl -s 'https://api.github.com/repos/sebanc/brunch/releases/latest' | grep -E 'browser_download_url' | grep brunch | cut -d '"' -f 4)
wget "$linkdl" -O brunch.tar.gz
tar zxvf ./brunch.tar.gz -C ./$1
rm brunch.tar.gz

# Usage
# getbrunch <folder>
