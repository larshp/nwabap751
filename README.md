# nwabap751
Dockerfile for ABAP Developer Edition 7.51 SP02

Download via https://tools.hana.ondemand.com/#abap

Based on https://bitbucket.org/gregorwolf/dockernwabap750

## Installation

Create folder 'sapdownloads' and copy all .rar installation files to this.

Start command prompt and navigate to project root folder.

Execute commands:

`docker build -t nwabap751 .`

`docker run -p 8000:8000 -p 44300:44300 -p 3300:3300 -p 3200:3200 -h vhcalnplci --name nwabap751 -it nwabap751 /bin/bash`

`/tmp/install.sh`

License key: https://go.support.sap.com/minisap/

Optional:
* note 510007, https://github.com/larshp/abapGit/issues/1225
* ASE license, https://twitter.com/JuliePlummer20/status/976788536950222848

## Notes
Docker detach: CTRL + P Q

Docker attach: `docker attach nwabap751`

Start SAP:
* `su npladm`
* `startsap`

Setup Docker for at least 3.5 GB of RAM and 80 GB of disk space.

## Additional remarks when facing issues with file sizes

If you are using Docker Community Edition on OS X10.x you could run in physical volume size limitations, especially when you are a more frequent Docker user.

You can use docker-machine for creating a virtualbox (so you need virtualbox installed on your machine) which only purpose is to run the Docker engine on it. "docker-machine" is part of the local Docker engine installation - if you do not have this command available then please install Docker Toolbox (https://www.docker.com/products/docker-toolbox).

In my example "Virtualbox" needs to be installed on the machine as a precondition as well (https://www.virtualbox.org/).

Use this command to create a virtual machine where Docker engine will be spin up inside:

`docker-machine create -d "virtualbox" --virtualbox-cpu-count "2" --virtualbox-disk-size "150000" --virtualbox-memory "6500" abap`

after success execution you have now a virtual machine (this works also fine for AWS EC2, btw) with 150 GB disk space and 6.5 GB RAM. If you still run into issues you might have to change the file driver.

Use `docker-machine ls`to find the available virtual machines. Use `docker-machine ip abap` to find out the IP address of your virtual host.

Follow the instructions on the screen to connect to it.
