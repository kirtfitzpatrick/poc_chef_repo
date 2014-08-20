#!/bin/sh 
PATH=/opt/chef/embedded/bin:/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/opt/chef/embedded/bin:/sbin:/usr/sbin:/bin:/usr/bin

for env in `ls -1 environments`;
do
  berks apply $env --lockfile=environments/$env/Berksfile.lock
done
