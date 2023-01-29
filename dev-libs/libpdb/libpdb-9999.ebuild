# Copyright 2020 Cyril Hrubis <metan@ucw.cz>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils

if [ "${PV}" = 9999 ]; then
	EGIT_REPO_URI="https://github.com/gfxprim/libpdb.git"
	inherit git-r3
	KEYWORDS=""
fi

DESCRIPTION="Simple library to parse pdb books and produce utf8 data"
HOMEPAGE="http://gfxprim.ucw.cz/"

LICENSE="LGPL-2.1+"
SLOT="0"
IUSE=""

DEPEND="dev-libs/libutf"

src_prepare() {
	eapply_user
}

src_configure() {
	default
}

src_compile() {
	default
}

src_install() {
	default
}
