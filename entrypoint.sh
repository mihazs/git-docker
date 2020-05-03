#!/bin/sh

git clone "$1" /var/repo || git -C /var/repo pull
cat > /etc/webhook/hooks.json <<EOF
[
    {
        "id": "redeploy",
        "execute-command": "/var/scripts/redeploy.sh",
        "command-working-directory": "/var/repo",
        "pass-arguments-to-command": [
            {
              "source": "payload",
              "name": "repository.name"
            }
          ],
          "trigger-rule": {
            "and": [
              {
                "match":
                {
                  "type": "payload-hash-sha1",
                  "secret": "$SECRET",
                  "parameter":
                  {
                    "source": "header",
                    "name": "X-Hub-Signature"
                  }
                }
              },
              {
                "match":
                {
                  "type": "value",
                  "value": "refs/heads/master",
                  "parameter":
                  {
                    "source": "payload",
                    "name": "ref"
                  }
                }
              }
            ]
          }
    }
    
]
EOF
/usr/local/bin/webhook -verbose -hooks=/etc/webhook/hooks.json -hotreload