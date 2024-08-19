#!/bin/bash

# This is a fix/hack for a LG monitor UltraFine 5K 27MD5KA brightness issue,
# where its power saving mode automatically dims the screen, and you have to
# constantly go into OS-level brightness settings to fix it.
# There is no way to turn the monitor setting off, either at the hardware or
# software level.
# Uses https://github.com/nriley/brightness to allow command-line access to
# brightness levels as Apple doesn't seem to provide access to them with its
# APIs.
brightness 0.99
brightness 1
