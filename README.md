Demonstration of a bug with making sure things are rebuilt in Stack:

```
$ stack build
(builds both programs)
$ stack exec exe1
Executable 1: 123
$ stack exec exe2
Executable 2: 123
$ (edit lib/MyLib.hs from 123 to 456)
$ stack build exe1
(rebuilds lib and exe1)
$ stack exec exe1
Executable 1: 456
$ stack build
(nothing happens, exe2 should rebuild but does not)
$ stack exec exe2
Executable 2: 123
$ stack build --force-dirty
(rebuilds exe2)
$ stack exec exe2
Executable 2: 456
```
