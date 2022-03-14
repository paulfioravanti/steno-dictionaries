'''
Japanese Romaji lookup dictionary for Plover.

Converts a steno chord into a romaji string to be used as input
for an Input Method Editor (IME) like:
- Google Japanese input IME (https://www.google.co.jp/ime/)
- Kotoeri (https://en.wikipedia.org/wiki/Kotoeri)
'''

import re
from functools import reduce, lru_cache

# Length of the longest supported key (number of strokes).
LONGEST_KEY = 1

__STANDALONE_COMMANDS = {
    # No spaces in Japanese means asterisk cannot delete by "word".
    "*": "{#BACKSPACE}{^}"
}
__STANDALONE_STROKES = {
    "T-T": "tta", # った
    "TPH": "nn" # ん
}

__CHORD_PARTS = re.compile(r"([STKPWHR]*)([-AO*EU]*)([FRPBLGTSDZ]*)")

__VOWELS_ROMAJI = ("EU", "i") # い

__ASTERISK = "*"

__Z_CHORD = re.compile(rf"S([AO]+[{__ASTERISK}]|[{__ASTERISK}][EU]+)") # ざ…
__Z_CHARACTER = "z"

# https://en.wikipedia.org/wiki/Wi_(kana)
# https://en.wikipedia.org/wiki/We_(kana)
__WI_WE_CHORD = re.compile(rf"W[{__ASTERISK}](E|EU)") # ゐ/ヰ, ゑ/ヱ
__WI_WE_CHARACTER = "wy"

__TI_CHORD = "TEU"
__TI_CHARACTER = "texi"

__INITIAL_ROMAJI = {
    # single character/compound chords
    "TP": "f", # ふぁ…
    "PH": "m", # ま…
    "KWR": "y", # や…
    "TPH": "n", # な…
    "TKPW": "g", # が…
    "STKPW": "z", # ざ…
    "TK": "d", # だ…
    "PW": "b", # ば…
    "KR": "ky", # きゃ…
    "TKPWR": "gy", # ぎゃ…
    "TPHR": "ny", # にゃ…
    "HR": "hy", # ひゃ…
    "PWR": "by", # びゃ…
    "PR": "py", # ぴゃ…
    "PHR": "my", # みゃ…
    "WR": "ry", # りゃ…
    "SKWR": "j", # じゃ…
    "KH": "ch", # ちゃ…
    "SR": "v", # ゔぁ…
    # multi-character chords
    "SK": "suk", # す+ か…
    "STP": "suf", # す+ ふぁ…
    "SPH": "sum", # す+ ま…
    "STPH": "sun", # す+ な…
    "STK": "sud", # す+ だ…
    "SPW": "sub", # す+ ば…
    "SKR": "suky", # す+ きゃ…
    "STKPWR": "sugy", # す+ ぎゃ…
    "STPHR": "suny", # す+ にゃ…
    "SHR": "suhy", # す+ ひゃ…
    "SPWR": "suby", # す+ びゃ…
    "SPR": "supy", # す+ ぴゃ…
    "SPHR": "sumy", # す+ みゃ…
    "SWR": "sury", # す+ りゃ…
    "SKH": "such" # す+ ちゃ…
}

# Hepburn romanisation used as a general rule, but Kunrei-shiki romanisation
# used if the number of characters output is less than Hepburn.
# NOTE: Order is important in this array.
__FINAL_ROMAJI = [
    ("FPL", "-"), # ー
    ("FP", "ti"), # ち
    ("RB", "si"), # し
    ("PBLG", "ji"), # じ
    ("PB", "nn"), # ん
    ("PL", "ma"), # ま
    ("BG", "ku"), # く
    ("TS", "tu"), # つ
    ("F", "fu"), # ふ
    ("R", "ru"), # る
    ("P", "pu"), # ぷ
    ("B", "bu"), # ぶ
    ("L", "xtu"), # っ
    ("G", "gu"), # ぐ
    ("T", "ta"), # た
    ("S", "su") # す
]

