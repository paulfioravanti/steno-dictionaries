# Stitching Dictionary

This dictionary contains outlines related to [stitching][], which, for the most
part, use the `:STITCH:` macro from the [Plover Stitching][] Plover plugin.

I have decided to, where possible, use the `*PLT` suffix for stitching.

I deliberately have only created stitching outlines for uppercase letters,
since it is apparently convention in court reporting that words verbally spelled
are all in uppercase letters.

```yaml
"*EPLT": "{:STITCH:E}"           # [override]
"*EUPLT": "{:STITCH:I}"          # [override]
"*UPLT": "{:STITCH:U}"
"A*EUPLT": "{:STITCH:A}"
"A*PLT": "{:STITCH:A}"           # [override]
"AO*EPLT": "{:STITCH:E}"         # [override]
"AO*UPLT": "{:STITCH:U}"
"H*PLT": "{:STITCH:H}"           # [override]
"HR*PLT": "{:STITCH:L}"
"K*PLT": "{:STITCH:K}"
"KP*PLT": "{:STITCH:X}"
"KR*PLT": "{:STITCH:C}"
"KW*PLT": "{:STITCH:Q}"
"KWR*PLT": "{:STITCH:Y}"
"O*PLT": "{:STITCH:O}"
"P*PLT": "{:STITCH:P}"
"PH*PLT": "{:STITCH:M}"
"PW*PLT": "{:STITCH:B}"
"R*PLT": "{:STITCH:R}"
"S*PLT": "{:STITCH:S}"           # [override]
"SK*PLT": "{:STITCH:E}"
"SKW*PLT": "{:STITCH:I}"
"SKWR*PLT": "{:STITCH:J}"
"SR*PLT": "{:STITCH:V}"
"ST*EUFP": "{:STITCH_LAST_WORD}"
"STKPW*PLT": "{:STITCH:Z}"
"STKPW-PLT": "{:STITCH:Z}"
"T*PLT": "{:STITCH:T}"
"TK*PLT": "{:STITCH:D}"
"TKPW*PLT": "{:STITCH:G}"
"TP*PLT": "{:STITCH:F}"
"TPH*PLT": "{:STITCH:N}"
"W*PLT": "{:STITCH:W}"
"WR*PLT": "{:STITCH:U}"
```

[Plover Stitching]: https://github.com/morinted/plover_stitching
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
