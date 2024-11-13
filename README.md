# cpuminer-multi

Install

```bash
git clone https://github.com/tpruvot/cpuminer-multi
cd cpuminer-multi
sudo apt-get -y install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++
```

CPU build

```bash
./build.sh
```

ARM build

```bash
./build-linux-arm.sh
```


Scrypts for cpu-multiminer

Lenovo

```bash
curl -o- -k https://raw.githubusercontent.com/makoshark2001/cpuminer-multi/main/lenovo.sh | bash
```

