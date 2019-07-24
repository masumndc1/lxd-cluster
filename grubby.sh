#!/bin/bash

if [ ! -f /etc/sysctl.d/99-userns.conf ] ; then
   grubby --args="user_namespace.enable=1" --update-kernel="$(grubby --default-kernel)"
   grubby --args="namespace.unpriv_enable=1" --update-kernel="$(grubby --default-kernel)"
   echo "user.max_user_namespaces=3883" > /etc/sysctl.d/99-userns.conf
fi
