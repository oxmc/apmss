#!/bin/bash
#Variables
workdir="/apps/apmss"
todaydate="$(date +"%A,%B,%d,%Y")"
LATEST_VER="$(wget -qO- https://raw.githubusercontent.com/oxmc/apmss/main/data/version.txt)"
LOCAL_VER="$(cat "${workdir}/data/version.txt")"
#Functions
progressfilt ()
{
    local flag=false c count cr=$'\r' nl=$'\n'
    while IFS='' read -d '' -rn 1 c
    do
        if $flag
        then
            printf '%s' "$c"
        else
            if [[ $c != $cr && $c != $nl ]]
            then
                count=0
            else
                ((count++))
                if ((count > 1))
                then
                    flag=true
                fi
            fi
        fi
    done
}
checkinstalledpack()
{
  echo "Checking if required packages are installed"
  bash /apps/apmss/scripts/installpacks.sh "apache2 php mariadb-server php-mysql phpmyadmin samba samba-common-bin yad zip unzip"
}
checkforupdate()
{
  echo "latest version: $LATEST_VER"
  echo "local version: $LOCAL_VER"
  #display update dialog if update is available
    if [ $LATEST_VER != $LOCAL_VER ];then
      yad --title='ApachePhpMariadbSqlServer' --window-icon="${workdir}/icons/logo-64.png" \
      	--text="Version ${LATEST_VER} is available. Install now?" \
      	--center --text-align=center \
      	--button="Not now!${workdir}/icons/forward.png:1" \
      	--button="Install!${workdir}/icons/16/downloadicon.png:0" 2>/dev/null && wget -O - https://raw.githubusercontent.com/oxmc/apmss/master/update | bash
      else
          echo "No updates availible"
fi
}
#Main
clear
echo "Checking for updates"
checkforupdate
checkinstalledpack
