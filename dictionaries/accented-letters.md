# Accented Letter Dictionary

This dictionary contains outlines for [acute-accented][] and [grave-accented][]
letters that I would typically use in Italian.

## Acute

Uses the following chords:

- **`SP*` + letter**: single stroke, acute accent as the `SP` pattern looks like
  it goes diagonally up in steno order
- **letter + `KAOUT`**: for when I want to retroactively acute accent a
  fingerspelled letter

```yaml
"*E/KAOUT": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:é}"
"*EP/KAOUT": "{:GLUE:É}"
"*EU/KAOUT": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:í}"
"*EUP/KAOUT": "{:GLUE:Í}"
"*U/KAOUT": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ú}"
"*UP/KAOUT": "{:GLUE:Ú}"
"A*/KAOUT": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:á}"
"A*P/KAOUT": "{:GLUE:Á}"
"O*/KAOUT": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ó}"
"O*P/KAOUT": "{:GLUE:Ó}"
"SP*E": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:é}"
"SP*EP": "{:GLUE:É}"
"SP*EU": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:í}"
"SP*EUP": "{:GLUE:Í}"
"SP*U": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ú}"
"SP*UP": "{:GLUE:Ú}"
"SPA*": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:á}"
"SPA*P": "{:GLUE:Á}"
"SPO*": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ó}"
"SPO*P": "{:GLUE:Ó}"
```

## Grave

Uses the following chords:

- **`SW*` + letter**: single stroke, grave accent as the `SW` pattern looks like
  it goes diagonally down in steno order
- **letter + `TKPWRAEUF`**: for when I want to retroactively grave accent a
  fingerspelled letter

```yaml
"*E/TKPWRAEUF": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:è}"
"*EP/TKPWRAEUF": "{:GLUE:È}"
"*EU/TKPWRAEUF": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ì}"
"*EUP/TKPWRAEUF": "{:GLUE:Ì}"
"*U/TKPWRAEUF": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ù}"
"*UP/TKPWRAEUF": "{:GLUE:Ù}"
"A*/TKPWRAEUF": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:à}"
"A*P/TKPWRAEUF": "{:GLUE:À}"
"O*/TKPWRAEUF": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ò}"
"O*P/TKPWRAEUF": "{:GLUE:Ò}"
"SW*E": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:è}"
"SW*EP": "{:GLUE:È}"
"SW*EU": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ì}"
"SW*EUP": "{:GLUE:Ì}"
"SW*U": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ù}"
"SW*UP": "{:GLUE:Ù}"
"SWA*": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:à}"
"SWA*P": "{:GLUE:À}"
"SWAOE": "è"
"SWO*": "{:CASE:LOWER_FIRST_CHAR}{:GLUE:ò}"
"SWO*P": "{:GLUE:Ò}"
```

[acute-accented]: https://en.wikipedia.org/wiki/Acute_accent
[grave-accented]: https://en.wikipedia.org/wiki/Grave_accent
