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
)
optdepends=('doxygen: Documentation Support'
            'dot: Pretty Documentation Support'
  )
provides=('libu2f-emu')
options=()
install=
changelog=
source=("https://github.com/eveldun/libu2f-emu/archive/refs/tags/${pkgname}-${pkgver}.tar.gz")
#noextract=()
sha256sums=(78f3f6afaaa0aa6d8a7956937dac9be83182c720508d19866738b05597b3751f) 
#validpgpkeys=() Fill in later

prepare() {
export worksrc="${pkgname}-${pkgname}-${pkgver}"
export CPATH=/usr/include/openssl-1.1/
#export LD_LIBRARY_PATH=/usr/lib/openssl-1.1/
export CFLAGS="-O2 -Wall -Wformat -Wformat=2 -Wconversion -Wimplicit-fallthrough \
-Werror=format-security \
-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=3 \
-D_GLIBCXX_ASSERTIONS \
-fstrict-flex-arrays=3 \
-fstack-clash-protection -fstack-protector-strong \
-Wl,-z,nodlopen -Wl,-z,noexecstack \
-Wl,-z,relro -Wl,-z,now \
-Wl,--as-needed -Wl,--no-copy-dt-needed-entries
"
}

build() {
	cd $SRCDEST/src/$worksrc
	./autogen.sh && ./configure
	make
}

check() {
	cd "$worksrc"
	make -k check
}

package() {
	cd "$worksrc"
	make DESTDIR="$pkgdir/" install
}