__BLANK_CHORD_CHARACTER = "-"

# https://en.wikipedia.org/wiki/Ch%C5%8Donpu
__PROLONGED_VOWEL_CHORD = "DZ" # かあ…
__PROLONGED_VOWEL_SMALL_CHARACTER_STROKE = ( # かぁ…
    re.compile(rf"[{__ASTERISK}][A-z]*{__PROLONGED_VOWEL_CHORD}")
)

# https://en.wikipedia.org/wiki/Sokuon
__SMALL_CHARACTER_CHORD = "Z" # ぁ…
__SMALL_CHARACTER_PREFIX = "x"

__REPEAT_CHARACTERS_CHORD = "D" # かか…
__REPEAT_CHARACTERS_STROKE = (
    re.compile(rf"[^{__ASTERISK}]+{__REPEAT_CHARACTERS_CHORD}")
)

__REPEAT_CHARACTERS_DIACRITIC_STROKE = ( # かが…
    re.compile(rf"[{__ASTERISK}][A-z]*{__REPEAT_CHARACTERS_CHORD}")
)
__EXCEPTION_DIACRITIC_SOUNDS = {
    "fu": "b", # ふ=>ぶ
    "chi": "d" # ち=>ぢ
}
# NOTE: Going from dakuten to handakuten is prioritised over going from dakuten
# to no diacritic, which means the following diacritic reversals are not
# possible: "b": "h", "by": "hy"
# https://en.wikipedia.org/wiki/Dakuten_and_handakuten
__DIACRITIC_SOUNDS = {
    "k": "g",
    "s": "z",
    "t": "d",
    "h": "b",
    "b": "p",
    "ky": "gy",
    "hy": "by",
    "by": "py",
    "ch": "dy",
    "sh": "j",
    # diacritic reversals
    "g": "k",
    "z": "s",
    "d": "t",
    "p": "b",
    "gy": "ky",
    "py": "by",
    "dy": "ch",
    "j": "sh"
}

__NON_VOWELS = re.compile(r"[^AEIOU]", re.IGNORECASE)
__VOWELS = re.compile(r"[AEIOU]", re.IGNORECASE)

# Lookup function: return the translation for <key> (a tuple of strokes)
# or raise KeyError if no translation is available/possible.
def lookup(key):
    '''
    Convert chorded Plover stroke into equivalent romaji
    '''
    assert len(key) <= LONGEST_KEY
    stroke = key[0]

    if standalone_command := __STANDALONE_COMMANDS.get(stroke):
        return standalone_command

    if standalone_stroke := __STANDALONE_STROKES.get(stroke):
        return f'{{^{standalone_stroke}^}}'

    if not (chord := __CHORD_PARTS.match(stroke)):
        raise KeyError

    romaji = __convert_to_romaji(chord)

    if __is_invalid_romaji(romaji):
        raise KeyError

    return f'{{^{romaji}^}}'

# Optional: return an array of stroke tuples that would translate back
# to <text> (an empty array if not possible).
def reverse_lookup(_text):
    '''
    No reverse lookup provided
    '''
    return []

# PRIVATE

def __convert_to_romaji(chord):
    initial, vowels, final = chord.group(1, 2, 3)
    initial = __initial_to_romaji(initial, vowels)
    return __final_to_romaji(initial, final)

def __initial_to_romaji(initial, vowels):
    if initial is None:
        return __vowels_to_romaji(vowels)

    if exception_chord := __exception_chords_to_romaji(initial, vowels):
        return exception_chord

    initial = __INITIAL_ROMAJI.get(initial) or initial.lower()
    vowels = __vowels_to_romaji(vowels)

    return initial + vowels

# https://docs.python.org/3/library/functools.html#functools.lru_cache
@lru_cache
def __vowels_to_romaji(vowels):
    return vowels.replace(*__VOWELS_ROMAJI).lower()

