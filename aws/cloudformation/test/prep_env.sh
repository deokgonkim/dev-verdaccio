#!/bin/bash

echo "LDAP_URL(ex. ldaps://localhost/) : "; read LDAP_URL; echo "export LDAP_URL=${LDAP_URL}" > .env
echo "LDAP_SEARCH_BASE(ex. ou=Users,dc=dgkim,dc=net) : "; read LDAP_SEARCH_BASE; echo "export LDAP_SEARCH_BASE=${LDAP_SEARCH_BASE}" >> .env
echo "LDAP_SEARCH_FILTER(ex. (uid={{username}})) : "; read LDAP_SEARCH_FILTER; echo "export LDAP_SEARCH_FILTER=\"${LDAP_SEARCH_FILTER}\"" >> .env
echo "LDAP_GROUP_SEARCH_BASE(ex. ou=Groups,dc=dgkim,dc=net) : "; read LDAP_GROUP_SEARCH_BASE; echo "export LDAP_GROUP_SEARCH_BASE=${LDAP_GROUP_SEARCH_BASE}" >> .env
