# Copyright 2020 Cyril Hrubis <metan@ucw.cz>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [ "${PV}" = 9999 ]; then
	EGIT_REPO_URI="https://github.com/gfxprim/gpplayer.git"
	inherit git-r3
	KEYWORDS=""
fi

DESCRIPTION="A mp3 player written using libmpg123 and gfxprim widgets"
HOMEPAGE="https://github.com/gfxprim"

LICENSE="GPL-2+"
SLOT="0"
IUSE=""

DEPEND="media-libs/gfxprim media-sound/mpg123"

src_configure() {
true
}

src_compile() {
	default
}

src_install() {
	default
}
