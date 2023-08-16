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
"A*UPL": "{#GRAVE}{:COMMAND:SHELL:sleep 0.1}{#DELETE}{#CONTROL}" # toggle AUtoMap: force explore, wait a bit, toggle automap, then return to auto mode
"A*UPLD": "{#CONTROL}"                                           # return to AUto MoDe
"AUPLD": "{#CONTROL}"                                            # return to AUto MoDe
"K-RBGS": "{#CONTROL(BACKSPACE)}{^/dl}{#RETURN}"                 # dash left
"KHRAUL": "{#CONTROL(BACKSPACE)}"                                # CLear ALL
"KPWA*T": "{#COMMA}"                                             # force COMBAT
"P-RBGS": "{#CONTROL(BACKSPACE)}{^/df}{#RETURN}"                 # dash forward
"R*UPB": "{#TAB}"                                                # toggle RUN mode [override]
"R-RBGS": "{#CONTROL(BACKSPACE)}{^/dr}{#RETURN}"                 # dash right
"SPHRO*R": "{#GRAVE}"                                            # force EXPLORE
"W-RBGS": "{#CONTROL(BACKSPACE)}{^/db}{#RETURN}"                 # dash backward
```

[Doom Typist]: https://github.com/mmaulwurff/typist.pk3
[Georgi]: https://www.gboards.ca/product/georgi
[my Georgi firmware]: https://github.com/paulfioravanti/qmk_keymaps/blob/master/keyboards/gboards/georgi/keymaps/paulfioravanti/keymap.c
[Steno Gaming: Doom Typist]: https://www.paulfioravanti.com/blog/steno-gaming-doom-typist/
