#!/bin/sh

git clone https://github.com/tpruvot/cpuminer-multi

sudo apt-get -y install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++

cd cpuminer-multi
./build.sh



cat << EOF > ~/cpuminer-multi/scrypt.sh
#!/bin/sh
./cpuminer -a scrypt -o stratum+tcp://scrypt.mine.zergpool.com:3433 -u RUkstVi5YCJgBaLjaiu8DQ1gWhr7Mwcxo8 --timeout 120 -p c=RVN,ID=Lenovo
EOF

cat << EOF > ~/cpuminer-multi/scrypt-screen.sh
#!/bin/sh
screen -S Scrypt -d -m ./scrypt.sh
EOF





cat << EOF > ~/cpuminer-multi/sha256d.sh
#!/bin/sh
./cpuminer -a sha256d -o stratum+tcp://solo.ckpool.org:3333 -u bc1qz6gngx7enztkj0fqd9gqhmmlpqpf82xzlscufz.Lenovo --timeout 120 -p x
EOF

cat << EOF > ~/cpuminer-multi/sha256d-screen.sh
#!/bin/sh
screen -S Sha256d -d -m ./sha256d.sh
EOF





cat << EOF > ~/cpuminer-multi/allium.sh
#!/bin/sh
./cpuminer -a allium -o stratum+tcp://allium.mine.zergpool.com:6433 -u RUkstVi5YCJgBaLjaiu8DQ1gWhr7Mwcxo8 --timeout 120 -p c=RVN,sd=0.025,ID=Lenovo
EOF

cat << EOF > ~/cpuminer-multi/allium-screen.sh
#!/bin/sh
screen -S Allium -d -m ./allium.sh
EOF





chmod +x *.sh
