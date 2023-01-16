Building projects on following file arrangement:

project
	ests
		test.py

	lib

		lib1.c
		lib1.h
		
		lib2.c
		lib2.h
		
		...

	build
		out.exe
	
		raw
			libs.out
			main.out

	main.c

This makefile use two step compilation on the following steps:
- making and merging folders
- dependences compilation (lib folder)
- main compilation (main.c)
- building out.exe from 
