# Init makefile code

Building projects on following file arrangement:

```
project/
├── lib/
│   ├── lib1.c
│   ├── lib1.h
│   ├── lib2.c
│   ├── lib2.h
│   └── ...
├── test/
│   └─ test.py
├── build/
│   ├── raw/
│   │   ├── libs.out
│   │   └── main.out
│   └── out.exe
├── main.c
└── makefile
```

This makefile use two step compilation on the following steps:
- making and merging folders
- dependences compilation (lib folder)
- main compilation (main.c)
- building out.exe from libs.out and main.out

For running program type `make` in command prompt.


## Output
```
PS C:\Path\to\project> make 
find 1 files on lib folder
compile... 
====== Run! ====== 
hello test
Len of string "one two tree..." is 15
```