def __exception_chords_to_romaji(initial, vowels):
    if __Z_CHORD.match(initial + vowels):
        return __exception_chord_romaji(__Z_CHARACTER, vowels)
    if __WI_WE_CHORD.match(initial + vowels):
        return __exception_chord_romaji(__WI_WE_CHARACTER, vowels)
    if initial + vowels == __TI_CHORD:
        return __TI_CHARACTER

    return None

def __exception_chord_romaji(initial_character, vowels):
    vowels = __vowels_to_romaji(__remove_asterisk(vowels))
    return initial_character + vowels

def __remove_asterisk(string):
    return string.replace(__ASTERISK, "")

def __final_to_romaji(initial, final):
    final = reduce(__chord_to_romaji, __FINAL_ROMAJI, final)
    initial = __remove_blank_chord(initial)

    if __has_prolonged_vowel_small_character_chord(initial + final):
        initial, final = __add_prolonged_vowel_small_character(initial, final)
    elif __has_prolonged_vowel_chord(final):
        final = __add_prolonged_vowel(initial, final)
    elif __has_small_character_chord(final):
        initial, final = __add_small_character(initial, final)
    elif __has_repeat_character_chord(initial + final):
        final = __add_repeated_characters(initial, final)
    elif __has_repeat_character_diacritic_chord(initial + final):
        initial, final = __add_repeated_diacritic_characters(initial, final)

    return initial + final

def __chord_to_romaji(acc, chord_romaji):
    return acc.replace(chord_romaji[0], chord_romaji[1])

def __remove_blank_chord(chord):
    if chord.startswith(__BLANK_CHORD_CHARACTER):
        return chord.replace(__BLANK_CHORD_CHARACTER, "")

    return chord

def __has_prolonged_vowel_small_character_chord(stroke):
    return __PROLONGED_VOWEL_SMALL_CHARACTER_STROKE.search(stroke)

def __add_prolonged_vowel_small_character(initial, final):
    initial = __remove_asterisk(initial)
    final = final.replace(__PROLONGED_VOWEL_CHORD, "")
    final = final + __SMALL_CHARACTER_PREFIX + (initial + final)[-1]
    return (initial, final)

def __has_prolonged_vowel_chord(stroke):
    return stroke.endswith(__PROLONGED_VOWEL_CHORD)

def __add_prolonged_vowel(initial, final):
    final = final.replace(__PROLONGED_VOWEL_CHORD, "")
    return final + (initial + final)[-1]

def __has_small_character_chord(stroke):
    return stroke.endswith(__SMALL_CHARACTER_CHORD)

def __add_small_character(initial, final):
    final = final.replace(__SMALL_CHARACTER_CHORD, "")
    initial = __SMALL_CHARACTER_PREFIX + initial
    return (initial, final)

def __has_repeat_character_chord(stroke):
    return __REPEAT_CHARACTERS_STROKE.match(stroke)

def __add_repeated_characters(initial, final):
    return (final + initial + final).replace(__REPEAT_CHARACTERS_CHORD, "")

def __has_repeat_character_diacritic_chord(stroke):
    return __REPEAT_CHARACTERS_DIACRITIC_STROKE.search(stroke)

def __add_repeated_diacritic_characters(initial, final):
    initial = __remove_asterisk(initial)

    if diacritic := __diacritic_sound(initial):
        final = diacritic + re.sub(__NON_VOWELS, "", initial)
    elif diacritic := __diacritic_sound(final[:-1]):
        final = final.replace(__REPEAT_CHARACTERS_CHORD, "")
        final = final + diacritic + final[-1:]
    else:
        final = ""

    return (initial, final)

def __diacritic_sound(initial):
    return (
        __EXCEPTION_DIACRITIC_SOUNDS.get(initial)
        or __DIACRITIC_SOUNDS.get(re.sub(__VOWELS, "", initial))
    )

def __is_invalid_romaji(romaji):
    # If any part of a chord is left untranslated from the original chord,
    # (i.e. still in uppercase) consider it an invalid stroke for romaji output.
    return any(character.isupper() for character in romaji)
