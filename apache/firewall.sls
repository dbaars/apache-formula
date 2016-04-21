include:
  - apache

allowhttp:
  firewalld.present:
    - name: public
    - services:
      - http

# What this means is that the service.running state will look for changes to the firewalld.present state 
# and restart firewalld if changes occur

firewalld:
  service.running:
    - watch:
      - firewalld: public
