# Gaming Dictionary

This dictionary contains custom entries specifically for use in video games.

## Doom Typist

[Doom Typist][] is a mod for the original Doom. I have written all about playing
this game with steno in a blog post: _[Steno Gaming: Doom Typist][]_.

I play using a [Georgi][] keyboard, and you can see all the Doom Typist-related
firmware changes I made for it in [my Georgi firmware][].

A minor point about the dashing-related entries is that I have made sure that
before a dash occurs, any characters already in the text box get erased.

```yaml
"A*UPL": "{:KEY_COMBO:CONTROL_L}"                                             # return to AUto Mode
"K-RBGS": "{:KEY_COMBO:CONTROL_L(BACKSPACE)}{:ATTACH:/dl}{:KEY_COMBO:RETURN}" # dash left
"KHRAUL": "{:KEY_COMBO:CONTROL_L(BACKSPACE)}"                                 # CLear ALL
"KPWA*T": "{:KEY_COMBO:GRAVE}"                                                # force COMBAT
"P-RBGS": "{:KEY_COMBO:CONTROL_L(BACKSPACE)}{:ATTACH:/df}{:KEY_COMBO:RETURN}" # dash forward
"R-RBGS": "{:KEY_COMBO:CONTROL_L(BACKSPACE)}{:ATTACH:/dr}{:KEY_COMBO:RETURN}" # dash right
"SPHRO*R": "{:KEY_COMBO:ESCAPE}"                                              # force EXPLORE
"W-RBGS": "{:KEY_COMBO:CONTROL_L(BACKSPACE)}{:ATTACH:/db}{:KEY_COMBO:RETURN}" # dash backward
```

[Doom Typist]: https://github.com/mmaulwurff/typist.pk3
[Georgi]: https://www.gboards.ca/product/georgi
[my Georgi firmware]: https://github.com/paulfioravanti/qmk_keymaps/blob/master/keyboards/gboards/georgi/keymaps/paulfioravanti/keymap.c
[Steno Gaming: Doom Typist]: https://www.paulfioravanti.com/blog/steno-gaming-doom-typist/
