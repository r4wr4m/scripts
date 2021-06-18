#!/bin/bash

#UPDATE ~/.bash_history instantly
echo 'PROMPT_COMMAND="history -a"' >> ~/.profile
echo "[*] History set."

echo "[*] Changing shell..."
chsh -s /bin/zsh
cp /etc/skel/.zshrc ~/

apt update
apt -y install terminator vim
apt -y install glances #monitoring tool
apt -y install brasero #4 burning cds

git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists
git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git /opt/privilege-escalation-awesome-scripts-suite
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32 -O /opt/pspy32
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64 -O /opt/pspy64
git clone https://github.com/Tib3rius/AutoRecon.git

echo "[*] Stuff installed"
