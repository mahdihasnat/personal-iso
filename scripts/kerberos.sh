#!/bin/bash
set -eux

echo "\nInstalling Kerberos ...\n"
apt-get -o DPkg::Lock::Timeout=-1 -y install krb5-user
