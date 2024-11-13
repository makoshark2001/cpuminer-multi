# cpuminer-multi

## Install

```bash
git clone https://github.com/tpruvot/cpuminer-multi
```

```bash
cd cpuminer-multi
```

```bash
sudo apt-get -y install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++
```

## CPU build

```bash
./build.sh
```

## ARM build

```bash
./build-linux-arm.sh
```


## Bitcoin

```bash
nano sha256d.sh
```

```bash
#!/bin/sh
./cpuminer -a sha256d -o stratum+tcp://solo.ckpool.org:3333 -u bc1qz6gngx7enztkj0fqd9gqhmmlpqpf82xzlscufz.Lenovo --timeout 120 -p x
```

```bash
nano sha256d-screen.sh
```

```bash
#!/bin/sh
screen -S Sha256d -d -m ./sha256d.sh
```
