"""
Q&A Dictionary

This dictionary containing briefs related to switching between different people
or lines of questioning in a conversation.

More information about the concept of Q&A can be found at:

- http://ilovesteno.com/2014/02/03/the-different-types-of-q-a/
- Platinum Steno Lesson 27 QA video: https://www.youtube.com/watch?v=tEgaJ7hWIvg

More information about the creation of, and reasoning behind, the outlines in
this dictionary can be found at the following blog post:

- Plover For the Record: https://www.paulfioravanti.com/blog/plover-for-the-record/

These briefs might only really be applicable for court reporting, but since
there are Q&A exercises in the Platinum Steno lessons, I have attempted to
port their briefs to Plover (download the lesson 27 materials
[https://platinumsteno.com/downloads/theory-lesson-27/] for free to see the
briefs they use).

For completeness' sake, outlines for other speakers who do not typically come up
in Q&A, but are used by court reporters (The Videographer, The Court Reporter,
The Clerk, and The Bailiff), have been added in. The outlines come from two
sources:

- Platinum Steno Theory Dictionary (NCRS Theory):
  https://platinumsteno.com/downloads/platinum-steno-ncrs-theory-dictionary/
  This would seem to potentially be derived from the theory used by the
  National Court Reporters Association (NCRA): https://www.ncra.org/
- outlines I derived (read: made up) from the `STPHAOEUFPLT`-based outlines for
  The Court (since the Videographer, Court Reporter, Clerk, and Bailiff work
  with or for the Court, I figured their outlines could be grouped together)

Use whichever outlines feel comfortable to you, or make up new ones entirely
like I did!
"""
from typing import Any, List

# Length of the longest supported key (number of strokes).
LONGEST_KEY = 2

_QUESTION_MARKER = "{?}"
_STATEMENT_MARKER = "{.}"
_INTERRUPT_MARKER = "--"
_SPACE = "{^ ^}"
_YIELD = "\n"

_END_QUESTION = f"{_QUESTION_MARKER}{_YIELD}"
_END_STATEMENT = f"{_STATEMENT_MARKER}{_YIELD}"
_INTERRUPT = f"{_INTERRUPT_MARKER}{_YIELD}"

_Q_MARKER = "Q"
_A_MARKER = "A"
_PRE_MARKER = "\t"
_POST_MARKER = "\t"

# ---------------
_PLAINTIFF_LAWYER_1_NAME = "MR. STPHAO" # aka "Mr. Snoo"
_PLAINTIFF_LAWYER_2_NAME = "MR. SKWRAO" # aka "Mr. Screw"
_DEFENSE_LAWYER_1_NAME = "MR. EUFPLT"   # aka "Mr. Ifpelt"
_DEFENSE_LAWYER_2_NAME = "MR. EURBGS"   # aka "Mr. Irbs"
# ---------------

_WITNESS_NAME = "THE WITNESS"
_COURT_NAME = "THE COURT"
_VIDEOGRAPHER_NAME = "THE VIDEOGRAPHER"
_COURT_REPORTER_NAME = "THE COURT REPORTER"
_CLERK_NAME = "THE CLERK"
_BAILIFF_NAME = "THE BAILIFF"
_PRE_NAME = "\t"
_POST_NAME = "{^:  }"

_BYLINE_MARKER = "BY "
_PRE_BYLINE = ""
_POST_BYLINE = ":\n"

_ALL_RIGHT = "All right"
_CORRECT = "Correct"
_I_DONT_KNOW = "I don't know"
_NO = "No"
_NO_SIR = "No, sir"
_OKAY = "Okay"
_RIGHT = "Right"
_SURE = "Sure"
_UH_HUH = "Uh-huh"
_YEAH = "Yeah"
_YES = "Yes"
_YES_SIR = "Yes, sir"

# REF: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#capitalize-next-word
_INITIAL_FORMATTING = "{^}{-|}"

