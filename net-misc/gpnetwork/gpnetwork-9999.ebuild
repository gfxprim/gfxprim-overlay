# Copyright 2021 Cyril Hrubis <metan@ucw.cz>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [ "${PV}" = 9999 ]; then
	EGIT_REPO_URI="https://github.com/gfxprim/gpnetwork.git"
	inherit git-r3
	KEYWORDS=""
fi

DESCRIPTION="Network configuration viewer written in libnl and gfxprim widgets"
HOMEPAGE="https://github.com/gfxprim"

LICENSE="GPL-2+"
SLOT="0"
IUSE=""

DEPEND="media-libs/gfxprim dev-libs/libnl"

src_configure() {
true
}

src_compile() {
	default
}

src_install() {
	default
}
