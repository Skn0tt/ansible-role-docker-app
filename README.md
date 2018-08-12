DockerApp
=========

A role for orchestrating Docker using [docker-app](https://github.com/docker/app).

Requirements
------------

- `docker`
- `pip`

Variables
--------------

This role exposes one variable, `dockerapp_images`, which specifies a list
of dockerapp images and their associated configuration. An image definition
comprises the `name` of the image, a `config` dictionary defining environment
variables, and an optional `state` field indicating whether the container should
be `up`, `down`, `start`, or `stop`, with the default state being `up`.

```yaml
dockerapp_images:
  - name: skn0tt/ente.dockerapp
    config:
      REDIS_VERSION: 2.12.2
      SYMMETRIC_SIGNING: true
```

The default value is

```yaml
dockerapp_images: []
```

Dependencies
------------

No other roles are required to use this role.

Installing This Role
--------------------

In order to install this role, you should create (or edit) a file called
`requirements.yml` in your Ansible root with contents like this:

```yaml
- src: skn0tt.docker_app
```

You can now run `ansible-galaxy install -r requirements.yml` to install the
role.

If you wish to use this role in a Tower job, add the `requirements.yml` file to
the `roles` directory in your project and Tower will download the roles when the
job runs.


Example Playbook
----------------

Assuming you have defined a host group called `servers`, you can use this role
on the hosts in that inventory as follows.

```yaml
- hosts: servers
  roles:
    - skn0tt.docker_app
```

License
-------

MIT

Author Information
------------------

Simon Knott [info@simonknott.de](mailto:info@simonknott.de)
[simonknott.de](https://simonknott.de)

Contributors :tada:
------------

Jack Henahan [@jhenahan](https://github.com/jhenahan)
