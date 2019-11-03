# 'ironkey': Unlock ironkey and mount it into users home directory.
function ironkey
  sudo lsusb > /dev/null
  sudo fdisk -l > /dev/null
  eval /media/(whoami)/'IronKey\ Unlocker'/linux/ironkey
  sudo bindfs -u (id -u) -g (id -g) /media/(whoami)/ENCRYPTED ~/encrypted
end
