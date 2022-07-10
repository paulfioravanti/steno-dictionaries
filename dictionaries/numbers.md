# Numbers Dictionary

This dictionary contains number-specific entries that _do not_ currently have
a named entry in the main Plover dictionary.

They are divided into the following dictionary types:

<!-- vim-markdown-toc GFM -->

* [List](#list)
* [Ordinals](#ordinals)
* [Other](#other)
* [Time](#time)

<!-- vim-markdown-toc -->

## List

The following are new entries specifically cover a use case of:

> "Create briefs that add a period after a number and capitalise the next
> outline".

The primary chords that are used to determine a number list are:

- `-B` + number, when the first character of the number is between 0-5
- `W` + number, when the first character of the number is between 6-9

This is mostly determined by rules I made up when attempting to make a
system for stroking numbers on a [Georgi][]. More information on that can be
found on my blog post _[Stenography Numbers on a Georgi][]_.

```yaml
"0B": "0.{:CASE:CAP_FIRST_WORD}"
"0EU6B": "60.{:CASE:CAP_FIRST_WORD}"
"0EU7B": "70.{:CASE:CAP_FIRST_WORD}"
"0EUB8": "80.{:CASE:CAP_FIRST_WORD}"
"0EUB9": "90.{:CASE:CAP_FIRST_WORD}"
"1-B": "1.{:CASE:CAP_FIRST_WORD}"
"1-BD": "11.{:CASE:CAP_FIRST_WORD}"
"1-BZ": "100.{:CASE:CAP_FIRST_WORD}"
"10B": "10.{:CASE:CAP_FIRST_WORD}"
"12-B": "12.{:CASE:CAP_FIRST_WORD}"
"12EUB": "21.{:CASE:CAP_FIRST_WORD}"
"13-B": "13.{:CASE:CAP_FIRST_WORD}"
"13EUB": "31.{:CASE:CAP_FIRST_WORD}"
"14-B": "14.{:CASE:CAP_FIRST_WORD}"
"14EUB": "41.{:CASE:CAP_FIRST_WORD}"
"15B": "15.{:CASE:CAP_FIRST_WORD}"
"15EUB": "51.{:CASE:CAP_FIRST_WORD}"
"1EU6B": "61.{:CASE:CAP_FIRST_WORD}"
"1EU7B": "71.{:CASE:CAP_FIRST_WORD}"
"1EUB8": "81.{:CASE:CAP_FIRST_WORD}"
"1EUB9": "91.{:CASE:CAP_FIRST_WORD}"
"1W-6": "16.{:CASE:CAP_FIRST_WORD}"
"1W-7": "17.{:CASE:CAP_FIRST_WORD}"
"1W-8": "18.{:CASE:CAP_FIRST_WORD}"
"1W-9": "19.{:CASE:CAP_FIRST_WORD}"
"2-B": "2.{:CASE:CAP_FIRST_WORD}"
"2-BD": "22.{:CASE:CAP_FIRST_WORD}"
"2-BZ": "200.{:CASE:CAP_FIRST_WORD}"
"20B": "20.{:CASE:CAP_FIRST_WORD}"
"23-B": "23.{:CASE:CAP_FIRST_WORD}"
"23EUB": "32.{:CASE:CAP_FIRST_WORD}"
"24-B": "24.{:CASE:CAP_FIRST_WORD}"
"24EUB": "42.{:CASE:CAP_FIRST_WORD}"
"25B": "25.{:CASE:CAP_FIRST_WORD}"
"25EUB": "52.{:CASE:CAP_FIRST_WORD}"
"2EU6B": "62.{:CASE:CAP_FIRST_WORD}"
"2EU7B": "72.{:CASE:CAP_FIRST_WORD}"
"2EUB8": "82.{:CASE:CAP_FIRST_WORD}"
"2EUB9": "92.{:CASE:CAP_FIRST_WORD}"
"2W-6": "26.{:CASE:CAP_FIRST_WORD}"
"2W-7": "27.{:CASE:CAP_FIRST_WORD}"
"2W-8": "28.{:CASE:CAP_FIRST_WORD}"
"2W-9": "29.{:CASE:CAP_FIRST_WORD}"
"3-B": "3.{:CASE:CAP_FIRST_WORD}"
"3-BD": "33.{:CASE:CAP_FIRST_WORD}"
"3-BZ": "300.{:CASE:CAP_FIRST_WORD}"
"30B": "30.{:CASE:CAP_FIRST_WORD}"
"34-B": "34.{:CASE:CAP_FIRST_WORD}"
"34EUB": "43.{:CASE:CAP_FIRST_WORD}"
"35B": "35.{:CASE:CAP_FIRST_WORD}"
"35EUB": "53.{:CASE:CAP_FIRST_WORD}"
"3EU6B": "63.{:CASE:CAP_FIRST_WORD}"
"3EU7B": "73.{:CASE:CAP_FIRST_WORD}"
"3EUB8": "83.{:CASE:CAP_FIRST_WORD}"
"3EUB9": "93.{:CASE:CAP_FIRST_WORD}"
"3W-6": "36.{:CASE:CAP_FIRST_WORD}"
"3W-7": "37.{:CASE:CAP_FIRST_WORD}"
"3W-8": "38.{:CASE:CAP_FIRST_WORD}"
"3W-9": "39.{:CASE:CAP_FIRST_WORD}"
"4-B": "4.{:CASE:CAP_FIRST_WORD}"
"4-BD": "44.{:CASE:CAP_FIRST_WORD}"
"4-BZ": "400.{:CASE:CAP_FIRST_WORD}"
"40B": "40.{:CASE:CAP_FIRST_WORD}"
"45B": "45.{:CASE:CAP_FIRST_WORD}"
"45EUB": "54.{:CASE:CAP_FIRST_WORD}"
"4EU6B": "64.{:CASE:CAP_FIRST_WORD}"
"4EU7B": "74.{:CASE:CAP_FIRST_WORD}"
"4EUB8": "84.{:CASE:CAP_FIRST_WORD}"
"4EUB9": "94.{:CASE:CAP_FIRST_WORD}"
"50B": "50.{:CASE:CAP_FIRST_WORD}"
"5B": "5.{:CASE:CAP_FIRST_WORD}"
"5BD": "55.{:CASE:CAP_FIRST_WORD}"
"5BZ": "500.{:CASE:CAP_FIRST_WORD}"
"5EU6B": "65.{:CASE:CAP_FIRST_WORD}"
"5EU7B": "75.{:CASE:CAP_FIRST_WORD}"
"5EUB8": "85.{:CASE:CAP_FIRST_WORD}"
"5EUB9": "95.{:CASE:CAP_FIRST_WORD}"
"THUBZ": "{:GLUE:000}{:STOP:.}{:CASE:CAP_FIRST_WORD}"
"W-6": "6.{:CASE:CAP_FIRST_WORD}"
"W-67": "67.{:CASE:CAP_FIRST_WORD}"
"W-68": "68.{:CASE:CAP_FIRST_WORD}"
"W-69": "69.{:CASE:CAP_FIRST_WORD}"
"W-6D": "66.{:CASE:CAP_FIRST_WORD}"
"W-6Z": "600.{:CASE:CAP_FIRST_WORD}"
"W-7": "7.{:CASE:CAP_FIRST_WORD}"
"W-78": "78.{:CASE:CAP_FIRST_WORD}"
"W-79": "79.{:CASE:CAP_FIRST_WORD}"
"W-7D": "77.{:CASE:CAP_FIRST_WORD}"
"W-7Z": "700.{:CASE:CAP_FIRST_WORD}"
"W-8": "8.{:CASE:CAP_FIRST_WORD}"
"W-89": "89.{:CASE:CAP_FIRST_WORD}"
"W-8D": "88.{:CASE:CAP_FIRST_WORD}"
"W-8Z": "800.{:CASE:CAP_FIRST_WORD}"
"W-9": "9.{:CASE:CAP_FIRST_WORD}"
"W-9D": "99.{:CASE:CAP_FIRST_WORD}"
"W-9Z": "900.{:CASE:CAP_FIRST_WORD}"
"W4-6": "46.{:CASE:CAP_FIRST_WORD}"
"W4-7": "47.{:CASE:CAP_FIRST_WORD}"
"W4-8": "48.{:CASE:CAP_FIRST_WORD}"
"W4-9": "49.{:CASE:CAP_FIRST_WORD}"
"W56": "56.{:CASE:CAP_FIRST_WORD}"
"W57": "57.{:CASE:CAP_FIRST_WORD}"
"W58": "58.{:CASE:CAP_FIRST_WORD}"
"W59": "59.{:CASE:CAP_FIRST_WORD}"
"WEU67": "76.{:CASE:CAP_FIRST_WORD}"
"WEU68": "86.{:CASE:CAP_FIRST_WORD}"
"WEU69": "96.{:CASE:CAP_FIRST_WORD}"
"WEU78": "87.{:CASE:CAP_FIRST_WORD}"
"WEU79": "97.{:CASE:CAP_FIRST_WORD}"
"WEU89": "98.{:CASE:CAP_FIRST_WORD}"
```

## Ordinals

The following are new [ordinal numeral][] entries.

They follow the same general rules as Plover's default ordinal-related entries.

```yaml
"*69": "6th"
"*79": "7th"
"*89": "8th"
"*9": "9th"
"0*EU69": "60th"
"0*EU79": "70th"
"0*EU89": "80th"
"0*EU9": "90th"
"1*69": "1st"
"1*79": "17th"
"1*89": "18th"
"1*9": "19th"
"1*9D": "11th"
"10*9": "10th"
"12*9": "12th"
"12*EU69": "21st"
"13*9": "13th"
"13*EU69": "31st"
"14*9": "14th"
"15*9": "15th"
"2*69": "26th"
"2*79": "27th"
"2*7BD": "2nd"
"2*89": "28th"
"2*9": "29th"
"20*9": "20th"
"23*RD": "23rd"
"24*9": "24th"
"25*9": "25th"
"30*9": "30th"
"40*9": "40th"
"5*9": "5th"
"50*9": "50th"
```

## Other

The following are new number-related entries involving big numbers and
hyphened-numbers.

```yaml
"10Z": "1000"
"20Z": "2000"
"30Z": "3000"
"40Z": "4000"
"50Z": "5000"
"06Z": "6000"
"07Z": "7000"
"08Z": "8000"
"09Z": "9000"
"PH*L": "{:GLUE:000000}"
"PW*L": "{:GLUE:000000000}"
"S*EFPB": "{:ATTACH:seven-^}"
"T*EPB": "{:ATTACH:ten-^}"
"TPHAO*EUPBD": "{:ATTACH:nine-^}"
"TWO*": "{:ATTACH:two-^}"
"W*UPB": "{:ATTACH:one-^}"
```

## Time

The following are new time-related entries, specifically related to being able
to compactly stroke minutes more granularly.

```yaml
"1*BGD": "{:ATTACH:^:11}"
"10EUBG": "{:ATTACH:^:01}"
"12*BG": "{:ATTACH:^:12}"
"12*EUBG": "{:ATTACH:^:21}"
"13*BG": "{:ATTACH:^:13}"
"13*EUBG": "{:ATTACH:^:31}"
"14*BG": "{:ATTACH:^:14}"
"14*EUBG": "{:ATTACH:^:41}"
"15*EUBG": "{:ATTACH:^:51}"
"1K*6": "{:ATTACH:^:16}"
"1K*7": "{:ATTACH:^:17}"
"1K*8": "{:ATTACH:^:18}"
"1K*9": "{:ATTACH:^:19}"
"2*BGD": "{:ATTACH:^:22}"
"20EUBG": "{:ATTACH:^:02}"
"23*BG": "{:ATTACH:^:23}"
"23*EUBG": "{:ATTACH:^:32}"
"24*BG": "{:ATTACH:^:24}"
"24*EUBG": "{:ATTACH:^:42}"
"25*EUBG": "{:ATTACH:^:52}"
"2K*6": "{:ATTACH:^:26}"
"2K*7": "{:ATTACH:^:27}"
"2K*8": "{:ATTACH:^:28}"
"2K*9": "{:ATTACH:^:29}"
"3*BGD": "{:ATTACH:^:33}"
"30EUBG": "{:ATTACH:^:03}"
"34*BG": "{:ATTACH:^:34}"
"34*EUBG": "{:ATTACH:^:43}"
"35*EUBG": "{:ATTACH:^:53}"
"4*BGD": "{:ATTACH:^:44}"
"40EUBG": "{:ATTACH:^:04}"
"45*EUBG": "{:ATTACH:^:54}"
"K0*6": "{:ATTACH:^:06}"
"K0*7": "{:ATTACH:^:07}"
"K0*8": "{:ATTACH:^:08}"
"K0*9": "{:ATTACH:^:09}"
"K3*6": "{:ATTACH:^:36}"
"K3*7": "{:ATTACH:^:37}"
"K3*8": "{:ATTACH:^:38}"
"K3*9": "{:ATTACH:^:39}"
"K4*6": "{:ATTACH:^:46}"
"K4*7": "{:ATTACH:^:47}"
"K4*8": "{:ATTACH:^:48}"
"K4*9": "{:ATTACH:^:49}"
"K5*6": "{:ATTACH:^:56}"
"K5*7": "{:ATTACH:^:57}"
"K5*8": "{:ATTACH:^:58}"
"K5*9": "{:ATTACH:^:59}"
```

[Georgi]: https://www.gboards.ca/product/georgi
[ordinal numeral]: https://en.wikipedia.org/wiki/Ordinal_numeral
[Stenography Numbers on a Georgi]: https://www.paulfioravanti.com/blog/steno-numbers-georgi/
