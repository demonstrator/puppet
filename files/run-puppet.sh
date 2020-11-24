#!/bin/bash
cd /root/puppet && git pull
/usr/bin/puppet apply manifests/
