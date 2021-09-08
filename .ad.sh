#!/usr/local/bin/expect -f
set timeout -1
spawn arc diff --nolint --nounit
match_max 100000
expect "Provide explanation for skipping lint"
send -- "remote\r"
expect "Provide explanation for skipping unit"
send -- "remote\r"
expect eof
