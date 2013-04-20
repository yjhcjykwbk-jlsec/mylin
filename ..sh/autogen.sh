#!/bin/sh 
#http://www.douban.com/note/151393163/
##################################################################
aclocal 
#读取configure.in
#生成aclocal.m4
#                   acinclude.m4 - - - - -.
#                                         V
#                                      .-------,
#configure.in ------------------------>|aclocal|
#                 {user macro files} ->|       |------> aclocal.m4
#                                      `-------'

##################################################################
autoreconf 
#读取configure.in aclocal.m4 acconfig.h
#生成configure
#
#                    aclocal.m4 - - - - - - - .
#                    (acconfig.h) - - - -.    |
#                                        V    V
#                                     .----------,
#configure.in ----------------------->|autoheader|----> config.h.in
#                                     `----------'
#                    aclocal.m4 - - - - - -.
#                                     .--------,
#configure.in ----------------------->|autoconf|------> configure
#
#                                     `--------'

##################################################################
automake --add-missing 
#读取configure.in 和 Makefile.am，
#生成 install-sh,missing以及makefile用到的东西
#                                     .--------,
#                                     |        | - - -> COPYING
#                                     |        | - - -> INSTALL
#                                     |        |------> install-sh
#                                     |        |------> missing
#                                     |automake|------> mkinstalldirs
#configure.in ----------------------->|        |
#Makefile.am  ----------------------->|        |------> Makefile.in
#                                     |        |------> stamp-h.in
#                                 .---+        | - - -> config.guess
#                                 |   |        | - - -> config.sub
#                                 |   `------+-'
#                                 |          | - - - -> config.guess
#                                 |libtoolize| - - - -> config.sub
#                                 |          |--------> ltmain.sh
#                                 |          |--------> ltconfig
#                                 `----------'
#configure.in:6: installing `./install-sh'
#configure.in:6: installing `./missing'
#Makefile.am: installing `./depcomp'
#configure.in: installing `./ylwrap'
./configure

