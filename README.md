# Ansible Role: PHP 5.x

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-php.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-php)
[![Circle CI](https://circleci.com/gh/Aplyca/ansible-role-php.svg?style=svg)](https://circleci.com/gh/Aplyca/ansible-role-php)

Ansible Role that installs and configure PHP 5.x on Debian/Ubuntu.

## Requirements

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-php/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

## Installation

Using ansible galaxy:
```bash
ansible-galaxy install aplyca.PHP
```
You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:
```yaml
dependencies:
  - { role: aplyca.PHP }
```
## Features

* PHP 5.6
* Install modules
* Composer
* OPCache
* Configure all PHP core and extensions settings
* Apache integration

## Role Variables

See default variables: https://github.com/Aplyca/ansible-role-php/blob/master/defaults/main.yml

## Dependencies

None.

## Testing

Use Vagrant to test the role:

```bash
cd tests;
vagrant up;
```

## License

MIT / BSD

## Author Information

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)
