#!/usr/bin/expect -f

set timeout -1
set password "NSlab432"
#set dir1 [lindex $argv 1]
#set dir2 [lindex $argv 2]
spawn scp -r dns_detect root@115.47.59.18:cyn/
expect {
"*yes/no" {send "yes\r"; exp_continue}
"*password:" {send "$password\r"}
}
expect eof
