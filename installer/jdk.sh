cd ~/Downloads/
wget https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.12%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz
tar -xf OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz
sudo mv jdk-11.0.12+7 /usr/lib/jvm
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-11.0.12+7/bin/javac 1
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-11.0.12+7/bin/java 1