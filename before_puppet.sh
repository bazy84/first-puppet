#!/bin/bash
#
# who to blame
# install puppet and epel repos
#
yum -y install http://ftp.astral.ro/mirrors/fedora/pub/epel/6/i386/epel-release-6-8.noarch.rpm
yum -y install http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
#
yum -y install puppet git
git clone https://github.com/bazy84/first-puppet.git /var/lib/puppet/code
# first puppet run
puppet apply --verbose /var/lib/puppet/code/manifests/site.pp --modulepath=/var/lib/puppet/code/modules/