_MARKER = lambda marker: (
    f"{_PRE_MARKER}{marker}{_POST_MARKER}{_INITIAL_FORMATTING}"
)
_QUESTION = _MARKER(_Q_MARKER)
_ANSWER = _MARKER(_A_MARKER)

_NAME = lambda name: (
    f"{_PRE_NAME}{name}{_POST_NAME}{_INITIAL_FORMATTING}"
)
_BYLINE = lambda name: (
    f"{_PRE_BYLINE}{_BYLINE_MARKER}{name}{_POST_BYLINE}{_QUESTION}"
)
_PLAINTIFF_LAWYER_1 = _NAME(_PLAINTIFF_LAWYER_1_NAME)
_PLAINTIFF_LAWYER_1_BYLINE = _BYLINE(_PLAINTIFF_LAWYER_1_NAME)
_PLAINTIFF_LAWYER_2 = _NAME(_PLAINTIFF_LAWYER_2_NAME)
_PLAINTIFF_LAWYER_2_BYLINE = _BYLINE(_PLAINTIFF_LAWYER_2_NAME)
_DEFENSE_LAWYER_1 = _NAME(_DEFENSE_LAWYER_1_NAME)
_DEFENSE_LAWYER_1_BYLINE = _BYLINE(_DEFENSE_LAWYER_1_NAME)
_DEFENSE_LAWYER_2 = _NAME(_DEFENSE_LAWYER_2_NAME)
_DEFENSE_LAWYER_2_BYLINE = _BYLINE(_DEFENSE_LAWYER_2_NAME)
_WITNESS = _NAME(_WITNESS_NAME)
_COURT = _NAME(_COURT_NAME)
_VIDEOGRAPHER = _NAME(_VIDEOGRAPHER_NAME)
_COURT_REPORTER = _NAME(_COURT_REPORTER_NAME)
_CLERK = _NAME(_CLERK_NAME)
_BAILIFF = _NAME(_BAILIFF_NAME)

_ELABORATE = lambda answer: (
    f"{answer}{_STATEMENT_MARKER}{_SPACE}{_INITIAL_FORMATTING}"
)
_ALL_RIGHT_ELABORATE = _ELABORATE(_ALL_RIGHT)
_CORRECT_ELABORATE = _ELABORATE(_CORRECT)
_I_DONT_KNOW_ELABORATE = _ELABORATE(_I_DONT_KNOW)
_NO_ELABORATE = _ELABORATE(_NO)
_NO_SIR_ELABORATE = _ELABORATE(_NO_SIR)
_OKAY_ELABORATE = _ELABORATE(_OKAY)
_RIGHT_ELABORATE = _ELABORATE(_RIGHT)
_SURE_ELABORATE = _ELABORATE(_SURE)
_UH_HUH_ELABORATE = _ELABORATE(_UH_HUH)
_YEAH_ELABORATE = _ELABORATE(_YEAH)
_YES_ELABORATE = _ELABORATE(_YES)
_YES_SIR_ELABORATE = _ELABORATE(_YES_SIR)

