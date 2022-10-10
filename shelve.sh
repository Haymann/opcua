#!/bin/sh

# To create a patch for uncommitted changes: 1. stage whatever changes to be patched, 2. `cd repository-root && git diff --staged --binary > patch-file`, 3. the patch-file created can then be checked back into the current branch for distributing it.
# To apply a patch:

# 1. discard all local changes;
# 2. pull the branch where the patch-file is included;
# 3. `cd repository-root && git apply patch-file`;

git diff HEAD --binary > ./.patches/`date +%y%m%d%Z%H%M%S`.patch