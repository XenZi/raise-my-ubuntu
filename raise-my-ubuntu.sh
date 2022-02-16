# Update packages & Upgrade packages
sudo apt-get update -y && sudo apt-get upgrade -y;

# Installing tweaks for tweaking system
sudo apt install gnome-tweaks;

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome-stable_current_amd64.deb;

#Installing nodejs
sudo apt install nodejs;

#Installing npm
sudo apt install npm;

#Installing git
sudo apt install git;

#### Snap packages

# Discord
sudo snap install discord -y;

# VSC --Classic
sudo snap install code --classic;

# Spotify
sudo snap install spotify;

#IntelliJ Idea Ultimate
sudo snap install intellij-idea-ultimate --classic;