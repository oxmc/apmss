#!/bin/bash
#Variables
workdir="/apps/apmss"
todaydate="$(date +"%A,%B,%d,%Y")"
#Functions
copysambaconfigs()
{
  sudo rm -r /etc/samba/smb.conf
  sudo cp $workdir/configs/samba/networkstorage.conf /etc/samba/smb.conf
}
#Main

