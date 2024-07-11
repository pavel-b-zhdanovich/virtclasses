#!/bin/bash
systemctl disable avahi-daemon.service
systemctl mask avahi-daemon.service
systemctl disable cups 
systemctl disable cups-browsed
systemctl disable fail2ban.service
systemctl disable NetworkManager ModemManager.service
systemctl disable smbd.service
systemctl disable nmbd.service
systemctl disable wpa_supplicant.service
systemctl disable novnc@51
systemctl disable novnc@52
systemctl disable novnc@53
systemctl disable novnc@54
systemctl disable novnc@55
systemctl disable novnc@56
systemctl disable novnc@57
systemctl disable novnc-mib4
systemctl disable novnc
systemctl disable apt-daily-upgrade.timer
systemctl disable apt-daily.timer
systemctl disable exim4-base
apt remove -y exim4*
systemctl set-default multi-user.target

virsh autostart --disable --domain win10
cp -r scripts /opt 
cp vm.sh /etc/profile.d/
chmod a+x /etc/profile.d/vm.sh
cp -r getty@tty1.service.d/ /etc/systemd/system
cp novnc@.service /etc/systemd/user

