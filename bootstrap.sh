#!/bin/bash
python3.6 -m venv .venv --without-pip
wget https://bootstrap.pypa.io/get-pip.py
./.venv/bin/python get-pip.py
rm -f get-pip.py
./.venv/bin/pip install -r requirements/vagrant.txt
# ./.venv/bin/ansible-galaxy install --force -r requirements.yml

