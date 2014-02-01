#/bin/bash
#
set -x
#
for node in `aws ec2 describe-network-interfaces | grep PublicIp | cut -d'"' -f4 | uniq`
do
  ssh -o StrictHostKeyChecking=no root@${node} "stat /var/lib/puppet/code" &>/dev/null
    if [ $? -ne 0 ]
    then
      scp -o StrictHostKeyChecking=no /home/upncritu/mine/UP/git/first-puppet/before_puppet.sh root@${node}:/root && ssh -o StrictHostKeyChecking=no -t root@${node} "/root/before_puppet.sh"
    fi
done
