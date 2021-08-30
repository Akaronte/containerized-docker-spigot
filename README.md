vi /etc/sysctl.conf

# sysctl settings are defined through files in
# /usr/lib/sysctl.d/, /run/sysctl.d/, and /etc/sysctl.d/.
#
# Vendors settings live in /usr/lib/sysctl.d/.
# To override a whole file, create a new file with the same in
# /etc/sysctl.d/ and put new settings there. To override
# only specific settings, add a file with a lexically later
# name in /etc/sysctl.d/ and put new settings there.
#
# For more information, see sysctl.conf(5) and sysctl.d(5).
kernel.panic = 10
kernel.watchdog_thresh = 20
net.ipv6.conf.all.disable_ipv6 = 1
vm.max_map_count=262144


###start BAT
java -Xmx2048M -Xms2048M -jar spigot.jar nogui
PAUSE
