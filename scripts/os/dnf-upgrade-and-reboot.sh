#! /bin/sh
# Simple script to update then reboot the system. Goal is to run this with cron.

logger Script has triggered a system upgrade...

if dnf upgrade --assumeyes 2>&1 | logger; then
    logger "Upgrade complete. Script will now reboot the system in 5 seconds."
    sleep 5
    reboot
else
    logger Upgrade failed. No reboot.
fi
