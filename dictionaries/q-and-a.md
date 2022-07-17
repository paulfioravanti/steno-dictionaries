# Q&A Dictionary

This dictionary containing briefs related to switching between different people
or lines of questioning in a conversation.

More information about the concept of Q&A can be found in the
[Platinum Steno Lesson 27 QA video][], and in my _[Plover For the Record][]_
blog post.

These briefs might only really be applicable for court-reporting, but since
there are Q&A exercises in the Platinum Steno lessons, I have attempted to
port their briefs to Plover (download the
[lesson 27 materials][Platinum Steno Lesson 27 lesson materials] for free to see
the briefs they use).

<!-- vim-markdown-toc GFM -->

* [Questions](#questions)
* [Answers](#answers)
* [Plaintiff Lawyer 1](#plaintiff-lawyer-1)
* [Plaintiff Lawyer 2](#plaintiff-lawyer-2)
* [Defense Lawyer 1](#defense-lawyer-1)
* [Defense Lawyer 2](#defense-lawyer-2)
* [The Court](#the-court)
* [The Witness](#the-witness)
* [Immediate Responses](#immediate-responses)
  - [Lawyer Statement + Elaborate](#lawyer-statement--elaborate)
  - [Lawyer Question + Yield Control](#lawyer-question--yield-control)
  - [Witness Answer + Elaborate](#witness-answer--elaborate)
  - [Witness Answer + Yield Control](#witness-answer--yield-control)

<!-- vim-markdown-toc -->

## Questions

```yaml
"STKPWHR": "{:STOP:.}{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"   # Question following statement
"STKPWHR*": "{:ATTACH:\\tQ\\t}{:CASE:CAP_FIRST_WORD}"              # Initial question
"STKPWHR-F": "{:ATTACH:?\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"         # Question following question
"STKPWHR-R": "{:STOP:.}{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}" # Question following statement
"STKPWHR-RB": "--{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"       # Interrupting question
```

## Answers

```yaml
"-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}{:CASE:CAP_FIRST_WORD}"          # Answer following question
"H-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}{:CASE:CAP_FIRST_WORD}"         # Answer following question
"R-FRPBLGTS": "{:STOP:.}{:ATTACH:\\n\\tA\\t}{:CASE:CAP_FIRST_WORD}" # Answer following statement
"WR-FRPBLGTS": "--{:ATTACH:\\n\\tA\\t}{:CASE:CAP_FIRST_WORD}"       # Interrupting answer
```

## Plaintiff Lawyer 1

AKA "Mr. Snoo"

```yaml
"STPHAO": "{:ATTACH:\\tMR. STPHAO:  }{:CASE:CAP_FIRST_WORD}"                       # Initial name
"STPHAO*": "{:ATTACH:BY MR. STPHAO:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"              # Initial byline
"STPHAO*F": "{:ATTACH:?\\nBY MR. STPHAO:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"         # Byline following question
"STPHAO*R": "{:STOP:.}{:ATTACH:\\nBY MR. STPHAO:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}" # Byline following statement
"STPHAO*RB": "--{:ATTACH:\\nBY MR. STPHAO:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"       # Byline following interruption
"STPHAO-F": "{:ATTACH:?\\n\\tMR. STPHAO:  }{:CASE:CAP_FIRST_WORD}"                 # Name inline following question
"STPHAO-R": "{:STOP:.}{:ATTACH:\\n\\tMR. STPHAO:  }{:CASE:CAP_FIRST_WORD}"         # Name inline following statement
"STPHAO-RB": "--{:ATTACH:\\n\\tMR. STPHAO:  }{:CASE:CAP_FIRST_WORD}"               # Interrupting name inline
```

## Plaintiff Lawyer 2

AKA "Mr. Irbs"

```yaml
"SKWRAO": "{:ATTACH:\\tMR. SKWRAO:  }{:CASE:CAP_FIRST_WORD}"                       # Initial name
"SKWRAO*": "{:ATTACH:BY MR. SKWRAO:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"              # Initial byline
"SKWRAO*F": "{:ATTACH:?\\nBY MR. SKWRAO:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"         # Byline following question
"SKWRAO*R": "{:STOP:.}{:ATTACH:\\nBY MR. SKWRAO:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}" # Byline following statement
"SKWRAO*RB": "--{:ATTACH:\\nBY MR. SKWRAO:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"       # Byline following interruption
"SKWRAO-F": "{:ATTACH:?\\n\\tMR. SKWRAO:  }{:CASE:CAP_FIRST_WORD}"                 # Name inline following question
"SKWRAO-R": "{:STOP:.}{:ATTACH:\\n\\tMR. SKWRAO:  }{:CASE:CAP_FIRST_WORD}"         # Name inline following statement
"SKWRAO-RB": "--{:ATTACH:\\n\\tMR. SKWRAO:  }{:CASE:CAP_FIRST_WORD}"               # Interrupting name inline
```

## Defense Lawyer 1

AKA "Mr. Ifpelt"

```yaml
"*EUFPLT": "{:ATTACH:BY MR. EUFPLT:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"              # Initial byline
"EUFPLT": "{:ATTACH:\\tMR. EUFPLT:  }{:CASE:CAP_FIRST_WORD}"                       # Initial name
"H*EUFPLT": "{:ATTACH:?\\nBY MR. EUFPLT:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"         # Byline following question
"H-EUFPLT": "{:ATTACH:?\\n\\tMR. EUFPLT:  }{:CASE:CAP_FIRST_WORD}"                 # Name inline following question
"R*EUFPLT": "{:STOP:.}{:ATTACH:\\nBY MR. EUFPLT:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}" # Byline following statement
"R-EUFPLT": "{:STOP:.}{:ATTACH:\\n\\tMR. EUFPLT:  }{:CASE:CAP_FIRST_WORD}"         # Name inline following statement
"WR*EUFPLT": "--{:ATTACH:\\nBY MR. EUFPLT:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"       # Byline following interruption
"WR-EUFPLT": "--{:ATTACH:\\n\\tMR. EUFPLT:  }{:CASE:CAP_FIRST_WORD}"               # Interrupting name inline
```

## Defense Lawyer 2

AKA "Mr. Irbs"

```yaml
"*EURBGS": "{:ATTACH:BY MR. EURBGS:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"              # Initial byline
"EURBGS": "{:ATTACH:\\tMR. EURBGS:  }{:CASE:CAP_FIRST_WORD}"                       # Initial name
"H*EURBGS": "{:ATTACH:?\\nBY MR. EURBGS:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"         # Byline following question
"H-EURBGS": "{:ATTACH:?\\n\\tMR. EURBGS:  }{:CASE:CAP_FIRST_WORD}"                 # Name inline following question
"R*EURBGS": "{:STOP:.}{:ATTACH:\\nBY MR. EURBGS:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}" # Byline following statement
"R-EURBGS": "{:STOP:.}{:ATTACH:\\n\\tMR. EURBGS:  }{:CASE:CAP_FIRST_WORD}"         # Name inline following statement
"WR*EURBGS": "--{:ATTACH:\\nBY MR. EURBGS:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"       # Byline following interruption
"WR-EURBGS": "--{:ATTACH:\\n\\tMR. EURBGS:  }{:CASE:CAP_FIRST_WORD}"               # Interrupting name inline
```

## The Court

```yaml
"STPHAO*EUFPLT": "{:ATTACH:?\\n\\tTHE COURT:  }{:CASE:CAP_FIRST_WORD}"         # Court following question
"STPHAOEUFPLT": "{:ATTACH:\\tTHE COURT:  }{:CASE:CAP_FIRST_WORD}"              # Initial Court
"STPHAOEUFRPBLT": "--{:ATTACH:\\n\\tTHE COURT:  }{:CASE:CAP_FIRST_WORD}"       # Interrupting Court
"STPHAOEUFRPLT": "{:STOP:.}{:ATTACH:\\n\\tTHE COURT:  }{:CASE:CAP_FIRST_WORD}" # Court following statement
```

## The Witness

Using `SKWRAOEURBGS` outline:

```yaml
"SKPWHRAOEURBGS": "--{:ATTACH:\\n\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}"       # Interrupting Witness
"SKWHRAOEURBGS": "{:ATTACH:?\\n\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}"         # Witness following question
"SKWRAO*EURBGS": "{:STOP:.}{:ATTACH:\\n\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}" # Witness following statement
"SKWRAOEUFRBGS": "{:ATTACH:?\\n\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}"         # Witness following question
"SKWRAOEUFRPBGS": "--{:ATTACH:\\n\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}"       # Interrupting Witness
"SKWRAOEURBGS": "{:ATTACH:\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}"              # Initial Witness
```

Using `W-PBS/W-PBS` outline:

```yaml
"W-PBS/W-PBS": "{:ATTACH:\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}"               # Initial Witness
"WH-PBS/WH-PBS": "{:ATTACH:?\\n\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}"         # Witness following question
"WR*PBS/WR*PBS": "--{:ATTACH:\\n\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}"        # Interrupting Witness
"WR-PBS/WR-PBS": "{:STOP:.}{:ATTACH:\\n\\tTHE WITNESS:  }{:CASE:CAP_FIRST_WORD}" # Witness following statement
```

## Immediate Responses

### Lawyer Statement + Elaborate

```yaml
"STKPWHR-BG": "{:STOP:.}{:ATTACH:\\n\\tQ\\t}Okay.{:CASE:CAP_FIRST_WORD}"      # 'Okay.' and elaborate
"STKPWHR-RT": "{:STOP:.}{:ATTACH:\\n\\tQ\\t}All right.{:CASE:CAP_FIRST_WORD}" # 'All right.' and elaborate
```

### Lawyer Question + Yield Control

```yaml
"STKPWHR*BG": "{:STOP:.}{:ATTACH:\\n\\tQ\\t}Okay?{:ATTACH:\\n\\tA\\t}{:CASE:CAP_FIRST_WORD}"      # 'Okay?' and yield control
"STKPWHR*RT": "{:STOP:.}{:ATTACH:\\n\\tQ\\t}All right?{:ATTACH:\\n\\tA\\t}{:CASE:CAP_FIRST_WORD}" # 'All right?' and yield control
```

### Witness Answer + Elaborate

```yaml
"HUFRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Uh-huh.{:CASE:CAP_FIRST_WORD}"          # 'Uh-huh.' and elaborate
"KR-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Correct.{:CASE:CAP_FIRST_WORD}"        # 'Correct.' and elaborate
"KWR-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Yes.{:CASE:CAP_FIRST_WORD}"           # 'Yes.' and elaborate
"KWREFRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Yeah.{:CASE:CAP_FIRST_WORD}"          # 'Yeah.' and elaborate
"KWROEFRPBLGTS": "{:ATTACH:?\\n\\tA\\t}I don't know.{:CASE:CAP_FIRST_WORD}" # 'I don't know.' and elaborate
"SH-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Sure.{:CASE:CAP_FIRST_WORD}"           # 'Sure.' and elaborate
"SKWR-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Yes, sir.{:CASE:CAP_FIRST_WORD}"     # 'Yes, sir.' and elaborate
"STPH-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}No, sir.{:CASE:CAP_FIRST_WORD}"      # 'No, sir.' and elaborate
"TKPH-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}I don't know.{:CASE:CAP_FIRST_WORD}" # 'I don't know.' and elaborate
"TPH-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}No.{:CASE:CAP_FIRST_WORD}"            # 'No.' and elaborate
"TR-FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Right.{:CASE:CAP_FIRST_WORD}"          # 'Right.' and elaborate
```

### Witness Answer + Yield Control

```yaml
"H*UFRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Uh-huh.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"          # 'Uh-huh.' and yield control
"KR*FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Correct.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"         # 'Correct.' and yield control
"KWR*EFRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Yeah.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"          # 'Yeah.' and yield control
"KWR*FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Yes.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"            # 'Yes.' and yield control
"KWRO*EFRPBLGTS": "{:ATTACH:?\\n\\tA\\t}I don't know.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}" # 'I don't know.' and yield control
"SH*FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Sure.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"            # 'Sure.' and yield control
"SKWR*FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Yes, sir.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"      # 'Yes, sir.' and yield control
"STPH*FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}No, sir.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"       # 'No, sir.' and yield control
"TKPH*FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}I don't know.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"  # 'I don't know.' and yield control
"TPH*FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}No.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"             # 'No.' and yield control
"TR*FRPBLGTS": "{:ATTACH:?\\n\\tA\\t}Right.{:ATTACH:\\n\\tQ\\t}{:CASE:CAP_FIRST_WORD}"           # 'Right.' and yield control
```

[Platinum Steno Lesson 27 lesson materials]: https://platinumsteno.com/downloads/theory-lesson-27/
[Platinum Steno Lesson 27 QA video]: https://www.youtube.com/watch?v=tEgaJ7hWIvg
[Plover For the Record]: https://www.paulfioravanti.com/blog/plover-for-the-record/
