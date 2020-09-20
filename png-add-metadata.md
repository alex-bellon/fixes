# Add metadata to PNG

```shell
convert IN.png \
        -set 'Copyright' 'CC-BY-SA 4.0' \
        -set 'Title' 'A wonderful day' \
        -set comment 'Photo taken while running' \
        OUT.png
```

[Source](https://stackoverflow.com/questions/9036152/insert-a-text-chunk-into-a-png-image/23180764#23180764)
