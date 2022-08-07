# Copyright 2020-2022 Cyril Hrubis <metan@ucw.cz>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils

if [ "${PV}" = 9999 ]; then
	EGIT_REPO_URI="https://github.com/gfxprim/gpmaps.git"
	inherit git-r3
	KEYWORDS=""
fi

DESCRIPTION="A map viewer with GPS tracking"
HOMEPAGE="https://github.com/gfxprim"

LICENSE="GPL-2.1+"
SLOT="0"
IUSE=""

DEPEND="media-libs/gfxprim sci-libs/proj sci-geosciences/gpsd"

src_configure() {
true
}

src_compile() {
	default
}

src_install() {
	default
}
