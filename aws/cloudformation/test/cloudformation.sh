#!/bin/bash

if [ -f .env ]; then
    source .env
else
    echo "Prepare .env file before deploying"
    exit 1
fi


aws cloudformation \
deploy \
--template-file cloudformation.yml \
--stack-name npm-test \
--capabilities CAPABILITY_NAMED_IAM \
--parameter-overrides \
"AppName=$APP_NAME" \
"LdapUrl=$LDAP_URL" \
"LdapSearchBase=$LDAP_SEARCH_BASE" \
"LdapSearchFilter=$LDAP_SEARCH_FILTER" \
"LdapGroupSearchBase=$LDAP_GROUP_SEARCH_BASE"
