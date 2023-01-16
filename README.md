
Building projects on following file arrangement:
	project
		build
			raw
				libs.out
				main.out
			out.exe

		lib
			lib1.c
			lib1.h
			
			lib2.c
			lib2.h
			
			...

		src
			main.c

This makefile use two step compilation on the following steps:
- making and merging folders
- dependences compilation (lib folder)
- main compilation (src/main.c)
- building out.exe from 

