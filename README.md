# LEMP stack on AWS Ubuntu

## What does it do?
### TL DR
Installs LEMP stack on Ubuntu.

### Long story
1. Upgrades the system
1. Installs common packages (curl, git, mc)
1. Installs and configures:
    1. MariaDB (10.3)
    1. PHP-FPM 5.6 and 7.3 (Composer, GraphicsMagick)
    1. Nginx


## Use

On AWS  
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/igodorogea/ansible-lemp-ubuntu/master/bin/install.sh)"`

On Hyper V  
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/igodorogea/ansible-lemp-ubuntu/master/bin/install-hyperv.sh)"`
