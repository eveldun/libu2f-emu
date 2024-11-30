# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Eveldun <eveldun123@protonmail.com>
pkgname=libu2f-emu
pkgver=0.1.0
pkgrel=1.0
pkgdir=./src
pkgdesc="Libu2f-emu, provides a C Library for the U2F device emulations."
arch=('x86_64')
url="https://github.com/eveldun/libu2f-emu"
license=('GPLv2')
depends=('openssl-1.1')
makedepends=('gtest'
             'automake'
             'autoconf'
             'autoconf-archive'
             'libtool'
             'autoconf'
             'automake'
             'pkgconf'
             'cmake')
optdepends=('doxygen: Documentation Support'
            'dot: Pretty Documentation Support'
  )
provides=('libu2f-emu')
options=()
install=
changelog=
source=("https://github.com/eveldun/libu2f-emu/archive/refs/tags/${pkgver}.tar.gz")
#noextract=()
sha256sums=(78f3f6afaaa0aa6d8a7956937dac9be83182c720508d19866738b05597b3751f) 
#validpgpkeys=() Fill in later

prepare() {

export CPATH=/usr/include/openssl-1.1/
mkdir $SRCPKGDEST/build

}

build() {
	
  cd $SRCPKGDEST/build
	./autogen.sh && ./configure
   cmake $SRCPKGDEST & make 
}

check() {
	cd "$worksrc/build"
	make -k check
}

package() {
	cd "$worksrc/build"
	make DESTDIR="$pkgdir/" install
}
