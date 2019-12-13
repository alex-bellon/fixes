# `cut` versus `dd`

Why do
```
$ dd if=a.out of=a.cut1 bs=1 skip=16
```
and
```
$ cut --bytes=16- a.out > a.cut2
```
give different outputs?

`cut` will skip the first 16 bytes *from each line* whereas `dd` doesn't care about lines and skips just the first 16 bytes from the whole file.

If the file contains newlines - which is perfectly valid for binary files - then `cut` will yield a different result than `dd`.

[Source](https://stackoverflow.com/questions/29381522/different-results-with-cut-and-dd-on-binary-files)
