FROM verdaccio/verdaccio


USER root
# for envsubst (in entrypoint.sh)
RUN apk add gettext

# Install verdaccio-github-oauth-ui
# RUN chown -R verdaccio /opt/verdaccio/.yarn
# RUN yarn add verdaccio-github-oauth-ui

RUN yarn add verdaccio-ldap

# Back to verdaccio build
USER verdaccio

# Add configuration
COPY --chown=verdaccio:nogroup verdaccio.yml /verdaccio/conf/config.yaml

# override entrypoint.sh
# to reconfigure with environment variables
ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
