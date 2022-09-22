for org in $(cat $ORGS_JSON | jq -r '.orgs[] | @base64'); do
   org=$(echo $org | base64 --decode)
   gh api \
    -H "Accept: application/vnd.github+json" \
    /orgs/$org/repos
done