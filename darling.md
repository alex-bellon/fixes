# Darling

## Install (Arch)

```shell
sudo pacman -S --needed make cmake clang flex bison icu fuse linux-headers gcc-multilib \
lib32-gcc-libs pkg-config fontconfig cairo libtiff python2 mesa llvm libbsd libxkbfile \
libxcursor libxext libxkbcommon libxrandr

git clone --recursive https://github.com/darlinghq/darling.git

git pull
git submodule init
git submodule update

# Move into the cloned sources
cd darling

# Make a build directory
mkdir build && cd build

# Configure the build
cmake ..

# Build and install Darling
make
sudo make install

make lkm
sudo make lkm_install
```

[Source](https://docs.darlinghq.org/build-instructions.html)
