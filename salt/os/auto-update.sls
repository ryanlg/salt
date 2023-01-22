# Automatically crontab the OS's package manager to update all packages, then reboot.

{% if grains['os'] == 'Rocky' %}
/root/salt/scripts/os/dnf-upgrade-and-reboot.sh:
    file.managed:
        - source: salt://os/files/dnf-upgrade-and-reboot.sh
        - user: root
        - group: root
        - mode: 700
        - makedirs: True

    cron.present:
        - identifier: "os-audo-update"
        - user: root
        - dayweek: 6
        - hour: 6
        - minute: 0
{% endif %}
