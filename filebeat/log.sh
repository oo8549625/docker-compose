bash -c 'cat <<EOF >> log/auth.log
Sep  2 09:16:23 ELK-test sshd[899904]: Accepted password for root from 127.0.0.1 port 62380 ssh2
Sep  2 09:20:26 ELK-test sshd[900094]: Failed password for root from 127.0.0.1 port 62466 ssh2
Sep  2 09:20:48 ELK-test sshd[900107]: Failed password for invalid user roota from 127.0.0.1 port 62472 ssh2
Sep  2 09:21:21 ELK-test sshd[900124]: Received disconnect from 127.0.0.1 port 62476:11: Normal Shutdown
Sep  2 14:45:01 ELK-test CRON[908655]: pam_unix(cron:session): session opened for user root(uid=0) by (uid=0)
EOF'