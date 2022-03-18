# password-encrypted 7zip archives
the intent of this project is to create a secure way to store emergency documents in a way that only requires knowledge of the password. 
all tools required to access the data are included. 
instructions should be easy enough to follow that non-technical individuals can follow them. 

## folder layout
```
my_secure_zip_file_02012022
|   instructions.txt
|   my_secure_zip_file.7z
└-- tools
    └-- macos
        | <various files>
    └-- windows
        | <various files>
```

## using 7zip
This directory contains the stand-alone version of 7zip, a tool for compressing files. 
"Stand-alone" simply means it doesn't need to be installed to be used. 
If the stand-alone version is not working for some reason, try installing it locally using the included installers. 
On `macOS`, you may need to ensure the executable has the correct file permissions. 
```bash
$ chmod 755 /path/to/folder/tools/macOS/7za 
```

### windows
1. double click `extract.bat`

### macOS 
1. right click and unzip the outer archive (or double click it). EG: `my_secure_zip_file.7z` -- this would create a folder named `my_secure_zip_file`.
3. open terminal.app
4. `cd` ("change directory") into outer directory, EG:  `cd ~/Downloads/my_secure_zip_file`
5. type `chmod +x tools/macOS/7za && tools/macOS/7za x my_secure_zip_file.7z` and hit enter.

### installation instructions
* On windows, double-click the exe and follow the instructions.
* On macOS, install the Keka application from the .dmg.
* On other operating systems (I guess linux?), you'll have to find your own installers for `p7zip` from https://www.7-zip.org/

## extraction instructions
Open the .7z file using 7zip and provide the password to gain access to the encrypted files.

From cmd:
```bash
$ 7z x <archive>
```

## creation instructions
From a command line: 
```bash
7z a \         # add to archive
   -t7z \      # use 7z extension
   -m0=lzma2 \ # use lzma2 method
   -mx=9 \     # Use the '9' level of compression = Ultra
   -mfb=64 \   # Use number of fast bytes for LZMA = 64
   -md=32m     # Use a dictionary size = 32 megabytes
   -ms=on \    # Solid archive = on
   -mhe=on \   # enables archive header encryption (7z format only)
   -p \        # use a password (provide via prompt)
   <archive>   # desired output file name (should end with ".7z") 
   <directory> # directory containing info files
```

example usage:
```bash
$ 7z a -t7z -m0=lzma2 -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p MY_FILE.7z /path/to/my/folder
```
     
list contents:
```bash
$ 7z l <archive>
```

extract all contents:
```bash
$ 7z x <archive>
```
