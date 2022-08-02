# Vagrant

## Increase Memory And CPU On Vagrant Machine
Add to the `Vagrantfile`

```shell
config.vm.provider "virtualbox" do |v|
  v.memory = 2048
  v.cpus = 2
end
```

[Source](https://ostechnix.com/how-to-increase-memory-and-cpu-on-vagrant-machine/)
