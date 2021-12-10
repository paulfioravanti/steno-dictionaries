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

### Create Environment Variable

In order to use the [command dictionaries][], you will need to set a
`$STENO_DICTIONARIES` environment variable in your shell [configuration files][]
(`.bashrc`, `.zshrc` etc) to be the location of the `steno-dictionaries`
directory.

For example, and the following kind of entry to your configuration file:

**`~/.bashrc`**

```sh
# Enable call outs to scripts in steno command dictionaries.
export STENO_DICTIONARIES="$HOME/steno/steno-dictionaries"
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

- If you want to use outlines that enable typing raw steno, you will need to
  install the [Plover Dict Commands][] plugin
- If you want to use my [Georgi][]-inspired [layout config][], you will need to
  install the [Plover Layout Display][] plugin
- If you want to use outlines that can control applications on your computer,
  you will need to install the [Plover Run Shell][] plugin
- If you want to use my custom [stitching][]-related dictionary outlines, you
  will need to install the [Plover Stitching][] plugin

## Hat Tips :tophat:

Inspiration for additions have been:

- [Di's steno dictionaries][]
- [Platinum Steno][] video course

## License

This project is licensed under the terms of the GNU General Public License v3.0.

See [`LICENSE.txt`][] for details.

[command dictionaries]: ./dictionaries/command
[configuration files]: https://en.wikipedia.org/wiki/Configuration_file
[Di's steno dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[Friendly Command Names]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#friendly-command-names
[Georgi]: https://www.gboards.ca/product/georgi
[Going Platinum]: https://www.paulfioravanti.com/blog/going-platinum/
[Git]: https://git-scm.com/
[GitHub]: https://github.com/
[I Completed Typey Type]: https://www.paulfioravanti.com/blog/completed-typey-type/
[JSON]: https://en.wikipedia.org/wiki/JSON
[layout config]: ./src/plover-layout-display.json
[`LICENSE.txt`]: ./LICENSE.txt
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[Plover]: http://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover Dict Commands]: https://github.com/KoiOates/plover_dict_commands
[Plover For the Record]: https://www.paulfioravanti.com/blog/plover-for-the-record/
[Plover Layout Display]: https://github.com/morinted/plover_layout_display
[Plover main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[Plover Plugins]: https://github.com/openstenoproject/plover/wiki/Plugins
[Plover Run Shell]: https://github.com/user202729/plover_run_shell
[Plover Stitching]: https://github.com/morinted/plover_stitching
[Plover version 4.0.0.dev9]: https://github.com/openstenoproject/plover/releases/tag/v4.0.0.dev9
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
[Typey Type]: https://didoesdigital.com/typey-type/
