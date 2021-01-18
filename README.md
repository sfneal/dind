# stephenneal/dind

[![Build Status](https://img.shields.io/travis/sfneal/dind/master.svg?style=flat-square)](https://travis-ci.org/sfneal/dind)
[![Total Downloads](https://img.shields.io/docker/pulls/stephenneal/dind?style=flat-square)](https://hub.docker.com/r/stephenneal/dind)
[![Latest Version](https://img.shields.io/docker/v/stephenneal/dind?style=flat-square)](https://hub.docker.com/r/stephenneal/dind)

Docker In Docker (DIND) provides an interface for sending Docker commands between Docker containers.  The initial use case for this package was to restart 'webserver' containers after updated SSL certificates had been retrieved by a 'certbot' container

## Installation

Docker images can be pulled using the Docker CLI.

```bash
docker pull stephenneal/dind:alpine-3.12-v1
```

## Usage

Add a 'docker' container with the container's Docker socket mapped to Docker socket of the host machine in order to execute Docker commands. 

```yaml
docker:
  image: stephenneal/dind:alpine-3.12-v1
  container_name: docker
  volumes:
    - /var/run/docker.sock:/var/run/docker.sock
  environment:
    - container_name=webserver proxy
    - container_cmd=/scripts/reload.sh
    - wait_for_container=certbot
  depends_on:
    - certbot
```

In this example the 'docker' container will execute the 'reload.sh' script in the 'webserver' & 'proxy' container's once the 'certbot' container has stopped running.  'dind' will check every 5 seconds to determine if the 'certbot' container has stopped.  Once it has stopped, 'dind' executes the command specified by the `container_cmd` environement variable.  After all commands have been executed, 'dind' stops running as well.

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

### Security

If you discover any security related issues, please email stephen.neal14@gmail.com instead of using the issue tracker.

## Credits

- [Stephen Neal](https://github.com/sfneal)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
