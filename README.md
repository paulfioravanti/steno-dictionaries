# Steno Dictionaries

This repository contains my personal stenography dictionaries, and
some non-dictionary steno-related source code for [Plover][].

Details regarding the dictionaries and source code can be found under their
respective directories (`dictionaries` and `src`).

The dictionaries are in [JSON][] format, and either use, or are intended to
supplement, Plover theory, and _generally_ not be in conflict with [Plover's
default `main.json` dictionary][Plover main.json].

## Blog Posts

More information about these dictionaries and what led to their creation can
be found in the following blog posts I wrote:

- _[Going Platinum][]_
- _[Plover For the Record][]_

Persistent steno practice using [Typey Type][] was a massive factor in gaining
the confidence to be able to feel like I could supplement Plover entries with my
own content. I wrote about working with Typey Type here:

- _[I Completed Typey Type][]_

You can read all about the formulation of the [Doom Typist][] dictionary, and
how steno gaming is possible, here:

- _[Steno Gaming: Doom Typist][]_

## Setup

### Plover Version

The syntax in these dictionaries, particularly ones that use [Plover Control
Commands][], take advantage of [Friendly Command Names][], which were introduced
in [Plover version 4.0.0.dev9][].

So, you will need to have at least Plover version 4.0.0.dev9 installed to use
dictionaries that contain outlines that do more than just output text.

### Clone repository

In your terminal program, use [Git][] to clone the repository from its home on
[Github][]:

```sh
git clone git@github.com:paulfioravanti/steno-dictionaries.git
```

### Import Dictionaries

Use Plover's Open Dictionaries functionality to choose one or more dictionaries
to import into your dictionaries list.

### Add Plover Plugins

In order for some dictionaries to work, particular [Plover Plugins][] will
need to be installed. Click the Plover Plugins Manager button on the Plover
user interface to show the list of installable plugins.

Installing a plugin by selecting the plugin name from the list and clicking the
"Install/Update" button.

- [Plover Dict Commands][]: Needed in order to use outlines that enable typing
  raw steno
- [Plover Layout Display][]: Needed in order to use my [Georgi][]-inspired
  [layout config][]
- [Plover Markdown Dictionary][]: Needed in order to use any of the dictionary
  entries that are embedded in [Markdown][] files (`.md`)
- [Plover Python Dictionary][]: Needed in order to use any of the dictionaries
  that are written in [Python][] (`.py`)
- [Plover Run Shell][]: Needed to use the outlines that can control applications
  on your computer
- [Plover Stitching][]: Needed to use my custom [stitching][]-related dictionary
  outlines
- [Plover Emoji][]: Aside from the occasional few I have made custom briefs for
  in my [`emoji.md`][] dictionary, I leverage this plugin for every other
  emoji, and can recommend installing it

### Create Environment Variable

In order to use many of the outlines in the [command dictionaries][], you will
need to define a `STENO_DICTIONARIES` environment variable in your `~/.bashrc`
file (or `~/.zshrc`, or whatever [configuration file][] your [shell][] uses)
containing the value of the path that this directory is in.

For example, I have my `steno-dictionaries/` directory located inside a
`steno/` directory under my user account's home directory. So, in my
`~/.bashrc` file, I have an entry that looks like:

**`~/.bashrc`**

```sh
# Enable call outs to scripts in steno command dictionaries.
export STENO_DICTIONARIES="$HOME/steno/steno-dictionaries"
```

Change the path value to wherever you have cloned this directory, and the
commands should work as expected.

### Compile Applescript Files

Command outlines in the dictionaries that run an [AppleScript][] file reference
compiled `.scpt` versions of the `.applescript` files contained in this
repository.

Those compiled `.scpt` files are not contained in this repository by default.
If you are using these scripts for the first time, in order to generate the
`.scpt` files, run the following script in the root directory of this repository
which will do it for you:

```sh
./bin/bootstrap
```

AppleScript is a pretty slow scripting language, but you can get a small speed
boost by running `.scpt` files, rather than the human-readable `.applescript`
files, which is why they are being used here in the first place.

If you decide to make changes to the logic in the Applescript files, remember to
run the command above again to recompile them.

If you want to just remove all the `.scpt` files for whatever reason, run the
following script:

```sh
./bin/remove-scpt-files
```

If you need to then re-generate the `.scpt` files, run the following script:

```sh
./bin/compile-applescript-files
```

## Hat Tips :tophat:

Inspiration for additions have been:

- [Di's steno dictionaries][]
- [Platinum Steno][] video course

## License

This project is licensed under the terms of the GNU General Public License v3.0.

See [`LICENSE.txt`][] for details.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[command dictionaries]: ./dictionaries/command
[configuration file]: https://en.wikipedia.org/wiki/Configuration_file
[Di's steno dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[Doom Typist]: https://github.com/mmaulwurff/typist.pk3
[`emoji.md`]: ./dictionaries/emoji.md
[Friendly Command Names]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#friendly-command-names
[Georgi]: https://www.gboards.ca/product/georgi
[Going Platinum]: https://www.paulfioravanti.com/blog/going-platinum/
[Git]: https://git-scm.com/
[GitHub]: https://github.com/
[I Completed Typey Type]: https://www.paulfioravanti.com/blog/completed-typey-type/
[JSON]: https://en.wikipedia.org/wiki/JSON
[layout config]: ./src/plover-layout-display.json
[`LICENSE.txt`]: ./LICENSE.txt
[Markdown]: https://daringfireball.net/projects/markdown/
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[Plover]: http://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover Dict Commands]: https://github.com/KoiOates/plover_dict_commands
[Plover Emoji]: https://github.com/morinted/plover_emoji
[Plover For the Record]: https://www.paulfioravanti.com/blog/plover-for-the-record/
[Plover Layout Display]: https://github.com/morinted/plover_layout_display
[Plover main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[Plover Markdown Dictionary]: https://github.com/antistic/plover_markdown_dictionary
[Plover Plugins]: https://github.com/openstenoproject/plover/wiki/Plugins
[Plover Python Dictionary]: https://github.com/benoit-pierre/plover_python_dictionary
[Plover Run Shell]: https://github.com/user202729/plover_run_shell
[Plover Stitching]: https://github.com/morinted/plover_stitching
[Plover version 4.0.0.dev9]: https://github.com/openstenoproject/plover/releases/tag/v4.0.0.dev9
[Python]: https://www.python.org/
[shell]: https://en.wikipedia.org/wiki/Shell_(computing)
[Steno Gaming: Doom Typist]: https://www.paulfioravanti.com/blog/steno-gaming-doom-typist/
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
[Typey Type]: https://didoesdigital.com/typey-type/
