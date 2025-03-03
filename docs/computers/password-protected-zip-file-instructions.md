# how to create password-encrypted 7zip archives
This is a way to securely store emergency documents.
All tools required to access the data are included.

## tools are included
The `tools` directory contains the stand-alone version of 7zip, a tool for compressing files.
"Stand-alone" simply means it can run from the folder where you find it -- it doesn't need to be installed to be used.

## extraction instructions
Open the .7z file using 7zip and provide the password to gain access to the encrypted files.

From cmd:
```bash
$ 7z x <archive>
```

### windows
1. double click `extract.bat`

### macOS (Apple)
1. right click and unzip the outer archive (or double click it). EG: `my_secure_zip_file.7z` -- this would create a folder named `my_secure_zip_file`.
3. open terminal.app
4. `cd` ("change directory") into outer directory, EG:  `cd ~/Downloads/my_secure_zip_file`
5. type `chmod +x tools/macOS/7za && tools/macOS/7za x my_secure_zip_file.7z` and hit enter.

## zip file creation instructions
Your final payload should be a folder that looks like this.

```
your-secrets-bundle
|   README.md (a copy of this file)
|   secrets.7z (the actual secrets)
|   extract.sh (the macOS script)
|   extract.bat (the windows script)
└-- tools
    └-- macos
        | <various files>
    └-- windows
        | <various files>
```

You'll create the secrets archive with 7zip.

7zip options:
```bash
7z a \         # add to archive
   -t7z \      # use 7z extension
   -m0=lzma2 \ # use lzma2 method
   -mx=9 \     # Use the '9' level of compression = Ultra
   -mfb=64 \   # Use number of fast bytes for LZMA = 64
   -md=32m     # Use a dictionary size = 32 megabytes
   -ms=on \    # Solid archive = on
   -mhe=on \   # enables archive header encryption (7z format only)
   -p \        # use a password (this will ask you to provide a password via prompt)
   <archive>   # desired output file name (should end with ".7z")
   <directory> # directory containing files to archive
```

example usage:
```bash
$ 7z a -t7z -m0=lzma2 -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p secrets.7z /path/to/my/folder_containing_secrets
```

list contents:
```bash
$ 7z l <archive>
```

extract all contents:
```bash
$ 7z x <archive>
```


## what if the included tools don't work?
If the included tools are not working for some reason, try installing them locally using the included installers.

### Windows
double-click the `.exe` and follow the instructions.

### macOS (Apple)
install the Keka application from the `.dmg`.

### Other operating systems
These are not included.
If the included installers do not work, you'll have to find your own installers for `p7zip` from https://www.7-zip.org/