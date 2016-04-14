#!/usr/bin/env bash
# -*- coding: utf-8 -*-

cat <<EOF

--------------------
 Install scm breeze
--------------------

EOF

[ -r "$SRC_DIR/load.sh" ] && source "$SRC_DIR/load.sh"

if [[ ! -e $PATH_SCM_BREEZE ]]; then
    git clone git://github.com/ndbroadbent/scm_breeze.git $PATH_SCM_BREEZE
    $PATH_SCM_BREEZE/install.sh
fi

cat <<EOF

--------------------------
 Scm Breeze installed! Enjoy!
--------------------------

EOF