# docker.php.webdevops.php-dev
PHP Dev image based on webdevops

[Docker Hub](https://hub.docker.com/r/codenamephp/php.webdevops.php-dev)

## What is it?

The image is based on [webdevops/php-dev:8.1](https://hub.docker.com/r/webdevops/php-dev) so I itend to use it for library development.

Webdevops still has some XDebug2 options set. These options emit a warning on stderr on process startup which [infection](https://infection.github.io/) interprets as error during testing.
So I'm removing those settings using sed.

Additionally I'm adding [phive](https://phar.io) from [hyperized/phive](https://hub.docker.com/r/hyperized/phive)
