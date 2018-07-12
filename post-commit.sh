#!/bin/bash
echo "Pushing Repo!"
git push
TOKEN="gAAAAABbR3k3-2TWwBx1Nj0T5p4RXPrV8VF16fTt77sr6o8avBVpn63XFVNfKO42zGz0dzSvs9pWzQd-AkEbSr3i3kxWJmlmwzEpDL0T4eEJVISvDFyZzzhOdrGrCEzPH2KHMkxpJ5lBsUwxU2qTpC17wqzLtxU7bg"
echo "Creating Instance"

curl -v -k -H "Content-Type:application/json" -H "X-Auth-Token:$TOKEN" -d "@user-data.json" -X POST https://spglobal.platform9.net/nova/v2.1/0bdc6b9977f74d058aa2c57b76271819/servers
