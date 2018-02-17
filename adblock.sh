#!/usr/bin/env bash

blocklist="http://pgl.yoyo.org/adservers/serverlist.php?hostformat=squid-dstdom-regex&showintro=0&startdate%5Bday%5D=&startdate%5Bmonth%5D=&startdate%5Byear%5D=&mimetype=plaintext"
blocklist_savefile="adblock.list"

#printf "Retrieving block list... "
#curl -sSL "$blocklist" > $blocklist_savefile && printf "Done\n\n"

printf "Reloading squid... "
squid -k reconfigure && printf "Done\n"
