{% if grains["os_family"] == "RedHat" %}
docker:
  pkg:
    docker:
      use_upstream: repo
{% endif %}
