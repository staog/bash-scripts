# Removing Mono and Orca

After fresh install of your new OS (in my case: Linux Mint 19.2 - Tina) it is wise to remove Mono and Orca.
Mono is present by default in Linux Mint and it will be installed automatically whenever you install an application that needs the Mono infrastructure, like media player Banshee and notes app Tomboy.
This package is a security risk, because it's an implementation of Microsoft's .NET. 
That's cross-platform, which means it works in many operating systems (including Windows).
That Mono infrastructure could potentially be abused by specially crafted cross-platform malware and viruses.
Linux Mint contains screen reader Orca (gnome-orca) by default. It can be really helpful when you're visually handicapped. But it is useless when you're not.

# Installing NodeJS, npm, Audacious and VLC

Audacious is an open source audio player. A descendant of XMMS, Audacious plays your music how you want it, without stealing away your computer’s resources from other tasks.
If you ask me, it is by far the best music player in Linux world. It's not bloated, quite simple and yet super great.
VLC is a free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVDs, Audio CDs, VCDs, and various streaming protocols.
I think there is no such file that VLC can't open.
