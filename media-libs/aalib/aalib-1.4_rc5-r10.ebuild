# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools multilib-minimal toolchain-funcs

MY_P="${P/_/}"
S="${WORKDIR}/${PN}-1.4.0"

DESCRIPTION="A ASCII-Graphics Library"
HOMEPAGE="https://aa-project.sourceforge.net/aalib/"
SRC_URI="mirror://sourceforge/aa-project/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm arm64 ~hppa ~ia64 ~loong ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x64-solaris"
IUSE="X gpm slang"

RDEPEND=">=sys-libs/ncurses-5.9-r3:0=[${MULTILIB_USEDEP}]
	X? ( >=x11-libs/libX11-1.6.2[${MULTILIB_USEDEP}] )
	gpm? ( >=sys-libs/gpm-1.20.7-r2[${MULTILIB_USEDEP}] )
	slang? ( >=sys-libs/slang-2.2.4-r1[${MULTILIB_USEDEP}] )"
DEPEND="${RDEPEND}
	X? ( x11-base/xorg-proto )"
BDEPEND="virtual/pkgconfig"

PATCHES=(
	"${FILESDIR}"/${PN}-1.4_rc4-gentoo.patch
	"${FILESDIR}"/${PN}-1.4_rc4-m4.patch
	"${FILESDIR}"/${PN}-1.4_rc5-fix-protos.patch #224267
	"${FILESDIR}"/${PN}-1.4_rc5-fix-aarender.patch #214142
	"${FILESDIR}"/${PN}-1.4_rc5-tinfo.patch #468566
	"${FILESDIR}"/${PN}-1.4_rc5-key-down-OOB.patch
	"${FILESDIR}"/${PN}-1.4_rc5-more-protos.patch
	"${FILESDIR}"/${PN}-1.4_rc5-free-offset-pointer.patch #894978
)

DOCS=( ANNOUNCE AUTHORS ChangeLog NEWS README )

src_prepare() {
	default

	sed -i -e 's:#include <malloc.h>:#include <stdlib.h>:g' "${S}"/src/*.c

	# Fix bug #165617.
	use gpm || sed -i \
		's/gpm_mousedriver_test=yes/gpm_mousedriver_test=no/' "${S}/configure.in"

	#467988 automake-1.13
	mv configure.{in,ac} || die
	sed -i 's/AM_CONFIG_HEADER/AC_CONFIG_HEADERS/g' configure.ac || die

	eautoreconf
}

multilib_src_configure() {
	ECONF_SOURCE=${S} econf \
		$(use_with slang slang-driver) \
		$(use_with X x11-driver) \
		PKG_CONFIG=$(tc-getPKG_CONFIG)
}

multilib_src_install() {
	emake DESTDIR="${D}" install

	find "${D}" -name '*.la' -type f -delete || die
}
