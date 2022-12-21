# Q&A Dictionary

This dictionary containing briefs related to switching between different people
or lines of questioning in a conversation.

More information about the concept of Q&A can be found in the
[Platinum Steno Lesson 27 QA video][], and in my _[Plover For the Record][]_
blog post.

These briefs might only really be applicable for court reporting, but since
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
* [The Witness](#the-witness)
* [The Court](#the-court)
* [The Videographer](#the-videographer)
* [The Court Reporter](#the-court-reporter)
* [The Clerk](#the-clerk)
* [The Bailiff](#the-bailiff)
* [Immediate Q&A Responses](#immediate-qa-responses)
    - [Lawyer Statement + Elaborate](#lawyer-statement--elaborate)
    - [Lawyer Question + Yield Control](#lawyer-question--yield-control)
    - [Witness Answer + Elaborate](#witness-answer--elaborate)
    - [Witness Answer + Yield Control](#witness-answer--yield-control)

<!-- vim-markdown-toc -->

## Questions

```yaml
"STKPWHR": "{.}{^\\n\\tQ\\t^}{-|}"   # Question following statement
"STKPWHR*": "{^\\tQ\\t^}{-|}"        # Initial question
"STKPWHR-F": "{^?\\n\\tQ\\t^}{-|}"   # Question following question
"STKPWHR-R": "{.}{^\\n\\tQ\\t^}{-|}" # Question following statement
"STKPWHR-RB": "--{^\\n\\tQ\\t^}{-|}" # Interrupting question
```

## Answers

```yaml
"-FRPBLGTS": "{^?\\n\\tA\\t^}{-|}"    # Answer following question
"H-FRPBLGTS": "{^?\\n\\tA\\t^}{-|}"   # Answer following question
"R-FRPBLGTS": "{.}{^\\n\\tA\\t^}{-|}" # Answer following statement
"WR-FRPBLGTS": "--{^\\n\\tA\\t^}{-|}" # Interrupting answer
```

## Plaintiff Lawyer 1

AKA "Mr. Snoo"

```yaml
"STPHAO": "{^\\tMR. STPHAO:  ^}{-|}"                 # Initial name
"STPHAO*": "{^BY MR. STPHAO:\\n\\tQ\\t^}{-|}"        # Initial byline
"STPHAO*F": "{^?\\nBY MR. STPHAO:\\n\\tQ\\t^}{-|}"   # Byline following question
"STPHAO*R": "{.}{^\\nBY MR. STPHAO:\\n\\tQ\\t^}{-|}" # Byline following statement
"STPHAO*RB": "--{^\\nBY MR. STPHAO:\\n\\tQ\\t^}{-|}" # Byline following interruption
"STPHAO-F": "{^?\\n\\tMR. STPHAO:  ^}{-|}"           # Name inline following question
"STPHAO-R": "{.}{^\\n\\tMR. STPHAO:  ^}{-|}"         # Name inline following statement
"STPHAO-RB": "--{^\\n\\tMR. STPHAO:  ^}{-|}"         # Interrupting name inline
```

## Plaintiff Lawyer 2

AKA "Mr. Irbs"

```yaml
"SKWRAO": "{^\\tMR. SKWRAO:  ^}{-|}"                 # Initial name
"SKWRAO*": "{^BY MR. SKWRAO:\\n\\tQ\\t^}{-|}"        # Initial byline
"SKWRAO*F": "{^?\\nBY MR. SKWRAO:\\n\\tQ\\t^}{-|}"   # Byline following question
"SKWRAO*R": "{.}{^\\nBY MR. SKWRAO:\\n\\tQ\\t^}{-|}" # Byline following statement
"SKWRAO*RB": "--{^\\nBY MR. SKWRAO:\\n\\tQ\\t^}{-|}" # Byline following interruption
"SKWRAO-F": "{^?\\n\\tMR. SKWRAO:  ^}{-|}"           # Name inline following question
"SKWRAO-R": "{.}{^\\n\\tMR. SKWRAO:  ^}{-|}"         # Name inline following statement
"SKWRAO-RB": "--{^\\n\\tMR. SKWRAO:  ^}{-|}"         # Interrupting name inline
```

## Defense Lawyer 1

AKA "Mr. Ifpelt"

```yaml
"*EUFPLT": "{^BY MR. EUFPLT:\\n\\tQ\\t^}{-|}"        # Initial byline
"EUFPLT": "{^\\tMR. EUFPLT:  ^}{-|}"                 # Initial name
"H*EUFPLT": "{^?\\nBY MR. EUFPLT:\\n\\tQ\\t^}{-|}"   # Byline following question
"H-EUFPLT": "{^?\\n\\tMR. EUFPLT:  ^}{-|}"           # Name inline following question
"R*EUFPLT": "{.}{^\\nBY MR. EUFPLT:\\n\\tQ\\t^}{-|}" # Byline following statement
"R-EUFPLT": "{.}{^\\n\\tMR. EUFPLT:  ^}{-|}"         # Name inline following statement
"WR*EUFPLT": "--{^\\nBY MR. EUFPLT:\\n\\tQ\\t^}{-|}" # Byline following interruption
"WR-EUFPLT": "--{^\\n\\tMR. EUFPLT:  ^}{-|}"         # Interrupting name inline
```

## Defense Lawyer 2

AKA "Mr. Irbs"

```yaml
"*EURBGS": "{^BY MR. EURBGS:\\n\\tQ\\t^}{-|}"        # Initial byline
"EURBGS": "{^\\tMR. EURBGS:  ^}{-|}"                 # Initial name
"H*EURBGS": "{^?\\nBY MR. EURBGS:\\n\\tQ\\t^}{-|}"   # Byline following question
"H-EURBGS": "{^?\\n\\tMR. EURBGS:  ^}{-|}"           # Name inline following question
"R*EURBGS": "{.}{^\\nBY MR. EURBGS:\\n\\tQ\\t^}{-|}" # Byline following statement
"R-EURBGS": "{.}{^\\n\\tMR. EURBGS:  ^}{-|}"         # Name inline following statement
"WR*EURBGS": "--{^\\nBY MR. EURBGS:\\n\\tQ\\t^}{-|}" # Byline following interruption
"WR-EURBGS": "--{^\\n\\tMR. EURBGS:  ^}{-|}"         # Interrupting name inline
```

## The Witness

Using `SKWRAOEURBGS` outline:

```yaml
"SKPWHRAOEURBGS": "--{^\\n\\tTHE WITNESS:  ^}{-|}" # Interrupting Witness
"SKWHRAOEURBGS": "{^?\\n\\tTHE WITNESS:  ^}{-|}"   # Witness following question
"SKWRAO*EURBGS": "{.}{^\\n\\tTHE WITNESS:  ^}{-|}" # Witness following statement
"SKWRAOEUFRBGS": "{^?\\n\\tTHE WITNESS:  ^}{-|}"   # Witness following question
"SKWRAOEUFRPBGS": "--{^\\n\\tTHE WITNESS:  ^}{-|}" # Interrupting Witness
"SKWRAOEURBGS": "{^\\tTHE WITNESS:  ^}{-|}"        # Initial Witness
```

Using `W-PBS/W-PBS` outline:

```yaml
"W-PBS/W-PBS": "{^\\tTHE WITNESS:  ^}{-|}"         # Initial Witness
"WH-PBS/WH-PBS": "{^?\\n\\tTHE WITNESS:  ^}{-|}"   # Witness following question
"WR*PBS/WR*PBS": "--{^\\n\\tTHE WITNESS:  ^}{-|}"  # Interrupting Witness
"WR-PBS/WR-PBS": "{.}{^\\n\\tTHE WITNESS:  ^}{-|}" # Witness following statement
```

## The Court

```yaml
"STPHAO*EUFPLT": "{^?\\n\\tTHE COURT:  ^}{-|}"   # Court following question
"STPHAOEUFPLT": "{^\\tTHE COURT:  ^}{-|}"        # Initial Court
"STPHAOEUFRPBLT": "--{^\\n\\tTHE COURT:  ^}{-|}" # Interrupting Court
"STPHAOEUFRPLT": "{.}{^\\n\\tTHE COURT:  ^}{-|}" # Court following statement
```

## The Videographer

```yaml
"STPHA*EUFPLT": "{^?\\n\\tTHE VIDEOGRAPHER:  ^}{-|}"   # Videographer following question
"STPHAEUFPLT": "{^\\tTHE VIDEOGRAPHER:  ^}{-|}"        # Initial Videographer
"STPHAEUFRPBLT": "--{^\\n\\tTHE VIDEOGRAPHER:  ^}{-|}" # Interrupting Videographer
"STPHAEUFRPLT": "{.}{^\\n\\tTHE VIDEOGRAPHER:  ^}{-|}" # Videographer following statement
```

## The Court Reporter

```yaml
"STPHO*EUFPLT": "{^?\\n\\tTHE COURT REPORTER:  ^}{-|}"   # Court Reporter following question
"STPHOEUFPLT": "{^\\tTHE COURT REPORTER:  ^}{-|}"        # Initial Court Reporter
"STPHOEUFRPBLT": "--{^\\n\\tTHE COURT REPORTER:  ^}{-|}" # Interrupting Court Reporter
"STPHOEUFRPLT": "{.}{^\\n\\tTHE COURT REPORTER:  ^}{-|}" # Court Reporter following statement
```

## The Clerk

```yaml
"STPHAO*EFPLT": "{^?\\n\\tTHE CLERK:  ^}{-|}"   # Clerk following question
"STPHAOEFPLT": "{^\\tTHE CLERK:  ^}{-|}"        # Initial Clerk
"STPHAOEFRPBLT": "--{^\\n\\tTHE CLERK:  ^}{-|}" # Interrupting Clerk
"STPHAOEFRPLT": "{.}{^\\n\\tTHE CLERK:  ^}{-|}" # Clerk following statement
```

## The Bailiff

```yaml
"STPHAO*UFPLT": "{^?\\n\\tTHE BAILIFF:  ^}{-|}"   # Bailiff following question
"STPHAOUFPLT": "{^\\tTHE BAILIFF:  ^}{-|}"        # Initial Bailiff
"STPHAOUFRPBLT": "--{^\\n\\tTHE BAILIFF:  ^}{-|}" # Interrupting Bailiff
"STPHAOUFRPLT": "{.}{^\\n\\tTHE BAILIFF:  ^}{-|}" # Bailiff following statement
```

## Immediate Q&A Responses

### Lawyer Statement + Elaborate

```yaml
"STKPWHR-BG": "{.}{^\\n\\tQ\\t^}Okay.{-|}"      # 'Okay.' and elaborate
"STKPWHR-RT": "{.}{^\\n\\tQ\\t^}All right.{-|}" # 'All right.' and elaborate
```

### Lawyer Question + Yield Control

```yaml
"STKPWHR*BG": "{.}{^\\n\\tQ\\t^}Okay?{^\\n\\tA\\t^}{-|}"      # 'Okay?' and yield control
"STKPWHR*RT": "{.}{^\\n\\tQ\\t^}All right?{^\\n\\tA\\t^}{-|}" # 'All right?' and yield control
```

### Witness Answer + Elaborate

```yaml
"HUFRPBLGTS": "{^?\\n\\tA\\t^}Uh-huh.{-|}"          # 'Uh-huh.' and elaborate
"KR-FRPBLGTS": "{^?\\n\\tA\\t^}Correct.{-|}"        # 'Correct.' and elaborate
"KWR-FRPBLGTS": "{^?\\n\\tA\\t^}Yes.{-|}"           # 'Yes.' and elaborate
"KWREFRPBLGTS": "{^?\\n\\tA\\t^}Yeah.{-|}"          # 'Yeah.' and elaborate
"KWROEFRPBLGTS": "{^?\\n\\tA\\t^}I don't know.{-|}" # 'I don't know.' and elaborate
"SH-FRPBLGTS": "{^?\\n\\tA\\t^}Sure.{-|}"           # 'Sure.' and elaborate
"SKWR-FRPBLGTS": "{^?\\n\\tA\\t^}Yes, sir.{-|}"     # 'Yes, sir.' and elaborate
"STPH-FRPBLGTS": "{^?\\n\\tA\\t^}No, sir.{-|}"      # 'No, sir.' and elaborate
"TKPH-FRPBLGTS": "{^?\\n\\tA\\t^}I don't know.{-|}" # 'I don't know.' and elaborate
"TPH-FRPBLGTS": "{^?\\n\\tA\\t^}No.{-|}"            # 'No.' and elaborate
"TR-FRPBLGTS": "{^?\\n\\tA\\t^}Right.{-|}"          # 'Right.' and elaborate
```

### Witness Answer + Yield Control

```yaml
"H*UFRPBLGTS": "{^?\\n\\tA\\t^}Uh-huh.{^\\n\\tQ\\t^}{-|}"          # 'Uh-huh.' and yield control
"KR*FRPBLGTS": "{^?\\n\\tA\\t^}Correct.{^\\n\\tQ\\t^}{-|}"         # 'Correct.' and yield control
"KWR*EFRPBLGTS": "{^?\\n\\tA\\t^}Yeah.{^\\n\\tQ\\t^}{-|}"          # 'Yeah.' and yield control
"KWR*FRPBLGTS": "{^?\\n\\tA\\t^}Yes.{^\\n\\tQ\\t^}{-|}"            # 'Yes.' and yield control
"KWRO*EFRPBLGTS": "{^?\\n\\tA\\t^}I don't know.{^\\n\\tQ\\t^}{-|}" # 'I don't know.' and yield control
"SH*FRPBLGTS": "{^?\\n\\tA\\t^}Sure.{^\\n\\tQ\\t^}{-|}"            # 'Sure.' and yield control
"SKWR*FRPBLGTS": "{^?\\n\\tA\\t^}Yes, sir.{^\\n\\tQ\\t^}{-|}"      # 'Yes, sir.' and yield control
"STPH*FRPBLGTS": "{^?\\n\\tA\\t^}No, sir.{^\\n\\tQ\\t^}{-|}"       # 'No, sir.' and yield control
"TKPH*FRPBLGTS": "{^?\\n\\tA\\t^}I don't know.{^\\n\\tQ\\t^}{-|}"  # 'I don't know.' and yield control
"TPH*FRPBLGTS": "{^?\\n\\tA\\t^}No.{^\\n\\tQ\\t^}{-|}"             # 'No.' and yield control
"TR*FRPBLGTS": "{^?\\n\\tA\\t^}Right.{^\\n\\tQ\\t^}{-|}"           # 'Right.' and yield control
```

[Platinum Steno Lesson 27 lesson materials]: https://platinumsteno.com/downloads/theory-lesson-27/
[Platinum Steno Lesson 27 QA video]: https://www.youtube.com/watch?v=tEgaJ7hWIvg
[Plover For the Record]: https://www.paulfioravanti.com/blog/plover-for-the-record/
