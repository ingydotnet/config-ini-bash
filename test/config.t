#!/usr/bin/env bash

source test/setup

use Test::More
use Config::Ini

is "`Config::Ini:read Package pkg.author`" \
  "Ingy döt Net <ingy@bpan.org>" \
  'Config read works'

done_testing 1
