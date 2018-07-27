# Ansible Role: docker-app

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

## Dependencies

None.

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml
- hosts: servers
  roles:
  - role: skn0tt.docker-app
    image: skn0tt/ente.dockerapp
```

## License

MIT

## Author Information

Simon Knott [info@simonknott.de](mailto:info@simonknott.de)
[simonknott.de](https://simonknott.de)

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
