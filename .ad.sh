#!/usr/local/bin/expect -f
set timeout -1
spawn arc diff --nolint --nounit
match_max 100000
expect "Provide explanation for skipping lint or press Enter to abort"
send -- "remote\r"
expect "Provide explanation for skipping unit tests or press Enter to abort"
send -- "remote\r"
expect eof
