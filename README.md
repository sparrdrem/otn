# OTN (Old To New) Remote Printing Standard
## "Letting Your Old Devices Print Again!"
### Consider using the Wiki rather than the README

OTN Remote Printing Standard lets your older devices like a PowerMac G3 or a Windows 9x/2000* computer communicate with newer printers. Or, to be more specific, make a newer computer communicate to a printer for it.

* Windows 9x/2000 is not yet supported
## OTN Standard Iterations

### v1.00-release
OTN NetCat as a Telnet server, and is therefor easier to make clients on any platform.
Notice: It is not recommended to print from outside the local network with OTN as it does not have any encryption at all.
<img src="map.png" alt="An Image Of The Network Map For OTN v1.00">

<!-- ### v0.5.0-testing
More revisions before official release...
<img src="map05.png" alt="An Image Of The Network Map For OTN v0.5">

### v0.1.1-testing
An update to OTN that doesn't do much but clean up v0.1.0 which was thrown together in an afternoon.

### v0.1.0-concept
<img src="map.png" alt="An Image Of The Network Map For OTN v0.10 and v0.11">
The first version of OTN! No support for IBM compatibles yet, and basic functionality, but it works!
-->

## How It Works
If you don't want to know and just want to set it up, skip this snd go to "Installation and Usage". Otherwise, read! It's pretty simple!

In this, the old computer will be refered to as the "client" and the modern computer the "server".

The server hosts some scripts that controls all of the server- AND client-side magic. The client connects to the modern PC and inputs information (IP, file name, etc).

### The Client-side Magic
The server consists of 4 main components - the Frontend (what you see when you connect to it), WGET, NetCat for Telnet and, the beating heart of OTN, PDFToPrinter. WGET downloads the PDF from the client and PDFToPrinter prints it, while the frontend wraps it all up into a user-friendly script.

### The Not-As-Cool Server-side Magic
The client only consists of a TelNet client.

## Why I Made This Project
Well, it's a few years before college so I might as well start making some preparations. I decided I will use my PowerMac G3 as my main computer and bring my desktop for gaming and to keep some servers I run operational (oh and to do anything online). Sure, I could just use my desktop, but I just really want to use my PowerMac because I'm weird and like old technology. One thing I know I'll have to do is print documents. However, I realized that it's gonna be hard and expensive to find a printer that has drivers for Mac OS 9.2.2, so I needed a different solution, and that's when I starting making OTN.

## Building
1.) Download and unzip the source code for the OTN Server/Client

2.) Open CMD.exe

3.) Go to the directory that you extracted the source to (Ex: C:\otn-master\source\)

4.) Type in:
                Build.bat /B <buildtag>
    buildtag determines the version number. Be sure it is in the x.x.x format, but never x.x.x-x, x.x.xx, etc.

    Note: you will still have to edit the version number at the OTNClient\otn-client.bat file ("set otn-ver=x.x.x")

## Installation and Usage
### Server Instructions
1.) Download the server files to your modern desktop. It's recommended to put it into its own folder.

2 (Optional).) Press "Win+R" and type in "shell:startup". Make a shortcut of the Frontend and copy the shortcut into the startup. This will make it run on startup.

3.) Start 'otn-server.exe'. Some files will be extracted, but always run it anyway. The server is now running and is ready for a connection!

### PowerMac Instructions
Note: Be sure you have a way to get the computer on the internet (LAN will work). There are many ways to do this because it has built in ethernet.

1.) Download a TelNet client. If you don't know much about computers and/or want to follow a guide, use <a href="https://sourceforge.net/projects/macssh/files/MacSSH%20PPC/2.1fc3/">MacSSH</a> because it has a built-in FTP server. Also download <a href="https://www.macintoshrepository.org/2475-stuffit-expander-and-dropstuff-5-5">Stuffit Expander</a> if you havn't already.

2.) Go to 'File>FTP Users...' and set the username and password to whatever you'd like. Change the home directory of it to your Documents folder.

3.) Connect to the server and follow the on-screen instructions.

### Windows 9x and 2000 Instructions
Note: Be sure you have a way to get the computer on the internet (or LAN).

Coming soon!

&copy; Innovation Inc. <script>new Date().getFullYear()>2017&&document.write(new Date().getFullYear());</script>, &copy; SparrDrem <script>new Date().getFullYear()>2017&&document.write(new Date().getFullYear());</script>
