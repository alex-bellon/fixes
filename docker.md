# Docker

## Cannot connect to the Docker daemon at unix:///var/run/docker.sock
`sudo systemctl start docker`

## `dial unix /var/run/docker.sock: connect: permission denied`
- `sudo chmod 666 /var/run/docker.sock`

[Source](https://www.digitalocean.com/community/questions/how-to-fix-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket)

## Install (Ubuntu)
```shell

sudo apt-get update

sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io
```

## Testing Locally

1. `sudo systemctl start docker`
2. `sudo docker-compose up --build`
3. `nc localhost <PORT>`
