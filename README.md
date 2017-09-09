# nwabap751
Dockerfile for ABAP Developer Edition 7.51 SP02

Based on https://bitbucket.org/gregorwolf/dockernwabap750

## Installation

`docker build -t nwabap .`

`docker run -p 8000:8000 -p 44300:44300 -p 3300:3300 -p 3200:3200 -h vhcalnplci --name nwabap751 -it nwabap /bin/bash`

`/tmp/install.sh`

License key: https://go.support.sap.com/minisap/

## Notes
Docker detach: CTRL + P Q

Docker attach: `docker attach nwabap751`

Start SAP:
* `su npladm`
* `startsap`
