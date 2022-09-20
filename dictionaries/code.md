# Code Dictionary

This dictionary contains code- and programming-related outlines that _result in
text output_.

Plover's default dictionary already contains a lot of tech-related outlines,
including [shell][] commands. This dictionary does not repeat them, but only
contains new general code-related entries, as well as entries for programming
languages I use frequently.

I have found that coding with steno is _greatly_ enhanced by liberal use of
snippets. I code with [Vim][] (see my [vim commands dictionary][] for
vim-related outlines), and hence use [Ultisnips][] for all my snippets.
You find all the Ultisnips snippets I use in [my dotfiles][].

If you want to see an example of coding with steno in action, check out the
following videos I have made:

- [Rails 7: The Steno Demo][]

---

<!-- vim-markdown-toc GFM -->

* [Code](#code)
* [Elixir](#elixir)
* [Git](#git)
* [Heroku](#heroku)
* [HTML](#html)
* [Markdown](#markdown)
* [Ruby](#ruby)
* [Shell](#shell)

<!-- vim-markdown-toc -->

## Code

```yaml
"*EUPBLG": "img"                              # ImG
"*RL": "erl"                                  # eRL
"*PGS": "{^px}"                               # PX
"-PGS": "px"                                  # PX
"34*9": ">"                                   # More Than
"34*9S": ">="                                 # More Than or equalS
"4R*9": "<"                                   # Less Than
"4R*9S": "<="                                 # Less Than or equalS
"AO*ULTS": "utils"                            # UTiLS (inverted L)
"EPL/EPL": "{^em}"                            # EM
"KO*PBD": "cond"                              # COND
"KOPBTS": "const"                             # CONST (inverted T)
"KR*SZ": "css"                                # CSS
"KW*LS": "==="                                # eQUALS
"KW-RP": "{:ATTACH:=\\{\\}}{:KEY_COMBO:LEFT}" # eQUals PRop/PaRam
"KWR*PL": "yml"                               # YML (merged M&L)
"KWRAPL/*L": "yaml"                           # YAML
"KWROEUP": "IO"                               # IO (inverted)
"O*RZ": "||"                                  # OR
"PHUBGS": "mux"                               # MUX
"PR-PBS": "{:ATTACH:()}{:KEY_COMBO:LEFT}"     # PaReNS [override]
"PROBG": "proc"                               # PROC
"R-PBLG": "rgba"                              # RGba
"S-RBG": "src"                                # SRC
"SKR*SZ": "scss"                              # SCSS
"SKR-SZ": "scss"                              # SCSS
"SKW*L": "sql"                                # SQL
"SKWR-SZ": "js"                               # JS
"SKWRAFPB": "json"                            # JSoN
"SKWROFPB": "json"                            # JSON (inverted O)
"SO*EUFPB": "assign-value"                    # ASSIGN Value (inverted V)
"SPH*PT": "{:ATTACH:smtp://}"                 # SMTP (inverted TP)
"SPH-PT": "smtp"                              # SMTP (inverted TP)
"ST*R": "str"                                 # STR
"STKWR-S": "ts"                               # TYpeScript
"STKWR-SZ": "tsx"                             # TYpeScript (Z for X)
"T-FRP": "tmp"                                # TMP
"TAO*EUFP": "typeof"                          # TYPEOF (inverted OF)
"TKPWH": "gh"                                 # (GitHub CLI)
"TPH*FPB": "ENV"                              # eNV (double N)
"TPH-FPB": "env"                              # eNV (double N)
"TPH-PL": "npm"                               # NPM (merged P&M)
"TPHA*EUBGS": "¬"                             # NegATION
```

## Elixir

```yaml
"AO*EBGS/AO*EBGS": "EEx"
"AO*EBGSZ": "EEx"
"AO*EBGZ": "EEx"
"AOEBGZ": "eex"
"HAO*EBGS": "heex"
"HAOEBGZ": "heex"
"HR*EUF": "--live"
"O*EUBGS": "iex"
"O*EUBGS/PHEUBGS": "{:ATTACH:iex -S mix}" # IEX MIX
"O*EUBGS/PHEUBGS/TP*GS": "{:ATTACH:iex -S mix phx}" # IEX MIX PHoeniX
"O*EUBGS/PHEUBGS/TP*GS/S-FR": "{:ATTACH:iex -S mix phx.server}" # IEX MIX PHoeniX SERVER
"O*EUBGS/PHEUBGS/TP*GS/SR-FR": "{:ATTACH:iex -S mix phx.server}" # IEX MIX PHoeniX SERVER
"O*EUBGS/PHEUBGS/TPAOEPBGS": "{:ATTACH:iex -S mix phx}" # IEX MIX PHOENIX
"O*EUBGS/PHEUBGS/TPAOEPBGS/S-FR": "{:ATTACH:iex -S mix phx.server}" # IEX MIX PHOENIX SERVER
"O*EUBGS/PHEUBGS/TPAOEPBGS/SR-FR": "{:ATTACH:iex -S mix phx.server}" # IEX MIX PHOENIX SERVER
"O*EUBGS/TP*GS": "{:ATTACH:iex -S mix phx}" # IEX PHoeniX
"O*EUBGS/TP*GS/S-FR": "{:ATTACH:iex -S mix phx.server}" # IEX PHoeniX SerVeR
"O*EUBGS/TP*GS/SR-FR": "{:ATTACH:iex -S mix phx.server}" # IEX PHoeniX SerVeR
"O*EUBGS/TPAOEPBGS": "{:ATTACH:iex -S mix phx}" # IEX PHOENIX
"O*EUBGS/TPAOEPBGS/S-FR": "{:ATTACH:iex -S mix phx.server}" # IEX PHOENIX SerVeR
"O*EUBGS/TPAOEPBGS/SR-FR": "{:ATTACH:iex -S mix phx.server}" # IEX PHOENIX SerVeR
"PHEUBGS/*EBGT/HRAOD": "{:ATTACH:mix ecto.load}"
"PHEUBGS/*EBGT/HRAOD/ROEUP": "{:ATTACH:mix ecto.load --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/HROD": "{:ATTACH:mix ecto.load}"
"PHEUBGS/*EBGT/HROD/ROEUP": "{:ATTACH:mix ecto.load --repo}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/KRAET": "{:ATTACH:mix ecto.create}"
"PHEUBGS/*EBGT/KRAET/ROEUP": "{:ATTACH:mix ecto.create --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/PHAO*EUG": "{:ATTACH:mix ecto.migrate}"
"PHEUBGS/*EBGT/PHAO*EUG/ROEUP": "{:ATTACH:mix ecto.migrate --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/PHAO*EUG/STEP": "{:ATTACH:mix ecto.migrate --step }"
"PHEUBGS/*EBGT/PHAO*EUG/TO": "{:ATTACH:mix ecto.migrate --to }"
"PHEUBGS/*EBGT/PHAOEU/TKPWRAEUGSZ": "{:ATTACH:mix ecto.migrations}"
"PHEUBGS/*EBGT/PHAOEU/TKPWRAEUGSZ/ROEUP": "{:ATTACH:mix ecto.migrations --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/PHAOEUG": "{:ATTACH:mix ecto.migrate}"
"PHEUBGS/*EBGT/PHAOEUG/RAEUGSZ": "{:ATTACH:mix ecto.migrations}"
"PHEUBGS/*EBGT/PHAOEUG/RAEUGSZ/ROEUP": "{:ATTACH:mix ecto.migrations --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/PHAOEUG/ROEUP": "{:ATTACH:mix ecto.migrate --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/PHAOEUG/STEP": "{:ATTACH:mix ecto.migrate --step }"
"PHEUBGS/*EBGT/PHAOEUG/TO": "{:ATTACH:mix ecto.migrate --to }"
"PHEUBGS/*EBGT/ROL/PWA*BG": "{:ATTACH:mix ecto.rollback}"
"PHEUBGS/*EBGT/ROL/PWA*BG/ROEUP": "{:ATTACH:mix ecto.rollback --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/ROL/PWA*BG/STEP": "{:ATTACH:mix ecto.rollback --step }"
"PHEUBGS/*EBGT/ROL/PWA*BG/TO": "{:ATTACH:mix ecto.rollback --to }"
"PHEUBGS/*EBGT/SKWR*EPB": "{:ATTACH:mix ecto.gen}"
"PHEUBGS/*EBGT/SKWR*EPB/PHAOEU/TKPWRAEUGS": "{:ATTACH:mix ecto.gen.migration }{:MODE:SNAKE}"
"PHEUBGS/*EBGT/SKWR*EPB/PHAOEUG/RAEUGS": "{:ATTACH:mix ecto.gen.migration }{:MODE:SNAKE}"
"PHEUBGS/*EBGT/SKWR*EPB/ROEUP": "{:ATTACH:mix ecto.gen.repo --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/TK*UPL": "{:ATTACH:mix ecto.dump}"
"PHEUBGS/*EBGT/TK*UPL/ROEUP": "{:ATTACH:mix ecto.dump --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/*EBGT/TKROP": "{:ATTACH:mix ecto.drop}"
"PHEUBGS/*EBGT/TKROP/ROEUP": "{:ATTACH:mix ecto.drop --repo }{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/HEBGS/OUTD": "{:ATTACH:mix hex.outdated}"
"PHEUBGS/HEP/TP*GS/TPHU": "{:ATTACH:mix help phx.new}"
"PHEUBGS/HEP/TPAOEPBGS/TPHU": "{:ATTACH:mix help phx.new}"
"PHEUBGS/HROEL/HEBGS": "{:ATTACH:mix local.hex}"
"PHEUBGS/HROEL/TP*GS": "{:ATTACH:mix local.phx}"
"PHEUBGS/HROEL/TPAOEPBGS": "{:ATTACH:mix local.phx}"
"PHEUBGS/KRAOEUF/STPHAUL": "{:ATTACH:^mix archive.install}"
"PHEUBGS/KRAOEUF/STPHAUL/HEBGS/TP*GS": "{:ATTACH:mix archive.install hex phx_new}" # MIX ARCHIVE INSTALL HEX PHoeniX
"PHEUBGS/KRAOEUF/STPHAUL/HEBGS/TPAOEPBGS": "{:ATTACH:mix archive.install hex phx_new}" # MIX ARCHIVE INSTALL HEX PHOENIX
"PHEUBGS/KRAOEUF/STPHAUL/TP*GS": "{:ATTACH:mix archive.install hex phx_new}" # MIX ARCHIVE INSTALL PHoeniX
"PHEUBGS/KRAOEUF/STPHAUL/TPAOEPBGS": "{:ATTACH:mix archive.install hex phx_new}" # MIX ARCHIVE INSTALL PHOENIX
"PHEUBGS/TKEPS": "{:ATTACH:mix deps}"
"PHEUBGS/TKEPS/AUPTD": "{:ATTACH:mix deps.update --all}"
"PHEUBGS/TKEPS/TKPWET": "{:ATTACH:mix deps.get}"
"PHEUBGS/TP*GS/ROUTS": "{:ATTACH:^mix phx.routes}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/S-FR": "{:ATTACH:mix phx.server}" # PHOENIX SerVeR
"PHEUBGS/TP*GS/SKWR*EFT": "{:ATTACH:^mix phx.digest}"
"PHEUBGS/TP*GS/SKWR*EFT/KHRAOEPB": "{:ATTACH:^mix phx.digest.clean}"
"PHEUBGS/TP*GS/SKWR*EPB": "{:ATTACH:mix phx.gen}"
"PHEUBGS/TP*GS/SKWR*EPB/A*UT": "{:ATTACH:^mix phx.gen.auth}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/EPL/PWRED/-D": "{:ATTACH:^mix phx.gen.embedded}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/HAOEPLT": "{:ATTACH:^mix phx.gen.html}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/HREUF": "{:ATTACH:^mix phx.gen.live}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/KEGT": "{:ATTACH:^mix phx.gen.context}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/KHAPBL": "{:ATTACH:^mix phx.gen.channel}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/PREPBS": "{:ATTACH:^mix phx.gen.presence}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/RE/HRAOES": "{:ATTACH:mix phx.gen.release}"
"PHEUBGS/TP*GS/SKWR*EPB/SERT": "{:ATTACH:^mix phx.gen.cert}"
"PHEUBGS/TP*GS/SKWR*EPB/SKAOEPL/KWRA": "{:ATTACH:^mix phx.gen.schema}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/SKOEUPL": "{:ATTACH:^mix phx.gen.schema}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/SKRET": "{:ATTACH:^mix phx.gen.secret}"
"PHEUBGS/TP*GS/SKWR*EPB/SKWRAFPB": "{:ATTACH:^mix phx.gen.json}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/SKWROFPB": "{:ATTACH:^mix phx.gen.json}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/SOBGT": "{:ATTACH:^mix phx.gen.socket}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/TPHOEFR": "{:ATTACH:^mix phx.gen.notifier}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SKWR*EPB/TPHOEUFR": "{:ATTACH:^mix phx.gen.notifier}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TP*GS/SR-FR": "{:ATTACH:mix phx.server}" # PHOENIX SerVeR
"PHEUBGS/TP*GS/TPHU": "{:ATTACH:^mix phx.new}"
"PHEUBGS/TP*GS/TPHU/*EBGT": "{:ATTACH:^mix phx.new.ecto}"
"PHEUBGS/TP*GS/TPHU/WEB": "{:ATTACH:^mix phx.new.web}"
"PHEUBGS/TPAOEPBGS/ROUTS": "{:ATTACH:^mix phx.routes}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/S-FR": "{:ATTACH:mix phx.server}" # PHOENIX SerVeR
"PHEUBGS/TPAOEPBGS/SKWR*EFT": "{:ATTACH:^mix phx.digest}"
"PHEUBGS/TPAOEPBGS/SKWR*EFT/KHRAOEPB": "{:ATTACH:^mix phx.digest.clean}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB": "{:ATTACH:mix phx.gen}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/A*UT": "{:ATTACH:^mix phx.gen.auth}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/EPL/PWRED/-D": "{:ATTACH:^mix phx.gen.embedded}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/HAOEPLT": "{:ATTACH:^mix phx.gen.html}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/HREUF": "{:ATTACH:^mix phx.gen.live}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/KEGT": "{:ATTACH:^mix phx.gen.context}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/KHAPBL": "{:ATTACH:^mix phx.gen.channel}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/PREPBS": "{:ATTACH:^mix phx.gen.presence}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/RE/HRAOES": "{:ATTACH:mix phx.gen.release}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/SERT": "{:ATTACH:^mix phx.gen.cert}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/SKAOEPL/KWRA": "{:ATTACH:^mix phx.gen.schema}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/SKOEUPL": "{:ATTACH:^mix phx.gen.schema}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/SKRET": "{:ATTACH:^mix phx.gen.secret}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/SKWRAFPB": "{:ATTACH:^mix phx.gen.json}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/SKWROFPB": "{:ATTACH:^mix phx.gen.json}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/SOBGT": "{:ATTACH:^mix phx.gen.socket}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/TPHOEFR": "{:ATTACH:^mix phx.gen.notifier}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SKWR*EPB/TPHOEUFR": "{:ATTACH:^mix phx.gen.notifier}{:CASE:CAP_FIRST_WORD}"
"PHEUBGS/TPAOEPBGS/SR-FR": "{:ATTACH:mix phx.server}" # PHOENIX SerVeR
"PHEUBGS/TPAOEPBGS/TPHU": "{:ATTACH:^mix phx.new}"
"PHEUBGS/TPAOEPBGS/TPHU/*EBGT": "{:ATTACH:^mix phx.new.ecto}"
"PHEUBGS/TPAOEPBGS/TPHU/WEB": "{:ATTACH:^mix phx.new.web}"
"PHRAOEUP": "{:ATTACH:^|>}" # eLixir PIPE (plipe)
"POEUP": "{:ATTACH:^|>}" # elixir P(o)IPe
"TK-FP": "defp"
"TP*GS": "phx"
"TP*GSZ": "{:ATTACH:phx-}"
```

## Git

```yaml
"TKPW*EUD": "{:ATTACH:git diff --ignore-all-space}" # GIt Diff
"TKPW*EUFP": "{:ATTACH:git add --patch}" # GIt add patCH [override]
"TKPW*EUP": "{:ATTACH:^git push --force}" # GIt Push (force) [override]
"TKPW*EUPLT": "{:ATTACH:^git commit --amend}" # GIt coMMiT (amend)
"TKPW*EUPLTD": "{:ATTACH:git commit --amend --no-edit}" # GIt coMMiT (amend) no-eDit
"TKPW*EUTD": "{:ATTACH:git add .}{:CASE:LOWER_FIRST_CHAR}" # GIT aDD (current pathspec)
"TKPW*EUTS": "{:ATTACH:git status --short}"
"TKPW*EUL": "{:ATTACH:git log --oneline --decorate --all --graph}"
"TKPW*UL": "{:ATTACH:^git pull --rebase}"
"TKPWA*FP": "{:ATTACH:git add --patch}" # Git Add patCH
"TKPWEUD": "{:ATTACH:^git diff}" # GIt Diff
"TKPWEUFP": "{:ATTACH:git add --patch}" # GIt add patCH [override]
"TKPWEUP": "{:ATTACH:^git push}" # GIt Push
"TKPWEUPBT": "{:ATTACH:git init}" # GIt iNiT
"TKPWEUPLT": "{:ATTACH:git commit --message=\"\"}{:KEY_COMBO:LEFT}{:CASE:CAP_FIRST_WORD}" # GIt coMMiT (message)
"TKPWEUT/A*D": "{:ATTACH:git add .}{:CASE:LOWER_FIRST_CHAR}" # GIT ADd (current pathspec)
"TKPWEUT/AD/AD": "{:ATTACH:git add .}{:CASE:LOWER_FIRST_CHAR}" # GIT ADD (current pathspec)
"TKPWEUT/AD/PAFP": "{:ATTACH:git add --patch}" # GIT ADD PATCH
"TKPWEUT/HRO*G": "{:ATTACH:git log --oneline --decorate --all --graph}"
"TKPWEUT/HROG": "{:ATTACH:git log}"
"TKPWEUT/KHO*UT": "{:ATTACH:^git checkout --force}" # GIT CHECKOUT force
"TKPWEUT/KHOUT/PW*": "{:ATTACH:^git checkout -b}" # GIT CHECKOUT Branch
"TKPWEUT/KHOUT/PWRAFRPB": "{:ATTACH:^git checkout -b}" # GIT CHECKOUT BRANCH
"TKPWEUT/KHOUT/TPORS": "{:ATTACH:^git checkout --force}" # GIT CHECKOUT FORCE
"TKPWEUT/KHR*UP": "{:ATTACH:git branch --merged | grep --invert-match '\\*\\|master\\|develop\\|main' | xargs -n 1 git branch --delete}" # GIT CLEANUP
"TKPWEUT/KPH*EUPLT": "{:ATTACH:git commit --message=\"\"}{:KEY_COMBO:LEFT}{:CASE:CAP_FIRST_WORD}" # GIT CoMMIT Message
"TKPWEUT/KPH*EUT": "{:ATTACH:^git commit --amend}" # GIT CoMMIT (amend)
"TKPWEUT/KPH*EUTD": "{:ATTACH:git commit --amend --no-edit}" # GIT CoMMIT (amend) no-eDit
"TKPWEUT/KPHEUFPLT": "{:ATTACH:git commit --message=\"\"}{:KEY_COMBO:LEFT}{:CASE:CAP_FIRST_WORD}" # GIT CoMMIT Message
"TKPWEUT/KPHEUPLT": "{:ATTACH:git commit --message=\"\"}{:KEY_COMBO:LEFT}{:CASE:CAP_FIRST_WORD}" # GIT CoMMIT Message
"TKPWEUT/KPHEUT": "{:ATTACH:^git commit}" # GIT CoMMIT
"TKPWEUT/KPHEUT/APLD": "{:ATTACH:^git commit --amend}" # GIT CoMMIT AMEND
"TKPWEUT/KPHEUT/APLD/TPHO*ETD": "{:ATTACH:^git commit --amend --no-edit}" # GIT CoMMIT AMEND NO EDIT
"TKPWEUT/KPHEUT/APLD/TPHO/ETD": "{:ATTACH:^git commit --amend --no-edit}" # GIT CoMMIT AMEND NO EDIT
"TKPWEUT/KPHEUT/PHEPBLG": "{:ATTACH:git commit --message=\"\"}{:KEY_COMBO:LEFT}{:CASE:CAP_FIRST_WORD}" # GIT CoMMIT
"TKPWEUT/KWREUT": "{:ATTACH:git init}" # GIT InIT
"TKPWEUT/P*UL": "{:ATTACH:^git pull --rebase}" # GIT PULL (rebase)
"TKPWEUT/P*URB": "{:ATTACH:^git push --force}" # GIT PUSH (force)
"TKPWEUT/P*URB/O*RPBLG/PWRAFRPB": "{:ATTACH:git push --force origin $(git symbolic-ref HEAD --short)}" # GIT PUSH (force) ORIGIN (current BRANCH name)
"TKPWEUT/PHERPBLG/STPRAOEPL/PHAEUPB": "{:ATTACH:git merge upstream/main}" # GIT MERGE uPSTREAM MAIN
"TKPWEUT/PHERPBLG/STPRAOEPL/PHAFRT": "{:ATTACH:git merge upstream/master}" # GIT MERGE uPSTREAM MASTER
"TKPWEUT/PUL": "{:ATTACH:^git pull}" # GIT PULL
"TKPWEUT/PURB": "{:ATTACH:^git push}" # GIT PUSH
"TKPWEUT/PURB/O*RPBLG/PWRA*FRPB": "{:ATTACH:git push --force origin $(git symbolic-ref HEAD --short)}" # GIT PUSH (force) ORIGIN (current BRANCH name)
"TKPWEUT/PURB/O*RPBLG/PWRAFRPB": "{:ATTACH:git push origin $(git symbolic-ref HEAD --short)}" # GIT PUSH ORIGIN (current BRANCH name)
"TKPWEUT/PWHRA*EUPL": "{:ATTACH:^git blame -wM}" # (-w ignore whitespace, -M find line movements)
"TKPWEUT/PWRA*FRPB": "{:ATTACH:git branch --verbose}" # GIT BRANCH (verbose)
"TKPWEUT/PWRAFRPB/SROEBS": "{:ATTACH:git branch --verbose}" # GIT BRANCH VERBOSE
"TKPWEUT/RAOEB": "{:ATTACH:^git rebase}" # GIT REBase
"TKPWEUT/RAOEB/PWORT": "{:ATTACH:git rebase --abort}" # GIT REBase ABORT
"TKPWEUT/RAOEB/T-PB": "{:ATTACH:git rebase --continue}" # GIT REBase CONTINUE
"TKPWEUT/RAOEPLT": "{:ATTACH:git remote --verbose}" # GIT REMOTE verbose
"TKPWEUT/ST*TS": "{:ATTACH:git status}"
"TKPWEUT/ST-TS": "{:ATTACH:git status --short}"
"TKPWEUT/TK*EUF": "{:ATTACH:git diff --ignore-all-space}"
"TKPWEUT/TKEUF": "{:ATTACH:^git diff}"
"TKPWEUT/TKPEUG/HR*EUS": "{:ATTACH:git config --list}" # GIT CONFIG LIST
"TKPWEUT/TPH*EUT": "{:ATTACH:git init}" # GIT iNIT
"TKPWEUTD": "{:ATTACH:git add .}{:CASE:LOWER_FIRST_CHAR}" # GIT aDD (current pathspec)
```

## Heroku

```yaml
"HERBG/AD/RE/TKEUS": "{:ATTACH:heroku addons:create heroku-redis:hobby-dev}"
"HERBG/RUPB/RAEUBG/TK-B/PHAO*EUG": "{:ATTACH:heroku run rake db:migrate}"
"HERBG/RUPB/RAEUBG/TK-B/PHAOEUG": "{:ATTACH:heroku run rake db:migrate}"
``` 

## HTML

See [my HTML snippets][] for tag usage.

```yaml
"H-R": "{:ATTACH:<hr />}"
"KPW-D": "kbd"
"PWR*": "{:ATTACH:<br />}"
```

## Markdown

```yaml
"-6G": "{:ATTACH:###### }{:CASE:CAP_FIRST_WORD}"
"1-G": "{:ATTACH:# }{:CASE:CAP_FIRST_WORD}"
"2-G": "{:ATTACH:## }{:CASE:CAP_FIRST_WORD}"
"3-G": "{:ATTACH:### }{:CASE:CAP_FIRST_WORD}"
"4-G": "{:ATTACH:#### }{:CASE:CAP_FIRST_WORD}"
"5G": "{:ATTACH:##### }{:CASE:CAP_FIRST_WORD}"
"KH*FG": "{:ATTACH:^`}"
"KH-FG": "{:ATTACH:`^}"
"KW*T": "{:ATTACH:> }{:CASE:CAP_FIRST_WORD}"
"PR*FB": "{:ATTACH:^`}"
"PR-FB": "{:ATTACH:`^}"
"PWHR*T": "{:ATTACH:+ }{:CASE:CAP_FIRST_WORD}" # BuLLeT
"PWHR-T": "{:ATTACH:- }{:CASE:CAP_FIRST_WORD}" # BuLLeT
"SKH*FGS": "{:ATTACH:```}"
"SKH-FGS": "{:ATTACH:```}"
"SKPH": "{:ATTACH:\\^}"
"SKPH*": "{:ATTACH:\\}"
"SKPR*FBGS": "{:ATTACH:```}"
"SKPR-FBGS": "{:ATTACH:```}"
"WH*FB": "{:ATTACH:^`}"
"WH-FB": "{:ATTACH:`^}"
```

## Ruby

```yaml
"*ERB": "erb"
"*ERB/KHROES": "{:ATTACH:%>^}"                            # ERB CLOSE
"*ERB/KPEBG/OEP": "{:ATTACH:<%=}"                         # ERB EXEC OPEN
"*ERB/OEP": "{:ATTACH:^<%}"                               # ERB OPEN
"*ERB/TA*G": "{:ATTACH:<%=  %>}{:KEY_COMBO:LEFT LEFT LEFT}{:ATTACH}"
"EUPL/PORT/PHA*P": "{:ATTACH:^bin/importmap}"             # imPORTMAP (Rails)
"KW-P": "{:ATTACH:= _^}"                                  # eQUals Previous statement (use in rails console)
"KWUPBD": "{:ATTACH:= _^}"                                # eQUals UNDerscore (use in rails console)
"PRO*RT/PHA*P": "{:ATTACH:^bin/importmap}"                # imPORTMAP (rails)
"PWUPBLD/HROBG/AD/PHRORPL": "{:ATTACH:bundle lock --add-platform}"
"PWUPBLD/HROBG/AD/PHRORPL/HROEUPBGS": "{:ATTACH:bundle lock --add-platform x86_64-linux}"
"RA*RT": "attr"                                           # (r)ATTR
"RA*RT/RAERD": "attr_reader"
"RA*RT/SESZ": "attr_accessor"
"RA*RT/WREUR": "attr_writer"
"RAEUBG/TA*EFBGS": "{:ATTACH:bin/rake --tasks}"
"RAEULS/*BGS/TEGT/STPHAUL": "{:ATTACH:bin/rails action_text:install}"
"RAEULS/ROUTS": "{:ATTACH:bin/rails routes}"
"RAEULS/S-FR": "{:ATTACH:bin/rails server}"
"RAEULS/SKO*EL": "{:ATTACH:bin/rails console}"            # COnSOLE
"RAEULS/SKO*L": "{:ATTACH:bin/rails console}"             # COnSOLE
"RAEULS/SKWRAEUT": "{:ATTACH:^bin/rails generate}"
"RAEULS/SR-GS": "{:ATTACH:rails --version}"               # RAILS VerSION
"RAEULS/STKO*EL": "{:ATTACH:bin/rails dbconsole}"         # DbCOnSOLE
"RAEULS/TEFT": "{:ATTACH:bin/rails test}"
"RAEULS/TK-B/KRAET": "{:ATTACH:^bin/rails db:create}"
"RAEULS/TK-B/PHAO*EUG": "{:ATTACH:^bin/rails db:migrate}" # MIGrate
"RAEULS/TK-B/PHAOEUG": "{:ATTACH:^bin/rails db:migrate}"  # MIGrate
"RAEULS/TK-B/S-PL/KHAEUPBG": "{:ATTACH:bin/rails db:system:change --to=}{:CASE:LOWER_FIRST_CHAR}"
"RAEULS/TK-B/SAOED": "{:ATTACH:bin/rails db:seed}"
"RAEULS/TK-B/STUP": "{:ATTACH:bin/rails db:setup}"
"RAO*UB/SR-GS": "{:ATTACH:ruby --version}"                # RUBY VerSION
"RO*BGT": "=>"                                            # hashROCKeT
"SKWREFPL": "Gemfile"                                     # GEMFile
"SPREBG": "rspec"
```

## Shell

```yaml
"A*FD/HR*EUS/AUL": "{:ATTACH:^asdf list-all}"
"EPBD/*F": "endif"
"KR*D/PR-PB": "{:ATTACH:cd ..}"  # Change Directory to PareNt
"KR*D/PR-PBT": "{:ATTACH:cd ..}" # Change Directory to PareNT
"R-PL/R-F": "{:ATTACH:^rm -rf}"
"R-PL/TK*EUR": "{:ATTACH:^rmdir}"
"S*RB": "zsh"
"TKHR*": "--download"
"TP-G": "{:ATTACH:fg}"
"TPHUBGS": "tmux"
"W*GT": "wget"
```

[my dotfiles]: https://github.com/paulfioravanti/dotfiles/tree/master/vim/UltiSnips
[my HTML snippets]: https://github.com/paulfioravanti/dotfiles/blob/master/vim/UltiSnips/html.snippets
[Rails 7: The Steno Demo]: https://www.youtube.com/watch?v=q7g0ml60LGY
[shell]: https://en.wikipedia.org/wiki/Shell_(computing)
[Ultisnips]: https://github.com/SirVer/ultisnips
[Vim]: https://www.vim.org/
[vim commands dictionary]: ./command.md#vim
