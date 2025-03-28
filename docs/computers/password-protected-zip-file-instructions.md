# Password-encrypted secrets
This directory contains encrypted secrets.
The secrets are stored in a password-protected zip file.
That means even if some one finds this jump drive, they would still need the password to unlock it.

This makes it a pretty good way to store images of travel documents.
Those are things you want to bring with you, but don't want to necessarily leave lying around in the open or risk losing.

This tool uses "7zip" files (with the `7z` extension).
`.7z` are not just regular zip files, you'll need a special tool to open them.
All tools required to access the data are included.

The folder layout looks like this:
```
secrets_folder
|   README.md (a copy of this file)
|   secrets.7z (the encrypted secrets)
|   extract.sh (the macOS script)
|   extract.bat (the windows script)
└-- tools
    └-- macos
        | <various files>
    └-- windows
        | <various files>
```


### Included tools
The `tools` directory should contain all the tools you need to get into the 7zip files.
If the included version is not working for some reason, try installing 7zip locally using the included installers.

### 7zip installation instructions
* On windows, double-click the exe and follow the instructions.
* On macOS, install the Keka application from the .dmg.
* On other operating systems, you'll have to find your own installers for `p7zip` from https://www.7-zip.org/

## Extraction
For these examples, we'll assume that the top-level directory is called `secrets_folder` (like in the diagram above) and that the 7zip file is named "secrets.7z".
If the files or folder look like they're named differently, use whatever names you see in the below scripts.

### windows
1. double click `extract.bat` file

### macOS
1. double click the `extract.sh` file
3. open terminal.app
4. type `cd /path/to/secrets_folder && chmod +x tools/macOS/7za && tools/macOS/7za x secrets.7z`
6. hit enter.

## Creating the secrets.7zip
You'll want to create a folder structure just like the one described at the top.

### Steps
1. Create folder to contain your secrets. For this example, we'll assume it's named `secrets_folder` and it's on the `c:` drive. It's aboslute path is then `c:\secrets_folder`.
2. Fill your folder with secrets
3. Make sure 7zip is installed.
4. When you're ready to seal it:
  * from a windows command line, run `create.bat c:\secrets_folder secrets.7z` and enter a password
  * otherwise `$ 7z a -t7z -m0=lzma2 -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p secrets.7z /path/to/secrets_folder`
5. This will create a file named `secrets.7z` with the encrypted contents of `c:/secrets_folder`.
6. Do not include the unencrypted `c:/secrets_folder` in your emergency jump drive.

### Other helpful commands
What do all those options do?
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

list contents:
```bash
$ 7z l <archive>
```

extract all contents:
```bash
$ 7z x <archive>
```
