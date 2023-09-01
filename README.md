# GFXprim overlay

GFXprim overlay http://gfxprim.ucw.cz

To install the overlay:

~~layman -o https://raw.githubusercontent.com/gfxprim/gfxprim-overlay/master/repositories.xml -f -a gfxprim-overlay~~

eselect repository add gfxprim git https://github.com/gfxprim/gfxprim-overlay.git
emaint sync -r gfxprim

