# http_code
Requires parallel gnu
INSTALLATION osx
### brew install parallel

###  DEMO from my vps
```
[ec2-user@ip-172-31-45-xx http_code]$ time ./curl.sh url.txt
##########################################
# Http response with multi               #
# threads support via Curl/parallels.    #
# by ak1t4 https://twitter.com/ak1t4_zen #
##########################################
requires: parallel gnu
Now just run:
./curl.sh yours-urls.txt
(output is over 'cat urlstatus.txt')

564 urlstatus.txt

real	0m29.106s
user	0m18.920s
sys	0m7.236s
```
### 564 urls parsed in 0m29.106secs.

   [![asciicast](https://asciinema.org/a/mffMvi6pBF3z1dWjiNoq132Wj.svg)](https://asciinema.org/a/mffMvi6pBF3z1dWjiNoq132Wj)
