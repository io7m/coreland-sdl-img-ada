# auto generated - do not edit

default: all

all:\
ctxt/bindir.o ctxt/ctxt.a ctxt/dlibdir.o ctxt/incdir.o ctxt/repos.o \
ctxt/slibdir.o ctxt/version.o deinstaller deinstaller.o install-core.o \
install-error.o install-posix.o install-win32.o install.a installer installer.o \
instchk instchk.o insthier.o sdl-image.ali sdl-image.o sdl-img-ada-conf \
sdl-img-ada-conf.o sdl-img-ada.a

# Mkf-deinstall
deinstall: deinstaller conf-sosuffix
	./deinstaller
deinstall-dryrun: deinstaller conf-sosuffix
	./deinstaller dryrun

# Mkf-install
install: installer postinstall conf-sosuffix
	./installer
	./postinstall

install-dryrun: installer conf-sosuffix
	./installer dryrun

# Mkf-instchk
install-check: instchk conf-sosuffix
	./instchk

# -- SYSDEPS start
flags-sdl-ada:
	@echo SYSDEPS sdl-ada-flags run create flags-sdl-ada 
	@(cd SYSDEPS/modules/sdl-ada-flags && ./run)
libs-sdl-ada-S:
	@echo SYSDEPS sdl-ada-libs-S run create libs-sdl-ada-S 
	@(cd SYSDEPS/modules/sdl-ada-libs-S && ./run)


sdl-ada-flags_clean:
	@echo SYSDEPS sdl-ada-flags clean flags-sdl-ada 
	@(cd SYSDEPS/modules/sdl-ada-flags && ./clean)
sdl-ada-libs-S_clean:
	@echo SYSDEPS sdl-ada-libs-S clean libs-sdl-ada-S 
	@(cd SYSDEPS/modules/sdl-ada-libs-S && ./clean)


sysdeps_clean:\
sdl-ada-flags_clean \
sdl-ada-libs-S_clean \


# -- SYSDEPS end


ada-bind:\
conf-adabind conf-systype conf-adatype conf-adafflist flags-sdl-ada

ada-compile:\
conf-adacomp conf-adatype conf-systype conf-adacflags conf-adafflist \
	flags-sdl-ada

ada-link:\
conf-adalink conf-adatype conf-systype conf-aldfflist libs-sdl-ada-S

ada-srcmap:\
conf-adacomp conf-adatype conf-systype

ada-srcmap-all:\
ada-srcmap conf-adacomp conf-adatype conf-systype

cc-compile:\
conf-cc conf-cctype conf-systype conf-cflags

cc-link:\
conf-ld conf-ldtype conf-systype conf-ldflags

cc-slib:\
conf-systype

conf-adatype:\
mk-adatype
	./mk-adatype > conf-adatype.tmp && mv conf-adatype.tmp conf-adatype

conf-cctype:\
conf-cc mk-cctype
	./mk-cctype > conf-cctype.tmp && mv conf-cctype.tmp conf-cctype

conf-ldtype:\
conf-ld mk-ldtype
	./mk-ldtype > conf-ldtype.tmp && mv conf-ldtype.tmp conf-ldtype

conf-sosuffix:\
mk-sosuffix
	./mk-sosuffix > conf-sosuffix.tmp && mv conf-sosuffix.tmp conf-sosuffix

conf-systype:\
mk-systype
	./mk-systype > conf-systype.tmp && mv conf-systype.tmp conf-systype

# ctxt/bindir.c.mff
ctxt/bindir.c: mk-ctxt conf-bindir
	rm -f ctxt/bindir.c
	./mk-ctxt ctxt_bindir < conf-bindir > ctxt/bindir.c

ctxt/bindir.o:\
cc-compile ctxt/bindir.c
	./cc-compile ctxt/bindir.c

ctxt/ctxt.a:\
cc-slib ctxt/ctxt.sld ctxt/bindir.o ctxt/dlibdir.o ctxt/incdir.o ctxt/repos.o \
ctxt/slibdir.o ctxt/version.o
	./cc-slib ctxt/ctxt ctxt/bindir.o ctxt/dlibdir.o ctxt/incdir.o ctxt/repos.o \
	ctxt/slibdir.o ctxt/version.o

# ctxt/dlibdir.c.mff
ctxt/dlibdir.c: mk-ctxt conf-dlibdir
	rm -f ctxt/dlibdir.c
	./mk-ctxt ctxt_dlibdir < conf-dlibdir > ctxt/dlibdir.c

ctxt/dlibdir.o:\
cc-compile ctxt/dlibdir.c
	./cc-compile ctxt/dlibdir.c

# ctxt/incdir.c.mff
ctxt/incdir.c: mk-ctxt conf-incdir
	rm -f ctxt/incdir.c
	./mk-ctxt ctxt_incdir < conf-incdir > ctxt/incdir.c

