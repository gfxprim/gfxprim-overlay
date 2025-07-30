# Copyright 2020 Cyril Hrubis <metan@ucw.cz>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [ "${PV}" = 9999 ]; then
	EGIT_REPO_URI="https://github.com/gfxprim/gfxprim.git"
	inherit git-r3
	KEYWORDS=""
else
	SRC_URI="http://gfxprim.ucw.cz/releases/${P}.tar.bz2"
	KEYWORDS="~amd64 ~x86 ~arm ~ppc"
fi

DESCRIPTION="Modular 2D bitmap graphics library"
HOMEPAGE="http://gfxprim.ucw.cz/"

LICENSE="LGPL-2.1+"
SLOT="0"
IUSE="jpeg png webp gif tiff jpeg2k heif libarchive freetype fontconfig X sdl aalib python doc"

RDEPEND="jpeg? ( virtual/jpeg )
	png? ( media-libs/libpng )
	webp? ( media-libs/libwebp )
	gif? ( media-libs/giflib )
	tiff? ( media-libs/tiff )
	jpeg2k? ( >=media-libs/openjpeg-2.0.0 )
	heif? ( media-libs/libheif )
	libarchive? ( app-arch/libarchive )
	freetype? ( media-libs/freetype )
	fontconfig? ( media-libs/fontconfig )
	X? ( x11-libs/libX11 x11-libs/libXext x11-libs/libXrandr x11-libs/libXfixes )
	sdl? ( media-libs/libsdl )
	aalib? ( media-libs/aalib )
	doc? ( app-text/asciidoc dev-util/source-highlight media-gfx/graphviz
	       app-text/dvipng virtual/latex-base )
"

DEPEND="$RDEPEND
	python? ( dev-lang/swig )
"

src_prepare() {
	if [ "${PV}" == "1.0.0_rc1" ]; then
		epatch ${FILESDIR}/configure-more-compatible-with-autoconf.patch
	fi
	eapply_user
}

src_configure() {
	use !jpeg && conf="${conf} --disable=jpeg"
	use !png && conf="${conf} --disable=libpng"
	use !webp && conf="${conf} --disable=webp"
	use !gif && conf="${conf} --disable=giflib"
	use !tiff && conf="${conf} --disable=tiff"
	use !jpeg2k && conf="${conf} --disable=openjpeg"
	use !heif && conf="${conf} --disable=heif"
	use !libarchive && conf="${conf} --disable=libarchive"
	use !freetype && conf="${conf} --disable=freetype"
	use !X && conf="${conf} --disable=libX11"
	use !sdl && conf="${conf} --disable=libsdl"
	use !aalib && conf="${conf} --disable=aalib"
	use !python && conf="${conf} --PYTHON_CONFIG=''"
	use !fontconfig && conf="${conf} --disable=fontconfig"

	econf ${conf}
}

src_compile() {
	default
	use doc && cd doc && emake
}

src_install() {
	default
	use doc && cd doc && emake DESTDIR="${D}" install
}
