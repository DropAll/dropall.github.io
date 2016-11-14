---
layout: post
title: Do not use drugs, use Java
subtitle: Java, Coke and the Narcotics
bigimg: /img/java.gif
---

## Do not use drugs, use Java
Java, Coke and the Narcotics.

#### Configuring JDK on the PATH on Linux (any distro)

Download JDK

x86: 
> wget —no-check-certificate —no-cookies —header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-i586.tar.gz"

x64:
> wget —no-check-certificate —no-cookies —header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz"

#### Config JDK

> \# mkdir /opt/java
> \# tar -xzvf jdk-8u60-linux-i586.tar.gz -C /opt/java

#### Creating symbolic link jdk8
> \# ln -s /opt/java/jdk1.8.0_6/ jdk8

#### Add $JAVA_HOME environment variable in system PATH.
> \# vim /etc/profile

```export JAVA_HOME="/opt/java/jdk8"
export CLASSPATH="$JAVA_HOME/lib":$CLASSPATH
export PATH="$JAVA_HOME/bin":$PATH
export MANPATH="$JAVA_HOME/man":$MANPATH
```

Press ESC :x (To save and exit the Vim editor).

> \#source /etc/profile

Done!