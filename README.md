## layer\[2\] SoC

### Components

The following components are implemented and tested on silicon:

- MIPS I(tm) CPU @ 50MHz
- Intel StratFlash
- PS/2 Keyboard
- 100x37 8-Color Text-VGA
- 19200/8N1 RS-232 Receiver/Transmitter
- 512 MBit DDR Ram

![void Bootloader](/img/1342461930) ![Tennmino](/img/1342461944)
The picture to the left shows the start-up screen. With "void Bootloader" you can upload program images to the flash and run then on the DDR.
An example program is "Tennmino" a tetris clone for layer\[2\].

## Acknowledgement

### General Notice

Every component consists of an implementation and an interface file i\*.vhd where I credited (hopefully) all resources.

### Reference Projects on OpenCores

I learned alot from the projects available on OpenCores. I'd like to list all the projects I consulted the most:

- [Plasma - most MIPS I(TM) opcodes](http://opencores.org/project,plasma)
- [Z80 System on Chip](http://opencores.org/project,z80soc)
- [Yet Another VGA](http://opencores.org/project,yavga)
- [Scratch DDR SDRAM Controller](http://opencores.org/project,sdram_controller)

## Legal Notice

Copyright (C)2012 Mathias Hörtnagl
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program. If not, see [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

## Disclaimer

MIPS(R) is a registered trademark and MIPS I(TM) is a trademark of MIPS Technologies, Inc. in the United States and other countries. MIPS Technologies, Inc. does not endorse and is not associated with this project. OpenCores and Mathias Hörtnagl are not affiliated in any way with MIPS Technologies, Inc.
