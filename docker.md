# Docker

## Cannot connect to the Docker daemon at unix:///var/run/docker.sock
`sudo systemctl start docker`

## `dial unix /var/run/docker.sock: connect: permission denied`
- `sudo chmod 666 /var/run/docker.sock`

[Source](https://www.digitalocean.com/community/questions/how-to-fix-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket)

## Testing Locally

1. `sudo systemctl start docker`
2. `sudo docker-compose up --build`
3. `nc localhost <PORT>`
