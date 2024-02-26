# Punctuation Dictionary

This dictionary contains outlines for entries that only contain punctuation
and/or non-word characters. Other punctuation-only outlines that deal more
specifically with coding can be found in my [Code Dictionary][].

<!-- vim-markdown-toc GFM -->

* [New](#new)
* [Alternative](#alternative)
* [Overrides](#overrides)

<!-- vim-markdown-toc -->

## New

The following are outlines for _new_ punctuation entries that are not currently
contained in Plover theory.

```yaml
"*FPLT": "{^... }{-|}"
"A*EPBGS": "{^<>^}{#LEFT}"      # ANGled bracketS
"AEPBGS": "{^<>^}"              # ANGled bracketS
"H*F": "{^...?}{-|}"
"KH*FGS": "{^``^}{#LEFT}"
"KH-FGS": "{^```^}"
"KO*ED": "{^``^}{#LEFT}"        # CODE
"KR*T": "^{^^}"                 # CaReT
"KR-RTS": "{^^^^}{#LEFT}"       # CaReTS
"KW*GS": "{^\"}"                # QUotatION
"KW*GSZ": "{^\"\"\"}"           # QUotatIONS
"KW*TS": "{^\"\"^}{#LEFT}"      # QUoTeS
"KW-GSZ": "{\"\"\"^}"           # QUotatIONS
"KW-TS": "{^\"\"^}"             # QUoTeS
"KWO*ETS": "\"\"{#LEFT}{^^}"    # QUoTeS
"PH*BLG": "-="                  # Minus eQuaL
"PH-FP": "{^...?}{-|}"
"PHR*USZ": "++"                 # PLUSeS
"PR*PBS": "{^()^}{#LEFT}"       # PaReNS [override]
"PWHR*BG": "{^```^}"            # BLoCK
"PWR*BGS": "{^[]^}{#LEFT}"      # BRaCKetS [override]
"PWR-BGTS": "{^[]^}{#LEFT}"     # BRaCKeTS
"SKW*TS": "{^''^}{#LEFT}"       # Single QUoTeS
"SKWO*ET": "{^'^}"              # Single QUOTE
"SKWRO*ET": "{^'}"              # Single QUOTE
"SKWOET": "{^'^}"               # Single QUOTE
"SKWROET": "{'^}"               # Single QUOTE
"SKWO*ETS": "''{#LEFT}{^^}"     # Single QUOTeS
"SKWRO*ETS": "''{#LEFT}{^^}"    # Single QUOTeS
"SKWOETS": "''"                 # Single QUOTeS
"SKWROETS": "''"                # Single QUOTeS
"STK-RBG": "{^--^}"
"TK*PL": "{^$^}"                # Dollar Mark
"TK-RBS": "{^---^}"             # DaSHeS
"TK-RBZ": "{^---^}"             # DaSHeZ
"TKHR*R": "{^$^}"               # DoLLaR
"TKPWR*F": "{^`^}"              # GRaVe
"TKPWR*FS": "{^```^}"           # GRaVeS
"TKR*EPBS": "{^$()}^{#LEFT}"    # Dollar paReNs
"TKREPBS": "{^$()}"             # Dollar paReNs
"TP-PL": "{^...^}"
"TPR*BGS": "{^\\{\\}^}{#LEFT}"  # (curly) BRaCKetS
"TPR*PBS": "{^\\{\\}^}{#LEFT}"  # (curly) PaReNS
"TPR-BGS": "{^\\{\\}^}"         # (curly) BRaCKetS
"TPR-BGTS": "{^\\{\\}^}{#LEFT}" # (curly) BRaCKeTS
"TPR-PBS": "{^\\{\\}^}"         # (curly) PaReNS
```

## Alternative

The following are _alternative_ outlines for punctuation entries that already
exist in Plover theory.

```yaml
"K-FPLT": "{:}"
"KW-GS": "{\"^}"
"KW-T": "{^\"^}"
"KWO*ET": "{^\"^}"
"OEUB": "{^\\^}"
"P-PS": "{^...}"
"PHR*BLG": "+="        # PLus eQuaL
"PHRAO*EBLG": "+="     # PLus EQuaL
"PR-PB": "{^(^}"
"PWHRARB": "{^\\^}"
"PWR*BG": "{^]^}"
"SHR*RB": "{^\\^}"
"SHR-RB": "{^/^}"
"SKP*D": "&&"
"SKWH-FBGS": "{^```^}"
"T*EULD": "{^~^}"
"TPR*PB": "{^\\}^}"
"TPR-PB": "{^\\{^}"
```

## Overrides

The following are outlines that override existing Plover theory outlines to
output some punctuation.

They are where I _personally_ think an existing Plover outline would be better
mapped elsewhere. They are subjective entries since they essentially diverge
away from Plover theory.

Comments after the entries indicate the original Plover entry.

```yaml
"-RB": "--"         # {^,^}
"HA*ERB": "{^#^}"   # #
"KHR*PB": ":{^}"    # {:^} (see https://github.com/openstenoproject/plover/issues/1407)
"KW*L": "{^=^}"     # =
"PR*PB": "{^)^}"    # p.r.n. (pro re nata)
"PR-PBS": "{^()^}"  # PNS (PaReNS)
"PWR-BGS": "{^[]^}" # {^]^} (BRaCKetS)
"SKW-TS": "{^''^}"  # {'^} (Single QUoTeS)
"STK-RB": "{^--}"   # --
"TK-RBG": "{--^}"   # --
"TPR*BG": "{^\\}^}" # function residual capacity
"TPR-BG": "{^\\{^}" # FRC
```

[Code Dictionary]: ./code.md
