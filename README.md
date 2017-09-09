# nwabap751
Dockerfile for ABAP Developer Edition 7.51 SP02

Based on https://bitbucket.org/gregorwolf/dockernwabap750

## Installation

`docker build -t nwabap751 .`

`docker run -p 8000:8000 -p 44300:44300 -p 3300:3300 -p 3200:3200 -h vhcalnplci --name nwabap751 -it nwabap751 /bin/bash`

`/tmp/install.sh`

License key: https://go.support.sap.com/minisap/

## Notes
Docker detach: CTRL + P Q

Docker attach: `docker attach nwabap751`

Start SAP:
* `su npladm`
* `startsap`

Copy files into container:
`docker cp .\sap_netweaver_as_abap_751_sp02_ase_dev_edition.part01.rar nwabap751:/tmp/`
