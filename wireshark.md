# Wireshark

## Error exporting long data
```shell
tshark -r trace1.pcap -Tfields -e frame.number -e ip.src -e ip.dst -e data.data > output.txt
```

[Source](https://osqa-ask.wireshark.org/questions/35468/export-packet-data-to-csv/)

## Group add (Arch)
```shell
sudo gpasswd -a $USER wireshark
```
