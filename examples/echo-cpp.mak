# Microsoft Developer Studio Generated NMAKE File, Based on echo-cpp.dsp
!IF "$(CFG)" == ""
CFG=release
!ENDIF 

!IF "$(CFG)" != "release" && "$(CFG)" != "debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "echo-cpp.mak" CFG="debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "release"

OUTDIR=.\..\examples\echo-cpp\Release
INTDIR=.\..\examples\echo-cpp\Release
# Begin Custom Macros
OutDir=.\..\examples\echo-cpp\Release
# End Custom Macros

ALL : "$(OUTDIR)\echo-cpp.exe"


CLEAN :
	-@erase "$(INTDIR)\echo-cpp.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\echo-cpp.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Gi /O2 /Ob2 /I "..\include" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "HAVE_IOSTREAM_WITHASSIGN_STREAMBUF" /Fp"$(INTDIR)\echo-cpp.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\echo-cpp.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=libfcgi.lib /nologo /pdb:none /machine:IX86 /out:"$(OUTDIR)\echo-cpp.exe" /libpath:"..\libfcgi\Release" 
LINK32_OBJS= \
	"$(INTDIR)\echo-cpp.obj"

"$(OUTDIR)\echo-cpp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "debug"

OUTDIR=.\../examples/echo-cpp\Debug
INTDIR=.\../examples/echo-cpp\Debug
# Begin Custom Macros
OutDir=.\../examples/echo-cpp\Debug
# End Custom Macros

ALL : "$(OUTDIR)\echo-cpp.exe" "$(OUTDIR)\echo-cpp.bsc"


CLEAN :
	-@erase "$(INTDIR)\echo-cpp.obj"
	-@erase "$(INTDIR)\echo-cpp.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\echo-cpp.bsc"
	-@erase "$(OUTDIR)\echo-cpp.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W4 /Gm /Gi /ZI /Od /I "..\include" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "HAVE_IOSTREAM_WITHASSIGN_STREAMBUF" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\echo-cpp.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\echo-cpp.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\echo-cpp.sbr"

"$(OUTDIR)\echo-cpp.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=libfcgi.lib /nologo /profile /debug /machine:IX86 /out:"$(OUTDIR)\echo-cpp.exe" /libpath:"..\libfcgi\Debug" 
LINK32_OBJS= \
	"$(INTDIR)\echo-cpp.obj"

"$(OUTDIR)\echo-cpp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


"..\examples\echo-cpp.cpp" : \
	"..\include\fcgiapp.h"\
	"..\include\fcgio.h"\


!IF "$(CFG)" == "release" || "$(CFG)" == "debug"
SOURCE="..\examples\echo-cpp.cpp"

!IF  "$(CFG)" == "release"


"$(INTDIR)\echo-cpp.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "debug"


"$(INTDIR)\echo-cpp.obj"	"$(INTDIR)\echo-cpp.sbr" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

