Super Mario 64 EX Leopard Compiler
By Alex Free

SM64EX is a native Super Mario 64 port derived from the decompilation of Super Mario 64. SM64EXLC is an easy to use, point and click GUI app that compiles my SM64EX fork of the original SM64EX port on PowerPC Mac OS X Leopard into a portable SM64EX.app on your ~/Desktop.

SM64EXLC is like sm64nxBuilder but for PowerPC Mac OS X 10.5.8 instead of Windows!

Homepage || GitHub || Macintosh Garden

Table Of Contents
Download
Install
Usage
Changlog
Bundled Software
License
Downloads
Version 1.0 (3/16/2021)
Mac OS X 10.5.8 PowerPC

All releases

Install
Copy SM64EX.app into the /Applications directory. SM64EXLC.app must be in the /Applications directory to work, you will be prompted to move it there if it is not.

The SM64EX.app SM64EXLC.app creates is however portable and works from anywhere.

Usage
Double click /Applications/SM64EXLC.app. A Finder window will open, allowing you to select your Super Mario 64 N64 .z64 ROM file. This is required to extract the copyrighted game assets. After selecting your rom file, the first choice you will be presented with is what is the region of the ROM you just selected. Only the original Japan and USA .z64 ROM files are supported. After that, select which branch you want to compile. A branch is essentially just a different version of source code, and in the case of the SM64EX port there are pros and cons to both branches.

Master Branch Pros:
Vsync works if you use SDL 2 (another choice available after selecting the desired branch).
Master Branch Cons:
SDL 1.2.15 support is not available.
Native controller support (such as using an Xbox 360 controller driver like the Tattiebogle driver) does not work.
Some graphics issues are present that are already fixed in the Nightly branch.
Nightly Branch Pros:
SDL 1.2.15 is an available choice (after selecting the desired branch).
Native controller support when using SDL 1.2.15 (such as using an Xbox 360 controller driver like the Tattiebogle driver) works if you plug in the controller before launching the game.
Some graphics issues have been fixed and or improved over the Master branch.
Nightly Branch Cons:
Vsync is broken and you will experience screen tearing.
The default option is the Master branch, and that is what I recomend due to the working Vsync when later selecting the SDL2 option. However, if you want to use a controller, select the Nightly branch!

The next option is which SDL version you want to use. Leopard SDL 2.0.6 is my fork of SDL version 2.0.6.

If your using the Master branch and select Leopard SDL 2.0.6 VSYNC will work. If your using the Nightly branch and select SDL 1.2.15 controllers will work. These are the defaults.

After selecting your desired SDL option, you'll be asked what OpenGL version you want to use. The default is OpenGL 1.

OpenGL 1 Pros:
Works on all Leopard PowerPC Macs.
OpenGL 1 Cons:
Some graphics issues are present that are not when using OpenGL 2.
OpenGL 2 Pros:
Less graphics issues then when using OpenGL 1.
Better performance then OpenGL 1.
OpenGL 2 Cons:
Does not work on most PowerPC Macs, you need an OpenGL 2.1 capable GPU.
After that, a Terminal.app window will open and start building SM64EX to your specifications. This will take quite a while, wait for the 'ding' noise and for Terminal to say it's done building SM64EX.app (which will be on your desktop).

Since SM64EX.app is a portable app, the save and config files are contained within the app itself. To access them, start SM64EX.app and select either the Edit Config File or Open Preferences Folder option.

Changelog
v1.0 (3/16/2021) - First release.
Bundled Software
SM64EXLC contains SDL 1.2.15, Leopard SDL 2.0.6, and it's own internal MacPorts/LeopardPorts installation, with all the software except SM64EX itself already compiled (see the list of MacPorts/LeopardPorts software installed below) due to the need of a ROM file to extract the copyrighted game assets.


bzip2 version 1.0.8_0
cctools version 949.0.1_0
db48 version 4.8.30_4+java
expat version 2.2.10_0
gcc7 version 7.5.0_2
gcc_select version 0.1_9
gdbm version 1.19_0
gettext version 0.19.8.1_2
glew version 2.2.0_0
gmake version 4.3_0
gmp version 6.2.1_0
gperf version 3.1_0
i686-w64-mingw32-binutils version 2.36.1_0
i686-w64-mingw32-crt version 8.0.0_0
i686-w64-mingw32-gcc-bootstrap version 10.2.0_0
i686-w64-mingw32-gcc-nothreads version 10.2.0_0
i686-w64-mingw32-headers version 8.0.0_0
isl version 0.22.1_0
ld64 version 3_3+ld64_127
ld64-127 version 127.2_14+llvm33
libedit version 20210216-3.1_0
libffi version 3.3_1
libgcc version 3.0_0
libgcc7 version 7.5.0_0
libiconv version 1.16_1
libmacho-headers version 949.0.1_0
libmpc version 1.2.1_0
libunwind-headers version 5.0.1_0
llvm-3.3 version 3.3_11
llvm_select version 2_0
lzip version 1.22_0
mpfr version 4.1.0_0
ncurses version 6.2_1
openssl version 1.1.1j_0
perl5 version 5.28.3_0+perl5_28
perl5.28 version 5.28.3_1
pkgconfig version 0.29.2_0
python3_select version 0.0_2
python39 version 3.9.2_0
python_select version 0.3_9
readline version 8.1.000_0
sqlite3 version 3.34.1_0
xz version 5.2.5_0
zlib version 1.2.11_0
License
This license is distributed with SM64EXLC, it is only applicable to SM64EXLC itself and not to the SM64EX port or internal MacPorts installation/dependencies.

BSD 3-Clause License

Copyright (c) 2021, Alex Free
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the copyright holder nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
