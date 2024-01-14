# Copyright 2022 Cyril Hrubis <metan@ucw.cz>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [ "${PV}" = 9999 ]; then
	EGIT_REPO_URI="https://github.com/gfxprim/termini.git"
	inherit git-r3
	KEYWORDS=""
fi

DESCRIPTION="A gfxprim based terminal emulator."
HOMEPAGE="https://github.com/gfxprim"

LICENSE="GPL-2+"
SLOT="0"
IUSE=""

DEPEND="media-libs/gfxprim dev-libs/libvterm"

src_configure() {
true
}

src_compile() {
	default
}

src_install() {
	default
}
