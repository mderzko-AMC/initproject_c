# Init makefile code


Building projects on following file arrangement:

```
project/
├─ lib/
│  ├─ testlib1.c
│  ├─ testlib1.h
├─ test/
│  ├─ test.py
├─ build/
│  ├─ raw/
│  │  ├─ libs.out
│  │  ├─ main.out
│  ├─ out.exe
├─ main.c
├─ makefile
```

This makefile use two step compilation on the following steps:
- making and merging folders
- dependences compilation (lib folder)
- main compilation (main.c)
- building out.exe from libs.out and main.out

For running program type `make` in command prompt.


## Output
```
PS C:\Users\mderzko\Desktop\projekty\initproject_c> make 
find 1 files on lib folder
compile... 
====== Run! ====== 
hello test
Len of string "one two tree..." is 15
```

