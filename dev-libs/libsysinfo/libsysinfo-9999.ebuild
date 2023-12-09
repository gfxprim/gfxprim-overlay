# Copyright 2020 Cyril Hrubis <metan@ucw.cz>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [ "${PV}" = 9999 ]; then
	EGIT_REPO_URI="https://github.com/gfxprim/libsysinfo.git"
	inherit git-r3
	KEYWORDS=""
fi

DESCRIPTION="A system information and statistic parser library"
HOMEPAGE="http://gfxprim.ucw.cz/"

LICENSE="LGPL-2.1+"
SLOT="0"
IUSE=""

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
