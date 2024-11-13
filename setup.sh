#!/bin/sh

wget --no-cache https://raw.githubusercontent.com/makoshark2001/cpuminer-multi/main/sha256d.sh -O ~/cpuminer-multi/sha256d.sh

cat << EOF > ~/cpuminer-multi/sha256d-screen.sh
#!/bin/sh
screen -S Sha256d -d -m ./sha256d.sh
EOF



chmod +x *.sh
