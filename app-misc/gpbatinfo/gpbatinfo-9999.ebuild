# Copyright 2022 Cyril Hrubis <metan@ucw.cz>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [ "${PV}" = 9999 ]; then
	EGIT_REPO_URI="https://github.com/gfxprim/gpbatinfo.git"
	inherit git-r3
	KEYWORDS=""
fi

DESCRIPTION="App to show battery charge level and estimates."
HOMEPAGE="https://github.com/gfxprim"

LICENSE="GPL-2+"
SLOT="0"
IUSE=""

DEPEND="media-libs/gfxprim dev-libs/libsysinfo"

src_configure() {
true
}

src_compile() {
	default
}

src_install() {
	default
}
