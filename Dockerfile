FROM opensuse:latest
RUN zypper --non-interactive install --replacefiles uuidd hostname wget unrar tcsh tar which net-tools iproute2
RUN mkdir /run/uuidd && chown uuidd /var/run/uuidd && /usr/sbin/uuidd
COPY sapdownloads /tmp
RUN echo $'#!/bin/bash \n\
echo "Free space - initial:" \n\
df -h \n\
mkdir /tmp/sap_netweaver_as_abap_751_sp02_ase_dev_edition \n\
unrar x /tmp/sap_netweaver_as_abap_751_sp02_ase_dev_edition*part01.rar /tmp/sap_netweaver_as_abap_751_sp02_ase_dev_edition \n\
echo "Free space - after extraction" \n\
df -h \n\
rm /tmp/*.rar \n\
echo "Free space - after RAR deletion" \n\
df -h \n\
chmod +x /tmp/sap_netweaver_as_abap_751_sp02_ase_dev_edition/install.sh \n\
/tmp/sap_netweaver_as_abap_751_sp02_ase_dev_edition/install.sh -s \n\
echo "Free space - after installation" \n\
df -h' >> /tmp/install.sh; chmod +x /tmp/install.sh
EXPOSE 8000
EXPOSE 44300
EXPOSE 3300
EXPOSE 3200
