# Numbers Dictionary

This dictionary contains number-specific entries that _do not_ currently have
a named entry in the main Plover dictionary.

They are divided into the following dictionary types:

<!-- vim-markdown-toc GFM -->

* [List](#list)
* [Ordinals](#ordinals)
* [Other](#other)
* [Time](#time)
* [Alt](#alt)

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
"0B": "0.{-|}"
"0EU6B": "60.{-|}"
"0EU7B": "70.{-|}"
"0EUB8": "80.{-|}"
"0EUB9": "90.{-|}"
"1-B": "1.{-|}"
"1-BD": "11.{-|}"
"1-BZ": "100.{-|}"
"10B": "10.{-|}"
"12-B": "12.{-|}"
"12EUB": "21.{-|}"
"13-B": "13.{-|}"
"13EUB": "31.{-|}"
"14-B": "14.{-|}"
"14EUB": "41.{-|}"
"15B": "15.{-|}"
"15EUB": "51.{-|}"
"1EU6B": "61.{-|}"
"1EU7B": "71.{-|}"
"1EUB8": "81.{-|}"
"1EUB9": "91.{-|}"
"1W-6": "16.{-|}"
"1W-7": "17.{-|}"
"1W-8": "18.{-|}"
"1W-9": "19.{-|}"
"2-B": "2.{-|}"
"2-BD": "22.{-|}"
"2-BZ": "200.{-|}"
"20B": "20.{-|}"
"23-B": "23.{-|}"
"23EUB": "32.{-|}"
"24-B": "24.{-|}"
"24EUB": "42.{-|}"
"25B": "25.{-|}"
"25EUB": "52.{-|}"
"2EU6B": "62.{-|}"
"2EU7B": "72.{-|}"
"2EUB8": "82.{-|}"
"2EUB9": "92.{-|}"
"2W-6": "26.{-|}"
"2W-7": "27.{-|}"
"2W-8": "28.{-|}"
"2W-9": "29.{-|}"
"3-B": "3.{-|}"
"3-BD": "33.{-|}"
"3-BZ": "300.{-|}"
"30B": "30.{-|}"
"34-B": "34.{-|}"
"34EUB": "43.{-|}"
"35B": "35.{-|}"
"35EUB": "53.{-|}"
"3EU6B": "63.{-|}"
"3EU7B": "73.{-|}"
"3EUB8": "83.{-|}"
"3EUB9": "93.{-|}"
"3W-6": "36.{-|}"
"3W-7": "37.{-|}"
"3W-8": "38.{-|}"
"3W-9": "39.{-|}"
"4-B": "4.{-|}"
"4-BD": "44.{-|}"
"4-BZ": "400.{-|}"
"40B": "40.{-|}"
"45B": "45.{-|}"
"45EUB": "54.{-|}"
"4EU6B": "64.{-|}"
"4EU7B": "74.{-|}"
"4EUB8": "84.{-|}"
"4EUB9": "94.{-|}"
"50B": "50.{-|}"
"5B": "5.{-|}"
"5BD": "55.{-|}"
"5BZ": "500.{-|}"
"5EU6B": "65.{-|}"
"5EU7B": "75.{-|}"
"5EUB8": "85.{-|}"
"5EUB9": "95.{-|}"
"THUBZ": "{&000}{.}{-|}"
"W-6": "6.{-|}"
"W-67": "67.{-|}"
"W-68": "68.{-|}"
"W-69": "69.{-|}"
"W-6D": "66.{-|}"
"W-6Z": "600.{-|}"
"W-7": "7.{-|}"
"W-78": "78.{-|}"
"W-79": "79.{-|}"
"W-7D": "77.{-|}"
"W-7Z": "700.{-|}"
"W-8": "8.{-|}"
"W-89": "89.{-|}"
"W-8D": "88.{-|}"
"W-8Z": "800.{-|}"
"W-9": "9.{-|}"
"W-9D": "99.{-|}"
"W-9Z": "900.{-|}"
"W4-6": "46.{-|}"
"W4-7": "47.{-|}"
"W4-8": "48.{-|}"
"W4-9": "49.{-|}"
"W56": "56.{-|}"
"W57": "57.{-|}"
"W58": "58.{-|}"
"W59": "59.{-|}"
"WEU67": "76.{-|}"
"WEU68": "86.{-|}"
"WEU69": "96.{-|}"
"WEU78": "87.{-|}"
"WEU79": "97.{-|}"
"WEU89": "98.{-|}"
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
"06Z": "6000"
"07Z": "7000"
"08Z": "8000"
"09Z": "9000"
"10Z": "1000"
"20Z": "2000"
"30Z": "3000"
"40Z": "4000"
"50Z": "5000"
"PH*L": "{&000000}"
"PW*L": "{&000000000}"
"S*EFPB": "{seven-^}"
"T*EPB": "{ten-^}"
"TPHAO*EUPBD": "{nine-^}"
"TWO*": "{two-^}"
"W*UPB": "{one-^}"
```

## Time

The following are new time-related entries, specifically related to being able
to compactly stroke minutes more granularly.

```yaml
"1*BGD": "{^:11}"
"10EUBG": "{^:01}"
"12*BG": "{^:12}"
"12*EUBG": "{^:21}"
"13*BG": "{^:13}"
"13*EUBG": "{^:31}"
"14*BG": "{^:14}"
"14*EUBG": "{^:41}"
"15*EUBG": "{^:51}"
"1K*6": "{^:16}"
"1K*7": "{^:17}"
"1K*8": "{^:18}"
"1K*9": "{^:19}"
"2*BGD": "{^:22}"
"20EUBG": "{^:02}"
"23*BG": "{^:23}"
"23*EUBG": "{^:32}"
"24*BG": "{^:24}"
"24*EUBG": "{^:42}"
"25*EUBG": "{^:52}"
"2K*6": "{^:26}"
"2K*7": "{^:27}"
"2K*8": "{^:28}"
"2K*9": "{^:29}"
"3*BGD": "{^:33}"
"30EUBG": "{^:03}"
"34*BG": "{^:34}"
"34*EUBG": "{^:43}"
"35*EUBG": "{^:53}"
"4*BGD": "{^:44}"
"40EUBG": "{^:04}"
"45*EUBG": "{^:54}"
"K0*6": "{^:06}"
"K0*7": "{^:07}"
"K0*8": "{^:08}"
"K0*9": "{^:09}"
"K3*6": "{^:36}"
"K3*7": "{^:37}"
"K3*8": "{^:38}"
"K3*9": "{^:39}"
"K4*6": "{^:46}"
"K4*7": "{^:47}"
"K4*8": "{^:48}"
"K4*9": "{^:49}"
"K5*6": "{^:56}"
"K5*7": "{^:57}"
"K5*8": "{^:58}"
"K5*9": "{^:59}"
```

## Alt

The following are entries that could potentially go in the Alt dictionary, but
since they relate to numbers, I've decided to keep them here.

```yaml
"KHR-BG": "{^:00}" # CLocK
"TH*UZ": "{^,000}" # THoUSand
```

[Georgi]: https://www.gboards.ca/product/georgi
[ordinal numeral]: https://en.wikipedia.org/wiki/Ordinal_numeral
[Stenography Numbers on a Georgi]: https://www.paulfioravanti.com/blog/steno-numbers-georgi/
