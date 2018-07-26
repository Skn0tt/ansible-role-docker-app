# Ansible Role: docker-app

A role for orchestrating Docker using [docker-app](https://github.com/docker/app).

## Requirements

The `docker-app` executable needs to be in PATH.

## Role Variables

| Var   | Meaning                                 |
| ----- | --------------------------------------- |
| image | `.dockerapp`-Image that should be used. |

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

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
