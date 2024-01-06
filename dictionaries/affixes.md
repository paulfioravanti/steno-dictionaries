# Affixes Dictionary

This dictionary contains outlines for [affixes][].

<!-- vim-markdown-toc GFM -->

* [New](#new)
* [Alternative](#alternative)
* [Overrides](#overrides)

<!-- vim-markdown-toc -->

## New

The following are outlines for _new_ affix entries that are not currently
contained in Plover theory.

```yaml
"*ERPB": "{^ern}"
"PO/KE": "{poké^}"
"POE/KE": "{poké^}"
"TKERT": "{detri^}"
"TPHA*EUPL": "{^name}"
```

## Alternative

The following are _alternative_ outlines for affix entries that already exist in
Plover theory.

```yaml
"*EUFRPB": "{infra^}"
"PW*T": "{^-bit}"
"SPH*EU": "{semi-^}"
"TAUL/TAUL": "{^-tall}"
"TPH*ER": "{^ener}"
"TROE/PO": "{tropo^}"
"TROE/POE": "{tropo^}"
```

## Overrides

The following are outlines that override existing Plover theory outlines to
output an affix.

They are where I _personally_ think an existing Plover outline would be better
mapped elsewhere. They are subjective entries since they essentially diverge
away from Plover theory.

Comments after the entries indicate the original Plover entry.

```yaml
"A*EUT": "{eight-^}"   # eight                       
"AO*UT": "{out-^}"     # {out^}                      
"EUG": "{ig^}"         # ig                          
"KWRA*ER": "{^iary}"   # area                        
"KWRO*UT": "{^-out}"   # {out-^}                     
"O*UT": "{^out}"       # {^-out}                     
"P*BGS": "{^px}"       # People's Exhibit No.#G      
"PWA*EBG": "{^back}"   # {back^}                     
"S*EFL": "{^self}"     # self                        
"S*EUBGS": "{six-^}"   # sixth                       
"THRAO*E": "{three-^}" # Three                       
"TP*EUF": "{five-^}"   # five                        
"TPO*UR": "{four-^}"   # Four                        
```

[affixes]: https://en.wikipedia.org/wiki/Affix
