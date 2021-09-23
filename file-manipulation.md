# File Manipulation

## Images

### Add metadata to PNG

```shell
convert IN.png \
        -set 'Copyright' 'CC-BY-SA 4.0' \
        -set 'Title' 'A wonderful day' \
        -set comment 'Photo taken while running' \
        OUT.png
```

[Source](https://stackoverflow.com/questions/9036152/insert-a-text-chunk-into-a-png-image/23180764#23180764)


### Mirror images

Convert uses `-flop` for horizontal mirroring, and `-flip` for vertical

```shell
convert -flop input.png output.png
```

[Source](https://askubuntu.com/questions/1052899/how-to-mirror-image-files-via-command-line)
