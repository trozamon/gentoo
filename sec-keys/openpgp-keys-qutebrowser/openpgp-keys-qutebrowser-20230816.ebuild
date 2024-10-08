# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="OpenPGP keys used by Qutebrowser"
HOMEPAGE="https://qutebrowser.org/"
SRC_URI="https://qutebrowser.org/pubkey.gpg -> ${P}.gpg"
S="${WORKDIR}"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86"

src_install() {
	insinto /usr/share/openpgp-keys
	newins "${DISTDIR}"/${P}.gpg qutebrowser.gpg
}
