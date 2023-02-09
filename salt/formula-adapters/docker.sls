# Adapter for docker-formula
# ==========================
# This state adapts "salt-formulas/docker-formula" to our needs in Ryhino.

{% set current_salt_top = salt["state.show_top"]()[saltenv] %}
{% set is_docker_included = "docker" in current_salt_top %}
{% set is_docker_compose_included = "docker.compose" in current_salt_top %}
{% set is_docker_exist = salt["state.sls_exists"]("docker") %}


{% if (is_docker_included or is_docker_compose_included) and is_docker_exist %}
include:

  {% if is_docker_included %}
  - docker
  {% endif %}

  {% if is_docker_compose_included %}
  - docker.compose
  {% endif %}

  {# @linear(RH-15): "docker-formula" requires some packages in EPEL #}
  {% if grains['os_family'] == "RedHat" %}
  - pkgrepos.epel
  {% endif %}

{% endif %}
