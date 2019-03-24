PREFIX = $(TOPDIR)/toolchain

CC = $(PREFIX)/bin/vc
AS = $(PREFIX)/bin/vasm
LD = $(PREFIX)/bin/vlink

ASFLAGS = -m68010 -quiet \
	  -I$(TOPDIR)/toolchain/m68k-amigaos/include
CFLAGS = -c99 -cpu=68010 -O3 -size # -warn=-1 -dontwarn=307
CPPFLAGS = -I$(TOPDIR)/FreeRTOS/portable/VBCC/m68k \
	   -I$(TOPDIR)/include \
	   -I$(TOPDIR)
LDFLAGS = -S -x

include $(TOPDIR)/build/compile.mk
include $(TOPDIR)/build/common.mk
