---
layout: post
title: Get Public IP From Linux Terminal
subtitle: curl, wget, host, bash
bigimg: /img/getpublicip.gif
---

# Get Public IP From Linux Terminal
curl, wget, host, bash


## Curl output in plain text format:

```
curl icanhazip.com
curl ifconfig.me
curl curlmyip.com
curl ip.appspot.com
curl ipinfo.io/ip
curl ipecho.net/plain
curl www.trackip.net/i
```

## Curl output in JSON format:

```
curl ipinfo.io/json
curl ifconfig.me/all.json
curl www.trackip.net/ip?json (bit ugly)
```

## Curl output in XML format:

```
curl ifconfig.me/all.xml
```

## Curl all IP details – The motherload

```
curl ifconfig.me/all
```
   
## Using DYNDNS (Useful when you’re using DYNDNS service)

```
curl -s 'http://checkip.dyndns.org' | sed 's/.*Current IP Address: \([0-9\.]*\).*/\1/g' 
curl -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+"
```
   
## Using wget instead of curl

```
wget http://ipecho.net/plain -O - -q ; echo
wget http://observebox.com/ip -O - -q ; echo
```

## Using host and dig command (cause we can)
```
host -t a dartsclink.com | sed 's/.*has address //'
dig +short myip.opendns.com @resolver1.opendns.com
```

## Sample bash script:
```
#!/bin/bash

PUBLIC_IP=`wget http://ipecho.net/plain -O - -q ; echo`
echo $PUBLIC_IP
```