#!/usr/bin/with-contenv bashio
# ==============================================================================
# Configure NGINX
# ==============================================================================
echo 'Oh hello there...1'
ingress_port=$(bashio::addon.ingress_port)
echo 'Oh hello there...2'
ingress_entry=$(bashio::addon.ingress_entry)
echo 'Oh hello there...3'
ingress_interface=$(bashio::addon.ip_address)
echo 'Oh hello there...4'

# Retrieve the ingress_entry query path so that nginx can perform rewrites accordingly
sed -i "s#%%ingress_entry%%#${ingress_entry}#g" /etc/nginx/nginx.conf
sed -i "s/%%interface%%/${ingress_interface}/g" /etc/nginx/nginx.conf