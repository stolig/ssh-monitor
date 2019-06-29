# ssh-monitor
Monitors to see if you can connect using ssh to a host specified in the bash script. Alert if you cannot connect

Why would you want to do this?: Sometimes if a machine is having problems, you can still ping it but the services aren't behaving. In this case, a ping or uptime monitor wouldn't tell you that the machine's services are having issues. Example: Another dev in my environment set a mount in fstab to some remote drives...it turns out that this mount would occasionally hang the services on my linux machine.