ctxt/incdir.o:\
cc-compile ctxt/incdir.c
	./cc-compile ctxt/incdir.c

# ctxt/repos.c.mff
ctxt/repos.c: mk-ctxt conf-repos
	rm -f ctxt/repos.c
	./mk-ctxt ctxt_repos < conf-repos > ctxt/repos.c

ctxt/repos.o:\
cc-compile ctxt/repos.c
	./cc-compile ctxt/repos.c

# ctxt/slibdir.c.mff
ctxt/slibdir.c: mk-ctxt conf-slibdir
	rm -f ctxt/slibdir.c
	./mk-ctxt ctxt_slibdir < conf-slibdir > ctxt/slibdir.c

ctxt/slibdir.o:\
cc-compile ctxt/slibdir.c
	./cc-compile ctxt/slibdir.c

# ctxt/version.c.mff
ctxt/version.c: mk-ctxt VERSION
	rm -f ctxt/version.c
	./mk-ctxt ctxt_version < VERSION > ctxt/version.c

ctxt/version.o:\
cc-compile ctxt/version.c
	./cc-compile ctxt/version.c

deinstaller:\
cc-link deinstaller.ld deinstaller.o insthier.o install.a ctxt/ctxt.a
	./cc-link deinstaller deinstaller.o insthier.o install.a ctxt/ctxt.a

deinstaller.o:\
cc-compile deinstaller.c install.h
	./cc-compile deinstaller.c

install-core.o:\
cc-compile install-core.c install.h
	./cc-compile install-core.c

install-error.o:\
cc-compile install-error.c install.h
	./cc-compile install-error.c

install-posix.o:\
cc-compile install-posix.c install.h
	./cc-compile install-posix.c

install-win32.o:\
cc-compile install-win32.c install.h
	./cc-compile install-win32.c

install.a:\
cc-slib install.sld install-core.o install-posix.o install-win32.o \
install-error.o
	./cc-slib install install-core.o install-posix.o install-win32.o \
	install-error.o

install.h:\
install_os.h

installer:\
cc-link installer.ld installer.o insthier.o install.a ctxt/ctxt.a
	./cc-link installer installer.o insthier.o install.a ctxt/ctxt.a

installer.o:\
cc-compile installer.c install.h
	./cc-compile installer.c

instchk:\
cc-link instchk.ld instchk.o insthier.o install.a ctxt/ctxt.a
	./cc-link instchk instchk.o insthier.o install.a ctxt/ctxt.a

instchk.o:\
cc-compile instchk.c install.h
	./cc-compile instchk.c

insthier.o:\
cc-compile insthier.c ctxt.h install.h
	./cc-compile insthier.c

mk-adatype:\
conf-adacomp conf-systype

mk-cctype:\
conf-cc conf-systype

mk-ctxt:\
mk-mk-ctxt
	./mk-mk-ctxt

mk-ldtype:\
conf-ld conf-systype conf-cctype

mk-mk-ctxt:\
conf-cc conf-ld

mk-sosuffix:\
conf-systype

mk-systype:\
conf-cc conf-ld

sdl-image.ali:\
ada-compile sdl-image.adb
	./ada-compile sdl-image.adb

sdl-image.o:\
sdl-image.ali

sdl-img-ada-conf:\
cc-link sdl-img-ada-conf.ld sdl-img-ada-conf.o ctxt/ctxt.a
	./cc-link sdl-img-ada-conf sdl-img-ada-conf.o ctxt/ctxt.a

sdl-img-ada-conf.o:\
cc-compile sdl-img-ada-conf.c ctxt.h
	./cc-compile sdl-img-ada-conf.c

sdl-img-ada.a:\
cc-slib sdl-img-ada.sld sdl-image.o
	./cc-slib sdl-img-ada sdl-image.o

clean-all: sysdeps_clean obj_clean ext_clean
clean: obj_clean
obj_clean:
	rm -f ctxt/bindir.c ctxt/bindir.o ctxt/ctxt.a ctxt/dlibdir.c ctxt/dlibdir.o \
	ctxt/incdir.c ctxt/incdir.o ctxt/repos.c ctxt/repos.o ctxt/slibdir.c \
	ctxt/slibdir.o ctxt/version.c ctxt/version.o deinstaller deinstaller.o \
	install-core.o install-error.o install-posix.o install-win32.o install.a \
	installer installer.o instchk instchk.o insthier.o sdl-image.ali sdl-image.o \
	sdl-img-ada-conf sdl-img-ada-conf.o sdl-img-ada.a
ext_clean:
	rm -f conf-adatype conf-cctype conf-ldtype conf-sosuffix conf-systype mk-ctxt

regen:\
ada-srcmap ada-srcmap-all
	./ada-srcmap-all
	cpj-genmk > Makefile.tmp && mv Makefile.tmp Makefile
