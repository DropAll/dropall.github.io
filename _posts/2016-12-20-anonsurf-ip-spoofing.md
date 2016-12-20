---
layout: post
title: Anonsurf IP spoofing
subtitle: Browse anonymously in Kali Linux with Anonsurf
bigimg: /img/anonymous.gif
---

# Anonsurf IP spoofing
Browse anonymously in Kali Linux with Anonsurf


## Anonsurf

Anonsurf will anonymize the entire system under TOR using IPTables. It will also allow you to start and stop i2p as well.

## Download Anonsurf

Clone anonsurf from GIT

```
root@kali:~# git clone https://github.com/Und3rf10w/kali-anonsurf.git
Cloning into 'kali-anonsurf'...
remote: Counting objects: 275, done.
remote: Total 275 (delta 0), reused 0 (delta 0), pack-reused 275
Receiving objects: 100% (275/275), 163.44 KiB | 75.00 KiB/s, done.
Resolving deltas: 100% (79/79), done.
Checking connectivity... done.
root@kali:~#
```

It also changes your resolver configuration to the following:

```
root@kali:~# cat /etc/resolv.conf
nameserver 127.0.0.1
nameserver 209.222.18.222
nameserver 209.222.18.218
```

If you don’t like using [Private Internet Access DNS](https://www.blackmoreops.com/2015/03/01/setup-vpn-on-kali-linux), simply the change DNS in the following lines in `/etc/init.d/anonsurf` script:

```
echo -e 'nameserver 127.0.0.1\nnameserver 209.222.18.222\nnameserver 209.222.18.218' > /etc/resolv.conf
echo -e " $GREEN*$BLUE Modified resolv.conf to use Tor and Private Internet Access DNS"
```

## Start anonsurf

```
root@kali:~# anonsurf start
* killing dangerous applications
* cleaning some dangerous cache elements
[ i ] Stopping IPv6 services:
[ i ] Starting anonymous mode:
* Tor is not running! starting it for you
* Saved iptables rules
* Modified resolv.conf to use Tor and Private Internet Access DNS
* All traffic was redirected throught Tor
[ i ] You are under AnonSurf tunnel
root@kali:~#
```
## Find your new Public IP

```
root@kali:~# anonsurf myip
My ip is:
1xx.1xx.2xx.1xx
```
 
## Restart anonsurf

```
root@kali:~# anonsurf restart
* killing dangerous applications
* cleaning some dangerous cache elements
 [ i ] Stopping anonymous mode:
* Deleted all iptables rules
* Iptables rules restored
 [ i ] Reenabling IPv6 services:
* Anonymous mode stopped
* killing dangerous applications
* cleaning some dangerous cache elements
 [ i ] Stopping IPv6 services:
 [ i ] Starting anonymous mode:
* Tor is not running! starting it for you
* Saved iptables rules
* Modified resolv.conf to use Tor and Private Internet Access DNS
* All traffic was redirected throught Tor
 [ i ] You are under AnonSurf tunnel

```

## Stop anonsurf
```
root@kali:~# anonsurf stop
 * killing dangerous applications
 * cleaning some dangerous cache elements
[ i ] Stopping anonymous mode:
 * Deleted all iptables rules
 * Iptables rules restored
[ i ] Reenabling IPv6 services:
 * Anonymous mode stopped
```

## Testing anonymity

The not so obvious thing people doesn’t check is if they are leaking DNS. I usually do it from [http://dnsleak.com/](http://dnsleak.com/) as shown on my post from setting up VPN. However, I did not get any results back, so I used [https://www.perfect-privacy.com/](https://www.perfect-privacy.com/dns-leaktest/) and [https://torguard.net/](https://torguard.net/vpn-dns-leak-test.php) and they seems to think I am in Netherlands or Belgium … so all good.

You can also check if you’re leaking IPv6 in here: [http://ipv6leak.com/](http://ipv6leak.com/).

**Font:** [blackMORE Ops](https://www.blackmoreops.com/2016/10/17/browse-anonymously-in-kali-linux-with-anonsurf/)