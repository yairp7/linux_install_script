
#!/bin/bash

echo "export ANDROID_HOME=/usr/lib/android-sdk" >> ~/.bashrc
echo "export NDK_HOME=/usr/lib/android-sdk/ndk-bundle" >> ~/.basrc
# echo "source ~/.extra_paths" >> ~/.bashrc
export ANDROID_HOME=/usr/lib/android-sdk
export NDK_HOME=/usr/lib/android-sdk/ndk-bundle
echo "ANDROID_HOME="$ANDROID_HOME
echo "NDK_HOME=${NDK_HOME}"
source ~/.bashrc
sudo apt-get install python-setuptools python-dev build-essential -y
sudo apt-get install python-pip
sudo -H pip install --upgrade virtualenv
sudo apt-get install android-sdk -y
sudo apt-get install openjdk-8-jre openjdk-8-jdk icedtea-8-plugin -y
sudo apt-get install lib32stdc++6 -y
sudo android update sdk --no-ui -y
sudo apt-get install p7zip-full
if [[ ! -d $NDK_HOME ]]; then 
	if [[ ! -f "android-ndk-r12b-linux-x86_64.zip" ]]; then
		curl -O http://dl.google.com/android/repository/android-ndk-r12b-linux-x86_64.zip
		unzip android-ndk-r12b-linux-x86_64.zip
		rm android-ndk-r12b-linux-x86_64.zip
	fi
	sudo mv android-ndk-r12b $ANDROID_HOME
	sudo mv "${ANDROID_HOME}/android-ndk-r12b" $NDK_HOME 
fi
sudo -H pip install frida-tools
sudo chmod +x "${NDK_HOME}/build/tools/make-standalone-toolchain.sh"
sudo ${NDK_HOME}/build/tools/make_standalone_toolchain.py --arch arm --api 21 --install-dir "${NDK_HOME}/android-21-arm-toolchain/" --force
sudo ${NDK_HOME}/build/tools/make_standalone_toolchain.py --arch x86 --api 21 --install-dir "${NDK_HOME}/android-21-x86-toolchain/" --force
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
rm bat_0.10.0_amd64.deb
sudo apt install zsh -y
sudo chsh -s /usr/bin/zsh
sudo apt install wget git -y
sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
echo "export ANDROID_HOME=/usr/lib/android-sdk" >> ~/.zshrc
echo "export NDK_HOME=/usr/lib/android-sdk/ndk-bundle" >> ~/.zshrc
source ~/.zshrc
mkdir ~/workspace
mkdir ~/workspace/tools
wget -O ~/Downloads/bytecodeviewer.jar https://github.com/Konloch/bytecode-viewer/releases/download/2.9.11/Bytecode-Viewer-2.9.11.jar
mv ~/Downloads/bytecodeviewer.jar ~/workspace/tools/bcv.jar
echo "alias bcv='java -jar ~/workspace/tools/bcv.jar'" >> ~/.extra_alias
echo "alias cat='bat'" >> ~/.extra_alias
echo "alias ll='ls -la'" >> ~/.extra_alias
echo "zsh" >> ~/.bashrc
wget -O ~/Downloads/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
wget -O ~/Downloads/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.0.jar
sudo mv ~/Downloads/apktool /usr/local/bin
sudo mv ~/Downloads/apktool.jar /usr/local/bin
sudo chmod +x /usr/local/bin/apktool
sudo chmod +x /usr/local/bin/apktool.jar


