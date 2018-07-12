#!/bin/bash
echo "Pushing Repo!"
git push
TOKEN="gAAAAABbR32CDY1-CJ6CnnGzpAb8g9nxEYk9eXxcxkenoQ0WLoL-tkzJ-YW0U6wsR3BiQOLPf0tdl85r4eCHFS87L17f3KKI8IenhRmHdhsYmRdHrK1hP6tGovBDyqWLjjfgU89vbtUandACZ-ZAf8PjMIma1beQJmHEgCNi31PPkpQYQx21hKU"
echo "Creating Instance"

curl -v -k -H "Content-Type:application/json" -H "X-Auth-Token:$TOKEN" -d "@user-data.json" -X POST https://spglobal.platform9.net/nova/v2.1/0bdc6b9977f74d058aa2c57b76271819/servers
