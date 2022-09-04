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
"34*9": ">"                                   # More Than
"34*9S": ">="                                 # More Than or equalS
"4R*9": "<"                                   # Less Than
"4R*9S": "<="                                 # Less Than or equalS
"*EUPBLG": "img"                              # ImG
"*RL": "erl"                                  # eRL
"AO*ULTS": "utils"                            # UTiLS (inverted L)
"KO*PBD": "cond"                              # COND
"KOPBTS": "const"                             # CONST (inverted T)
"KR*SZ": "css"                                # CSS
"KW*LS": "==="                                # eQUALS
"KW-RP": "{:ATTACH:=\\{\\}}{:KEY_COMBO:LEFT}" # eQUals PRop/PaRam
"KWR*PL": "yml"                               # YML (merged M&L)
"KWROEUP": "IO"                               # IO (inverted)
"O*RZ": "||"                                  # OR
"PHUBGS": "mux"                               # MUX
"PR-PBS": "{:ATTACH:()}{:KEY_COMBO:LEFT}"     # PaReNS [override]
"PROBG": "proc"                               # PROC
"SKW*L": "sql"                                # SQL
"SKWRAFPB": "json"                            # JSoN
"SKWROFPB": "json"                            # JSON (inverted O)
"SO*EUFPB": "assign-value"                    # ASSIGN Value (inverted V)
"SPH*PT": "{:ATTACH:smtp://}"                 # SMTP (inverted TP)
"SPH-PT": "smtp"                              # SMTP (inverted TP)
"S-RBG": "src"                                # SRC
"SKWR-SZ": "js"                               # JS
"ST*R": "str"                                 # STR
"STKWR-S": "ts"                               # TYpeScript
"STKWR-SZ": "tsx"                             # TYpeScript (Z for X)
"T-FRP": "tmp"                                # TMP
"TAO*EUFP": "typeof"                          # TYPEOF (inverted OF)
"TPH*FPB": "ENV"                              # eNV (double N)
"TPH-FPB": "env"                              # eNV (double N)
"TPH-PL": "npm"                               # NPM (merged P&M)
"TPHA*EUBGS": "¬"                             # NegATION
```

## Elixir

```yaml
"AO*EBGZ": "EEx"
"AOEBGZ": "eex"
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
"PHEUBGS/TP*GS/TPHU": "{:ATTACH:^mix phx.new}"
"PHEUBGS/TP*GS/TPHU/*EBGT": "{:ATTACH:^mix phx.new.ecto}"
"PHEUBGS/TP*GS/TPHU/WEB": "{:ATTACH:^mix phx.new.web}"
"PHEUBGS/TP*GS/S-FR": "{:ATTACH:mix phx.server}" # PHOENIX SerVeR
"PHEUBGS/TP*GS/SR-FR": "{:ATTACH:mix phx.server}" # PHOENIX SerVeR
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
"TKPWEUT/AD/AD": "{:ATTACH:git add .}{:CASE:LOWER_FIRST_CHAR}" # GIT ADD (current pathspec)
"TKPWEUT/AD/PAFP": "{:ATTACH:git add --patch}" # GIT ADD PATCH
"TKPWEUT/HRO*G": "{:ATTACH:git log --oneline --decorate --all --graph}"
"TKPWEUT/HROG": "{:ATTACH:git log}"
"TKPWEUT/KHO*UT": "{:ATTACH:^git checkout --force}" # GIT CHECKOUT force
"TKPWEUT/KHOUT/PW*": "{:ATTACH:^git checkout -b}" # GIT CHECKOUT Branch
"TKPWEUT/KHOUT/TPORS": "{:ATTACH:^git checkout --force}" # GIT CHECKOUT FORCE
"TKPWEUT/KHOUT/PWRAFRPB": "{:ATTACH:^git checkout -b}" # GIT CHECKOUT BRANCH
"TKPWEUT/KHR*UP": "{:ATTACH:git branch --merged | grep --invert-match '\\*\\|master\\|develop\\|main' | xargs -n 1 git branch --delete}" # GIT CLEANUP
"TKPWEUT/KPH*EUT": "{:ATTACH:^git commit --amend}" # GIT CoMMIT (amend)
"TKPWEUT/KPH*EUTD": "{:ATTACH:git commit --amend --no-edit}" # GIT CoMMIT (amend) no-eDit
"TKPWEUT/KPHEUT": "{:ATTACH:^git commit}" # GIT CoMMIT
"TKPWEUT/KPHEUT/PHEPBLG": "{:ATTACH:git commit --message=\"\"}{:KEY_COMBO:LEFT}{:CASE:CAP_FIRST_WORD}" # GIT CoMMIT
"TKPWEUT/KWREUT": "{:ATTACH:git init}" # GIT InIT
"TKPWEUT/P*URB": "{:ATTACH:^git push --force}" # GIT PUSH (force)
"TKPWEUT/P*URB/O*RPBLG/PWRAFRPB": "{:ATTACH:git push --force origin $(git symbolic-ref HEAD --short)}" # GIT PUSH (force) ORIGIN (current BRANCH name)
"TKPWEUT/PHERPBLG/STPRAOEPL/PHAEUPB": "{:ATTACH:git merge upstream/main}" # GIT MERGE uPSTREAM MAIN
"TKPWEUT/PHERPBLG/STPRAOEPL/PHAFRT": "{:ATTACH:git merge upstream/master}" # GIT MERGE uPSTREAM MASTER
"TKPWEUT/PURB": "{:ATTACH:^git push}" # GIT PUSH
"TKPWEUT/PURB/O*RPBLG/PWRAFRPB": "{:ATTACH:git push origin $(git symbolic-ref HEAD --short)}" # GIT PUSH ORIGIN (current BRANCH name)
"TKPWEUT/PURB/O*RPBLG/PWRA*FRPB": "{:ATTACH:git push --force origin $(git symbolic-ref HEAD --short)}" # GIT PUSH (force) ORIGIN (current BRANCH name)
"TKPWEUT/PWHRA*EUPL": "{:ATTACH:^git blame -wM}" # (-w ignore whitespace, -M find line movements)
"TKPWEUT/PWRA*FRPB": "{:ATTACH:git branch --verbose}" # GIT BRANCH (verbose)
"TKPWEUT/PWRAFRPB/SROEBS": "{:ATTACH:git branch --verbose}" # GIT BRANCH VERBOSE
"TKPWEUT/RAOEB": "{:ATTACH:^git rebase}" # GIT REBase
"TKPWEUT/RAOEB/PWORT": "{:ATTACH:git rebase --abort}" # GIT REBase ABORT
"TKPWEUT/RAOEB/T-PB": "{:ATTACH:git rebase --continue}" # GIT REBase CONTINUE
"TKPWEUT/RAOEPLT": "{:ATTACH:git remote --verbose}" # GIT REMOTE verbose
"TKPWEUT/ST-TS": "{:ATTACH:git status --short}"
"TKPWEUT/ST*TS": "{:ATTACH:git status}"
"TKPWEUT/TKEUF": "{:ATTACH:^git diff}"
"TKPWEUT/TK*EUF": "{:ATTACH:git diff --ignore-all-space}"
"TKPWEUT/TKPEUG/HR*EUS": "{:ATTACH:git config --list}" # GIT CONFIG LIST
"TKPWEUT/TPH*EUT": "{:ATTACH:git init}" # GIT iNIT
```

## Heroku

```yaml
"HERBG/AD/RE/TKEUS": "{:ATTACH:heroku addons:create heroku-redis:hobby-dev}"
"HERBG/RUPB/RAEUBG/TK-B/PHAO*EUG": "{:ATTACH:heroku run rake db:migrate}"
"HERBG/RUPB/RAEUBG/TK-B/PHAOEUG": "{:ATTACH:heroku run rake db:migrate}"
``` 

## HTML

```yaml
"1-G/EUD/TA*G": "{:ATTACH:<h1 id=\"\"></h1>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"1-G/KHRAS/TA*G": "{:ATTACH:<h1 class=\"\"></h1>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"1-G/TA*G": "{:ATTACH:<h1></h1>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"2-G/EUD/TA*G": "{:ATTACH:<h2 id=\"\"></h2>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"2-G/KHRAS/TA*G": "{:ATTACH:<h2 class=\"\"></h2>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"2-G/TA*G": "{:ATTACH:<h2></h2>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"3-G/EUD/TA*G": "{:ATTACH:<h3 id=\"\"></h3>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"3-G/KHRAS/TA*G": "{:ATTACH:<h3 class=\"\"></h3>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"3-G/TA*G": "{:ATTACH:<h3></h3>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"4-G/EUD/TA*G": "{:ATTACH:<h4 id=\"\"></h4>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"4-G/KHRAS/TA*G": "{:ATTACH:<h4 class=\"\"></h4>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"4-G/TA*G": "{:ATTACH:<h4></h4>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"5-G/EUD/TA*G": "{:ATTACH:<h5 id=\"\"></h5>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"5-G/KHRAS/TA*G": "{:ATTACH:<h5 class=\"\"></h5>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"5-G/TA*G": "{:ATTACH:<h5></h5>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"A*/PWHRA*PBG/TA*G": "{:ATTACH:<a target=\"_blank\" href=\"\"></a>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"A*/TA*G": "{:ATTACH:<a href=\"\"></a>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"AOEUFRPL/TA*G": "{:ATTACH:<iframe src=\"\"></iframe>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"ARL/TA*G": "{:ATTACH:<article></article>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"ARL/EUD/TA*G": "{:ATTACH:<article id=\"\"></article>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"ARL/KHRAS/TA*G": "{:ATTACH:<article class=\"\"></article>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"EUPBLG/TA*G": "{:ATTACH:<img src=\"\" alt=\"\"></img>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"H-R": "{:ATTACH:<hr />}"
"HAOEPLT/TA*G": "{:ATTACH:<html></html>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"HED/TA*G": "{:ATTACH:<head></head>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"HRAEUBL/TA*G": "{:ATTACH:<label for=\"\"></label>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"HREU/TA*G": "{:ATTACH:<li></li>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"KOED/TA*G": "{:ATTACH:<code></code>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"KPW-D": "{:ATTACH:<kbd></kbd>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"O*EUD/TA*G": "{:ATTACH:<audio></audio>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"OL/TA*G": "{:ATTACH:<ol></ol>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"OPGS/TA*G": "{:ATTACH:<option value=\"\"></option>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"P*/TA*G": "{:ATTACH:<p></p>}{:KEY_COMBO:LEFT LEFT LEFT LEFT}{:ATTACH}"
"PHAEUPB/TA*G": "{:ATTACH:<main></main>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"PRE/TA*G": "{:ATTACH:<pre></pre>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"PW*PB/TA*G": "{:ATTACH:<button></button>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"PW*PB/EUD/TA*G": "{:ATTACH:<button id=\"\"></button>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"PW*PB/KHRAS/TA*G": "{:ATTACH:<button class=\"\"></button>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"PWO*ED/TA*G": "{:ATTACH:<body></body>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"PWR*": "{:ATTACH:<br />}"
"R-T/TA*G": "{:ATTACH:<rt></rt>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"RAO*UB/TA*G": "{:ATTACH:<ruby></ruby>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SA*PL/TA*G": "{:ATTACH:<samp></samp>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SEBGS/TA*G": "{:ATTACH:<section></section>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SHREBGT/TA*G": "{:ATTACH:<select></select>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SHREBGT/EUD/TA*G": "{:ATTACH:<select id=\"\"></select>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SHREBGT/KHRAS/TA*G": "{:ATTACH:<select class=\"\"></select>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SORS/TA*G": "{:ATTACH:<source src=\"\" type=\"\"></source>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SPAPB/TA*G": "{:ATTACH:<span></span>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SRAR/TA*G": "{:ATTACH:<var></var>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"SRO*EUD/TA*G": "{:ATTACH:<video></video>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"STAOEUL/TA*G": "{:ATTACH:<style></style>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"STROPBG/TA*G": "{:ATTACH:<strong></strong>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"T-D/TA*G": "{:ATTACH:<td></td>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TAEUBL/TA*G": "{:ATTACH:<table></table>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TAOEULT/TA*G": "{:ATTACH:<title></title>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TEGT/KWRA*ER/TA*G": "{:ATTACH:<textarea></textarea>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"THED/TA*G": "{:ATTACH:<thead></thead>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TK*EUF/EUD/TA*G": "{:ATTACH:<div id=\"\"></div>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TK*EUF/KHRAS/TA*G": "{:ATTACH:<div class=\"\"></div>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TK*EUF/TA*G": "{:ATTACH:<div></div>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPAORT/TA*G": "{:ATTACH:<footer></footer>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPAOT/TA*G": "{:ATTACH:<tfoot></tfoot>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPEUG/TA*G": "{:ATTACH:<figure></figure>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPEUG/KAPGS/TA*G": "{:ATTACH:<figcaption></figcaption>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPHA*F/TA*G": "{:ATTACH:<nav></nav>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPH*PT/TA*G": "{:ATTACH:<input type=\"\"></input>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPH*PT/EUD/TA*G": "{:ATTACH:<input type=\"\" id=\"\"></input>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPH*PT/KHRAS/TA*G": "{:ATTACH:<input type=\"\" class=\"\"></input>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPORPL/TA*G": "{:ATTACH:<form method=\"post\" action=\"\"></form>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TPWO*ED/TA*G": "{:ATTACH:<tbody></tbody>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TH/TA*G": "{:ATTACH:<th></th>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"TR/TA*G": "{:ATTACH:<tr></tr>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
"UL/TA*G": "{:ATTACH:<ul></ul>}{:KEY_COMBO:LEFT LEFT LEFT LEFT LEFT}{:ATTACH}"
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
"SKPR*FBGS": "{:ATTACH:```}"
"SKPR-FBGS": "{:ATTACH:```}"
"SKPH": "{:ATTACH:\\^}"
"SKPH*": "{:ATTACH:\\}"
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
"RA*RT/SESZ": "attr_accessor"
"RA*RT/RAERD": "attr_reader"
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
"RAEULS/TK-B/SAOED": "{:ATTACH:bin/rails db:seed}"
"RAEULS/TK-B/S-PL/KHAEUPBG": "{:ATTACH:bin/rails db:system:change --to=}{:CASE:LOWER_FIRST_CHAR}"
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
[Rails 7: The Steno Demo]: https://www.youtube.com/watch?v=q7g0ml60LGY
[shell]: https://en.wikipedia.org/wiki/Shell_(computing)
[Ultisnips]: https://github.com/SirVer/ultisnips
[Vim]: https://www.vim.org/
[vim commands dictionary]: ./command.md#vim