_OUTLINES = {
    # Questions: using NCRA `STKPWHR` outline
    "STKPWHR": f"{_END_STATEMENT}{_QUESTION}",
    "STKPWHR*": f"{_QUESTION}",
    "STKPWHR-F": f"{_END_QUESTION}{_QUESTION}",
    "STKPWHR-R": f"{_END_STATEMENT}{_QUESTION}",
    "STKPWHR-RB": f"{_INTERRUPT}{_QUESTION}",
    # Answers: using NCRA `-FRPBLGTS` outline
    "-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}",
    "H-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}",
    "R-FRPBLGTS": f"{_END_STATEMENT}{_ANSWER}",
    "WR-FRPBLGTS": f"{_INTERRUPT}{_ANSWER}",
    # Plaintiff Lawyer 1 ("Mr. Snoo"): using NCRA `STPHAO` outline
    "STPHAO": f"{_PLAINTIFF_LAWYER_1}",
    "STPHAO*": f"{_PLAINTIFF_LAWYER_1_BYLINE}",
    "STPHAO*F": f"{_END_QUESTION}{_PLAINTIFF_LAWYER_1_BYLINE}",
    "STPHAO*R": f"{_END_STATEMENT}{_PLAINTIFF_LAWYER_1_BYLINE}",
    "STPHAO*RB": f"{_INTERRUPT}{_PLAINTIFF_LAWYER_1_BYLINE}",
    "STPHAOF": f"{_END_QUESTION}{_PLAINTIFF_LAWYER_1}",
    "STPHAOR": f"{_END_STATEMENT}{_PLAINTIFF_LAWYER_1}",
    "STPHAORB": f"{_INTERRUPT}{_PLAINTIFF_LAWYER_1}",
    # Plaintiff Lawyer 2 ("Mr. Screw"): using NCRA `SKWRAO` outline
    "SKWRAO": f"{_PLAINTIFF_LAWYER_2}",
    "SKWRAO*": f"{_PLAINTIFF_LAWYER_2_BYLINE}",
    "SKWRAO*F": f"{_END_QUESTION}{_PLAINTIFF_LAWYER_2_BYLINE}",
    "SKWRAO*R": f"{_END_STATEMENT}{_PLAINTIFF_LAWYER_2_BYLINE}",
    "SKWRAO*RB": f"{_INTERRUPT}{_PLAINTIFF_LAWYER_2_BYLINE}",
    "SKWRAOF": f"{_END_QUESTION}{_PLAINTIFF_LAWYER_2}",
    "SKWRAOR": f"{_END_STATEMENT}{_PLAINTIFF_LAWYER_2}",
    "SKWRAORB": f"{_INTERRUPT}{_PLAINTIFF_LAWYER_2}",
    # Defense Lawyer 1 ("Mr. Ifpelt"): using NCRA `EUFPLT` outline
    "*EUFPLT": f"{_DEFENSE_LAWYER_1_BYLINE}",
    "EUFPLT": f"{_DEFENSE_LAWYER_1}",
    "H*EUFPLT": f"{_END_QUESTION}{_DEFENSE_LAWYER_1_BYLINE}",
    "HEUFPLT": f"{_END_QUESTION}{_DEFENSE_LAWYER_1}",
    "R*EUFPLT": f"{_END_STATEMENT}{_DEFENSE_LAWYER_1_BYLINE}",
    "REUFPLT": f"{_END_STATEMENT}{_DEFENSE_LAWYER_1}",
    "WR*EUFPLT": f"{_INTERRUPT}{_DEFENSE_LAWYER_1_BYLINE}",
    "WREUFPLT": f"{_INTERRUPT}{_DEFENSE_LAWYER_1}",
    # Defense Lawyer 2 ("Mr. Irbs"): using NCRA `EURBGS` outline
    "*EURBGS": f"{_DEFENSE_LAWYER_2_BYLINE}",
    "EURBGS": f"{_DEFENSE_LAWYER_2}",
    "H*EURBGS": f"{_END_QUESTION}{_DEFENSE_LAWYER_2_BYLINE}",
    "HEURBGS": f"{_END_QUESTION}{_DEFENSE_LAWYER_2}",
    "R*EURBGS": f"{_END_STATEMENT}{_DEFENSE_LAWYER_2_BYLINE}",
    "REURBGS": f"{_END_STATEMENT}{_DEFENSE_LAWYER_2}",
    "WR*EURBGS": f"{_INTERRUPT}{_DEFENSE_LAWYER_2_BYLINE}",
    "WREURBGS": f"{_INTERRUPT}{_DEFENSE_LAWYER_2}",
    # The Witness: using NCRA `W-PBS/W-PBS` outline
    "W-PBS/W-PBS": f"{_WITNESS}",
    "WH-PBS/WH-PBS": f"{_END_QUESTION}{_WITNESS}",
    "WR*PBS/WR*PBS": f"{_INTERRUPT}{_WITNESS}",
    "WR-PBS/WR-PBS": f"{_END_STATEMENT}{_WITNESS}",
    # The Witness: using custom `SKWRAOEURBGS` outline
    "SKPWHRAOEURBGS": f"{_INTERRUPT}{_WITNESS}",
    "SKWHRAOEURBGS": f"{_END_QUESTION}{_WITNESS}",
    "SKWRAO*EURBGS": f"{_END_STATEMENT}{_WITNESS}",
    "SKWRAOEUFRBGS": f"{_END_QUESTION}{_WITNESS}",
    "SKWRAOEUFRPBGS": f"{_INTERRUPT}{_WITNESS}",
    "SKWRAOEURBGS": f"{_WITNESS}",
    # The Court: using NCRA `STPHAOEUFPLT` outline
    "STPHAO*EUFPLT": f"{_END_QUESTION}{_COURT}",
    "STPHAOEUFPLT": f"{_COURT}",
    "STPHAOEUFRPBLT": f"{_INTERRUPT}{_COURT}",
    "STPHAOEUFRPLT": f"{_END_STATEMENT}{_COURT}",
    # The Videographer: using NCRA `SREUD/SREUD` outline
    "SR*EURD/SR*EURD": f"{_INTERRUPT}{_VIDEOGRAPHER}",
    "SREUD/SREUD": f"{_VIDEOGRAPHER}",
    "SREUFD/SREUFD": f"{_END_QUESTION}{_VIDEOGRAPHER}",
    "SREURD/SREURD": f"{_END_STATEMENT}{_VIDEOGRAPHER}",
    # The Videographer: using custom `STPHAEUFPLT` outline
    "STPHA*EUFPLT": f"{_END_QUESTION}{_VIDEOGRAPHER}",
    "STPHAEUFPLT": f"{_VIDEOGRAPHER}",
    "STPHAEUFRPBLT": f"{_INTERRUPT}{_VIDEOGRAPHER}",
    "STPHAEUFRPLT": f"{_END_STATEMENT}{_VIDEOGRAPHER}",
    # The Court Reporter: using NCRA `RORP/RORP` outline
    "RO*FRP/RO*FRP": f"{_INTERRUPT}{_COURT_REPORTER}",
    "RO*RP/RO*RP": f"{_END_STATEMENT}{_COURT_REPORTER}",
    "ROFRP/ROFRP": f"{_END_QUESTION}{_COURT_REPORTER}",
    "RORP/RORP": f"{_COURT_REPORTER}",
    # The Court Reporter: using custom `STPHOEUFPLT` outline
    "STPHO*EUFPLT": f"{_END_QUESTION}{_COURT_REPORTER}",
    "STPHOEUFPLT": f"{_COURT_REPORTER}",
    "STPHOEUFRPBLT": f"{_INTERRUPT}{_COURT_REPORTER}",
    "STPHOEUFRPLT": f"{_END_STATEMENT}{_COURT_REPORTER}",
    # The Clerk: using NCRA `KHRERBG/KHRERBG` outline
    "KHR*ERBG/KHR*ERBG": f"{_END_STATEMENT}{_CLERK}",
    "KHREFRBG/KHREFRBG": f"{_END_QUESTION}{_CLERK}",
    "KHREFRPBG/KHREFRPBG": f"{_INTERRUPT}{_CLERK}",
    "KHRERBG/KHRERBG": f"{_CLERK}",
    # The Clerk: using custom `STPHAOEFPLT` outline
    "STPHAO*EFPLT": f"{_END_QUESTION}{_CLERK}",
    "STPHAOEFPLT": f"{_CLERK}",
    "STPHAOEFRPBLT": f"{_INTERRUPT}{_CLERK}",
    "STPHAOEFRPLT": f"{_END_STATEMENT}{_CLERK}",
    # The Bailiff: using NCRA `PWHR-F/PWHR-F` outline
    "PWHR*F/PWHR*F": f"{_END_QUESTION}{_BAILIFF}",
    "PWHR*FR/PWHR*FR": f"{_INTERRUPT}{_BAILIFF}",
    "PWHR-F/PWHR-F": f"{_BAILIFF}",
    "PWHR-FR/PWHR-FR": f"{_END_STATEMENT}{_BAILIFF}",
    # The Bailiff: using custom `STPHAOUFPLT` outline
    "STPHAO*UFPLT": f"{_END_QUESTION}{_BAILIFF}",
    "STPHAOUFPLT": f"{_BAILIFF}",
    "STPHAOUFRPBLT": f"{_INTERRUPT}{_BAILIFF}",
    "STPHAOUFRPLT": f"{_END_STATEMENT}{_BAILIFF}",
    # Lawyer Statement + Elaborate: using NCRA `STKPWHR` outline
    "STKPWHR-BG": f"{_END_STATEMENT}{_QUESTION}{_OKAY_ELABORATE}",
    "STKPWHR-RT": f"{_END_STATEMENT}{_QUESTION}{_ALL_RIGHT_ELABORATE}",
    # Lawyer Question + Yield Control: using NCRA `STKPWHR` outline
    "STKPWHR*BG": f"{_END_STATEMENT}{_QUESTION}{_OKAY}{_END_QUESTION}{_ANSWER}",
    "STKPWHR*RT": f"{_END_STATEMENT}{_QUESTION}{_ALL_RIGHT}{_END_QUESTION}{_ANSWER}",
    # Witness Answer + Elaborate: using NCRA `-FRPBLGTS` outline
    "HUFRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_UH_HUH_ELABORATE}",
    "KR-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_CORRECT_ELABORATE}",
    "KWR-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_YES_ELABORATE}",
    "KWREFRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_YEAH_ELABORATE}",
    "KWROEFRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_I_DONT_KNOW_ELABORATE}",
    "SH-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_SURE_ELABORATE}",
    "SKWR-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_YES_SIR_ELABORATE}",
    "STPH-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_NO_SIR_ELABORATE}",
    "TKPH-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_I_DONT_KNOW_ELABORATE}",
    "TPH-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_NO_ELABORATE}",
    "TR-FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_RIGHT_ELABORATE}",
    # Witness Answer + Yield Control: using NCRA `-FRPBLGTS` outline
    "H*UFRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_UH_HUH}{_END_STATEMENT}{_QUESTION}",
    "KR*FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_CORRECT}{_END_STATEMENT}{_QUESTION}",
    "KWR*EFRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_YEAH}{_END_STATEMENT}{_QUESTION}",
    "KWR*FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_YES}{_END_STATEMENT}{_QUESTION}",
    "KWRO*EFRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_I_DONT_KNOW}{_END_STATEMENT}{_QUESTION}",
    "SH*FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_SURE}{_END_STATEMENT}{_QUESTION}",
    "SKWR*FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_YES_SIR}{_END_STATEMENT}{_QUESTION}",
    "STPH*FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_NO_SIR}{_END_STATEMENT}{_QUESTION}",
    "TKPH*FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_I_DONT_KNOW}{_END_STATEMENT}{_QUESTION}",
    "TPH*FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_NO}{_END_STATEMENT}{_QUESTION}",
    "TR*FRPBLGTS": f"{_END_QUESTION}{_ANSWER}{_RIGHT}{_END_STATEMENT}{_QUESTION}"
}

# Lookup function: return the translation for <key> (a tuple of strokes)
# or raise KeyError if no translation is available/possible.
def lookup(key: List[str]) -> str:
    """
    Convert chorded Plover stroke into Q&A output
    """
    assert len(key) <= LONGEST_KEY, "%d/%d" % (len(key), LONGEST_KEY)
    return _OUTLINES["/".join(key)]

# Optional: return an array of stroke tuples that would translate back
# to <text> (an empty array if not possible).
def reverse_lookup(_text: str) -> List[Any]:
    """
    No reverse lookup provided
    """
    return []
