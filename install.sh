apt-get install android-sdk
apt-get install openjdk-8-jre openjdk-8-jdk icedtea-8-plugin
apt-get install lib32stdc++6
android update sdk --no-ui
sudo apt-get install p7zip-full
curl -O http://dl.google.com/android/repository/android-ndk-r12b-linux-x86_64.zip
unzip android-ndk-r12b-linux-x86_64.zip
mv android-ndk-r12b ./usr/share/android-sdk/android-ndk
rm android-ndk-r12b-linux-x86_64.zip
echo "source ~/.extra_alias" >> ~/.bashrc
echo "source ~/.extra_paths" >> ~/.bashrc
echo "export ANDROID_HOME=/usr/share/android-sdk" >> ~/.extra_paths
echo "export NDK_HOME=/usr/share/android-sdk/ndk-bundle" >> ~/.extra_paths
pip install frida-tools
source ~/.bashrc
chmod +x "${NDK_HOME}/build/tools/make-standalone-toolchain.sh"
${NDK_HOME}/build/tools/make_standalone_toolchain.py --arch arm --api 21 --install-dir "${NDK_HOME}/android-21-arm-toolchain/" --force
${NDK_HOME}/build/tools/make_standalone_toolchain.py --arch x86 --api 21 --install-dir "${NDK_HOME}/android-21-x86-toolchain/" --force
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
sudo apt-get install android-tools-adb android-tools-fastboot
sudo apt-get install terminator
ln -s /usr/share/terminator/terminator ~/Desktop/terminator
wget https://github.com/sharkdp/bat/releases/download/v0.10.0/bat_0.10.0_amd64.deb
sudo dpkg -i bat_0.10.0_amd64.deb
sudo apt install zsh
chsh -s /usr/bin/zsh
apt install wget git
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc
