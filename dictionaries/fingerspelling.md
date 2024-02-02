# Fingerspelling Dictionary

This dictionary contains outlines related to [fingerspelling][].

<!-- vim-markdown-toc GFM -->

* [Alternative](#alternative)
* [Overrides](#overrides)

<!-- vim-markdown-toc -->

## Alternative

The following are _alternative_ outlines for fingerspelling-related entries that
already exist in Plover theory.

I wanted be able to fingerspell only using my left hand, so I ported the chord
shapes of E, I, and U on the right thumb cluster to the bottom row of the left
side of the board.

```yaml
"AO*EUFPLT": "{&I.}"
"SK*": "{>}{&e}"
"SK*FPLT": "{&E.}"
"SK*P": "{&E}"
"SKW*": "{>}{&i}"
"SKW*FPLT": "{&I.}"
"SKW*P": "{&I}"
"STKPW*FPLT": "{&Z.}"
"WR*": "{>}{&u}"
"WR*FPLT": "{&U.}"
"WR*P": "{&U}"
```

## Overrides

The following are outlines that override existing Plover theory outlines to
output a fingerspelling-related entry.

They are where I _personally_ think an existing Plover outline would be better
mapped elsewhere. They are subjective entries since they essentially diverge
away from Plover theory.

Comments after the entries indicate the original Plover entry.

```yaml
"*EU": "{>}{^i^}" # {>}{&i} (overridden for vim-related purposes)
"A*FPLT": "{&A.}" # amount
"TP-PLT": "{&f-}" # {.}
```

[fingerspelling]: https://www.artofchording.com/sounds/fingerspelling.html
