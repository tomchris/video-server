#!/bin/bash
echo "Pushing Repo!"
git push
TOKEN="gAAAAABbRuAPOqYcN-LcmSqdjKfpjx6TN0zorLXb9z2QGJlejlR6SqqlIxhmKswbPumNetZXLsLnKR5_trD5DfoxYcHCi1_atCqhnGBs-X6L07BvTD5-Sd0D5nC3mkfazUy1JZcl9w3MOa-0Ge2AbG2zpgTgt2mlxdAZ4prjXxJnow4GgWh_CmqGXrt75DntytUxsDUMcLtd"
curl -v -k -H "Content-Type:application/json" -H "X-Auth-Token:$TOKEN" -d "@user-data.json" -X POST https://spglobal.platform9.net/nova/v2.1/0bdc6b9977f74d058aa2c57b76271819/servers
