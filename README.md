# NOTE!
Still a work in progress.
# apmss stands for ApachePhpMariadbSqlServer
this is a website server to be run on a raspberry pi board running raspberry pi os graphical version.
can be installed via <!-- Botspot's pi-apps <a class="github-button" href="https://github.com/Botspot/pi-apps" data-icon="logo.jpg" aria-label="link">Here</a> or --> terminal.
# Inluded packages
Apache2 Php Phpmyadmin Phpmysql Mariadbserver
# Installation
# via pi-apps
Scroll down untill you see APMSS click on it, then click install that's it.
# Installation
```
wget -O - https://raw.githubusercontent.com/oxmc/apmss/main/install.sh | bash
```
That's it!
# Version
![version badge image](https://img.shields.io/badge/version-beta-brightgreen)
# Example sites
To use the examples put the files that are in the folder of the example you want to use in the /var/www/html directory and go to <a class="github-button" href="https://github.com/oxmc/apmss/examples/php/echobrowsertype.php" data-icon="logo.jpg" aria-label="link">Localhost or your pi's ip address </a>
to get your pi's ip address open terminal and type ```hostname -I``` Or if you want toput that ip address into a text file use this command in a terminal ```echo "Ip address is: $(hostname -I)" ```

<a class="github-button" href="https://github.com/oxmc/apmss/examples/php/echobrowsertype.php" data-icon="logo.jpg" aria-label="link">Php site</a>

<a class="github-button" href="https://github.com/oxmc/apmss/examples/css/internalcss.html" data-icon="logo.jpg" aria-label="link">Internal css</a>

<a class="github-button" href="https://github.com/oxmc/apmss/examples/css/externalcss.html" data-icon="logo.jpg" aria-label="link">External css</a>

<a class="github-button" href="https://github.com/oxmc/apmss/examples/database/login.html" data-icon="logo.jpg" aria-label="link">Login page and user dashboard using html, css, php, and mysql</a>
