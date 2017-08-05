@echo off
cd %0\..\
echo Recompiling...
cd ../c
c_compiler\bin\g++ -s -Wfatal-errors -w -Wall qbx2.cpp  libqb\os\win\libqb_1_1_1000010000100.o  -D DEPENDENCY_IMAGE_CODEC -D DEPENDENCY_NO_SOCKETS -D DEPENDENCY_NO_PRINTER -D DEPENDENCY_ICON -D DEPENDENCY_NO_SCREENIMAGE -D DEPENDENCY_LOADFONT  parts\video\font\ttf\os\win\src.o   parts\core\os\win\src.a -lopengl32 -lglu32   -mwindows -static-libgcc -static-libstdc++ -D GLEW_STATIC -D FREEGLUT_STATIC     -lwinmm -lgdi32 -o "..\..\Zinc.exe"
pause
