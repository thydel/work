# Some random deps

```
sudo aptitude install proot moreutils
```

# Install recent hub and jq

```
wget https://github.com/github/hub/releases/download/v2.12.3/hub-linux-amd64-2.12.3.tgz
tar zxvf hub-linux-amd64-2.12.3.tgz
proot -w hub-linux-amd64-2.12.3 ./install
wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
install -m +x jq-linux64 /usr/local/bin/jq
```

# Install gmk

```
git clone git@github.com:thydel/gmk.git
make -C gmk -f gmk install
gmk -C gmk exclude
gmk -C gmk self/config
```

# Init local repo

```
git init work; cd work
```

# Init gmk

```
gmk file=boot init
```

# Create github repo

```
gmk file=boot self/create
```

# Add files to repos and make first commit

```
echo '*~' > .gitignore
git add .
git ci -m 'First commit'
git push --set-upstream origin master
```

# Use gmk for self conf

```
gmk self/config
gmk mailmap
gmk conf
gmk mailmaps
gmk exclude
```
