#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export DE=openbox

# Dbus fix
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

/usr/bin/xdg-user-dirs-update

# configure obmenu user
#sed -i 's/ablive/'$(whoami)'/' ~/.config/obmenu-generator/schema.pl \
#                             ~/.config/obmenu-generator/config.pl  

/usr/bin/openbox-session > ~/.openbox_startup.log 2>&1

#exec openbox-session
