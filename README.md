# cpuminer-multi

Install

```bash
git clone https://github.com/tpruvot/cpuminer-multi
```

```bash
cd cpuminer-multi
```

```bash
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

Setup Scrypts

```bash
curl -o- -k https://raw.githubusercontent.com/makoshark2001/cpuminer-multi/main/setup.sh | bash
```
