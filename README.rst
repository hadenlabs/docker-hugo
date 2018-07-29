docker-hugo
###########

|Python| |Build Status| |Pyup| |GitHub issues| |license|

:Version: 0.0.0
:Web: https://github.com/hadenlabs/docker-hugo
:Download: http://github.com/hadenlabs/docker-hugo
:Source: http://github.com/hadenlabs/docker-hugo
:Keywords: docker-hugo

.. contents:: Table of Contents:
    :local:

Docker-Hugo

Features
========

- Task

Requirements:
=============

List of applications:

- `Python 3.6.4`_
- `Docker`_
- `Docker Compose`_

Quick Start
===========

- Fork this repository

Usage
-----

- Install dependences

.. code-block:: bash

  λ make setup

- Build images

.. code-block:: bash

  λ make build

Actions:
========

.. code-block:: bash

  λ make
    ༼ つ ◕_◕ ༽つ Makefile for docker-hugo

    Usage:
        environment               create environment with pyenv
        install                   install dependences python by env
        clean                     remove files of build
        setup                     install requirements

        Alias:

            env        environment

        Docker:

            docker.build         build all or one example: make docker.build service={{services}}  args=(--pull|...)
            docker.down          down services docker-compose
            docker.exec          exec command in container by {{services}} {{command}}
            docker.ssh           connect by ssh to container
            docker.stop          stop services by env
            docker.verify_network           verify network
            docker.up             up services of docker-compose
            docker.run            run {service} {env}
            docker.restart        restart by {env}
            docker.list           list services of docker

        Docs:

            docs.show                  Show restview README
            docs.make.html             Make documentation html

License
=======

MIT

Changelog
=========

Please see `CHANGELOG`_ for more information what
has changed recently.

Contributing
============

Please see `CONTRIBUTING`_ for details.

Credits
=======

-  `author`_
-  `contributors`_

Made with ♥️and ☕️by `author`_ and `company`_.

.. |Pyup| image:: https://pyup.io/repos/github/hadenlabs/docker-hugo/shield.svg
     :target: https://pyup.io/repos/github/hadenlabs/docker-hugo/
     :alt: Updates
.. |Python| image:: https://pyup.io/repos/github/hadenlabs/docker-hugo/python-3-shield.svg
     :target: https://pyup.io/repos/github/hadenlabs/docker-hugo/
     :alt: Python 3
.. |Build Status| image:: https://travis-ci.org/hadenlabs/docker-hugo.svg
   :target: https://travis-ci.org/hadenlabs/docker-hugo
.. |GitHub issues| image:: https://img.shields.io/github/issues/hadenlabs/docker-hugo.svg
   :target: https://github.com/hadenlabs/docker-hugo/issues

.. |license| image:: https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square
  :target: LICENSE
  :alt: License

.. Links
.. _`changelog`: CHANGELOG.rst
.. _`contributors`: AUTHORS
.. _`contributing`: CONTRIBUTING.rst

.. _`company`: https://github.com/hadenlabs
.. _`author`: https://github.com/luismayta

.. dependences
.. _Python 3.6.4: https://www.python.org/downloads/release/python-364
.. _Docker: https://www.docker.com/
.. _Docker Compose: https://docs.docker.com/compose/
