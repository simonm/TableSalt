# pkg.install
vim:
  pkg:
    - installed
    {% if grains['os_family'] == 'RedHat' %}
    - name: vim-enhanced
    {% elif grains['os_family'] == 'Debian' %}
    - name: vim-nox
    {% elif grains['os_family'] == 'Arch' %}
    - name: gvim
    {% endif %}
