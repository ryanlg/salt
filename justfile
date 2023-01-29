# Justfile for SaltStack
# ======================
# This Justfile contains some recipes useful for the Ryhino project's Salt Stack. These recipes can be
# executed by "casey/just".


[private]
default:
    just --list


# Template Makers
# ===============
# Prepare a VM to be cloned as templates.

# Prevent SSH from checking if the host is known and writing the host to known host.
SSH_NO_CHECK_HOST := "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

# Directory containing all the template-making scripts
TEMPLATE_DIR := "scripts/template-makers"

# Command that write the template-making script to the dest. Used by `prepare-remote-as-template`.
WRITE_TEMPLATE_CMD := "cat > prepare-as-template.sh; chmod 777 prepare-as-template.sh"


[private]
prepare-remote-as-template template dest:
    op inject -i {{ TEMPLATE_DIR }}/{{ template }}.sh.tmpl | {{ SSH_NO_CHECK_HOST }} {{ dest }} "{{ WRITE_TEMPLATE_CMD }}"

# Prepare {{dest}} VM to be used as a generic Rocky Linux template. {{dest}} looks like "rocky@10.0.0.1".
prepare-generic-rocky-template dest: (prepare-remote-as-template "generic-rocky" dest)
