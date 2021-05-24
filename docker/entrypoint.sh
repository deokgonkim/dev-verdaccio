#!/bin/sh

echo "Running verdaccio"

# configure verdaccio-github-oauth-ui

# if [ "x$GITHUB_ORGNAME" == "x" ]; then
#     echo "Please GITHUB_ORGNAME environment variable"
#     exit 1
# fi
# if [ "x$GITHUB_APP_CLIENT_ID" == "x" ]; then
#     echo "Please GITHUB_APP_CLIENT_ID environment variable"
#     exit 1
# fi
# if [ "x$GITHUB_APP_SECRET" == "x" ]; then
#     echo "Please GITHUB_APP_SECRET environment variable"
#     exit 1
# fi

# replace placeholder texts for verdaccio-github-oauth-ui
# cat /verdaccio/conf/config.yaml \
# | sed s/GITHUB_ORGNAME/$GITHUB_ORGNAME/ \
# | sed s/GITHUB_APP_CLIENT_ID/$GITHUB_APP_CLIENT_ID/ \
# | sed s/GITHUB_APP_SECRET/$GITHUB_APP_SECRET/ \
# > /tmp/verdaccio.yml && cat /tmp/verdaccio.yml > /verdaccio/conf/config.yaml

# Verify configuration
VARS='$LDAP_URL:$LDAP_SEARCH_BASE:$LDAP_SEARCH_FILTER:$LDAP_GROUP_SEARCH_BASE'
envsubst "$VARS" < /verdaccio/conf/config.yaml > /tmp/verdaccio-config.yml && cat /tmp/verdaccio-config.yml > /verdaccio/conf/config.yaml && cat /verdaccio/conf/config.yaml

# Run verdaccio
$VERDACCIO_APPDIR/bin/verdaccio \
--config /verdaccio/conf/config.yaml \
--listen $VERDACCIO_PROTOCOL://0.0.0.0:$VERDACCIO_PORT
