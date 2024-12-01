# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Eveldun <eveldun123@protonmail.com>
pkgname=libu2f-emu
pkgver=0.1.0
pkgrel=1.0
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
sha256sums=(ed5fa2936b3b4c60c6128bec174fa5cea969d9ebf20e36e65f66ff8299c9c3b7) 
validpgpkeys=() 

prepare() {


#I know i could make this into one variable and be more efficient but im not sure about the rules on that
rm -rf $srcdir/$pkgname-$pkgver/build

export CPATH=/usr/include/openssl-1.1/

}

build() {
  mkdir $srcdir/$pkgname-$pkgver/build 
   cd $srcdir/$pkgname-$pkgver/build
  ../autogen.sh && ../configure --prefix=/usr
  cmake .. && make u2f-emu usb 


}

check() {
	cd $srcdir/$pkgname-$pkgver/build
	make -k check
}

package() {
	cd $srcdir/$pkgname-$pkgver/build
	make DESTDIR="$pkgdir/" install
}
