#!/bin/bash

echo "##########################################"
echo "# Http response with multi               #"
echo "# threads support via Curl/parallels.    #"
echo "# by ak1t4 https://twitter.com/ak1t4_zen #"
echo "##########################################"

echo "requires: parallel gnu"
echo "installing.. (osx)"
brew install parallel
echo "Now just run:"
echo "./curl.sh yours-urls.txt"
echo "(output is over 'cat urlstatus.txt')"
echo ""

doit() {
    url="$1"
    urlstatus=$(curl -o /dev/null --insecure --silent --head --write-out  '%{http_code}' "${url}" --max-time 5 ) &&
    echo "$url  $urlstatus"
}
export -f doit
salida=(`parallel  -j200 doit :::: $1 >> urlstatus.txt`) > /dev/null
