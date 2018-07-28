# Ansible Role: docker_app

A role for orchestrating Docker using [docker-app](https://github.com/docker/app).

## Requirements

On Remote Hosts:

- Docker
- Python, Pip

## Role Variables

| Var    | Meaning                                 |
| ------ | --------------------------------------- |
| image  | `.dockerapp`-Image that should be used. |
| config | dictionary with config for docker-app   |
| state  | state to achieve: up | down | start | stop |

## Dependencies

None.

## Example Playbook

```yaml
- hosts: servers
  roles:
  - role: skn0tt.docker_app
    state: up
    image: skn0tt/ente.dockerapp
    config:
      REDIS_VERSION: 2.12.2
      SYMMETRIC_SIGNING: true
```

## License

MIT

## Author Information

Simon Knott [info@simonknott.de](mailto:info@simonknott.de)   
[simonknott.de](https://simonknott.de)
