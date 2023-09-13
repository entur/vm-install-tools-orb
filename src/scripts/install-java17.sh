wget https://download.oracle.com/java/17/archive/jdk-17.0.8_linux-x64_bin.tar.gz -O /tmp/openjdk-17.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar xfvz /tmp/openjdk-17.tar.gz --directory /usr/lib/jvm
rm -f /tmp/openjdk-17.tar.gz
sudo sh -c 'for bin in /usr/lib/jvm/jdk-17.0.8/bin/*; do update-alternatives --install /usr/bin/$(basename $bin) $(basename $bin) $bin 100; done'
sudo sh -c 'for bin in /usr/lib/jvm/jdk-17.0.8/bin/*; do update-alternatives --set $(basename $bin) $bin; done'