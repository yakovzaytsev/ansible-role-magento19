Role Name
=========

Install magento 1.9 and setup sample data

This is how to get a new laptop to work on this project.

0. get python3 

1. make venv to provide ansible for Vagrant provisioning

        magento19 $ ./bootstrap.sh

        magento19 $ export PATH=`pwd`/.venv/bin:$PATH

2. provision vagrant

        magento19 $ vagrant up

Role Variables
--------------

Magento `setup:install` variables should be set accordingly

- admin_firstname
- admin_lastname
- admin_email
- admin_user
- admin_password

Dependencies
------------

- ysz.phpbrew
- ysz.mysql

To get PHP 5.x and MySQL 

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: magento
      vars:
        - admin_firstname: first
        - admin_lastname: last
        - admin_email: first@last.com
      roles:
        - { role: ysz.magento19 }

License
-------

BSD

