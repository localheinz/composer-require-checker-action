#!/bin/sh -l

if [ -n "${COMPOSER_REQUIRE_CHECKER_VERSION}" ] && [ "${COMPOSER_REQUIRE_CHECKER_VERSION}" != "${COMPOSER_REQUIRE_CHECKER_VERSION_DEFAULT}" ]; then
  composer global require maglnet/composer-require-checker:"${COMPOSER_REQUIRE_CHECKER_VERSION}" --no-interaction --no-progress --no-suggest;
fi

if [ "$HOME" != '/root' ]; then
  cp -r /root/.composer "$HOME"/.composer;
fi

sh -c "$HOME/.composer/vendor/bin/composer-require-checker check $*"
