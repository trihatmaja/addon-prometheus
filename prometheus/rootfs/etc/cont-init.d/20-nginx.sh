#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: Prometheus
# Configures NGINX for use with ttyd
# ==============================================================================
declare dns_host
declare ingress_entry
declare ingress_interface
declare ingress_port

mv /etc/nginx/servers/direct.disabled /etc/nginx/servers/direct.conf
ingress_entry=$(bashio::addon.ingress_entry)
sed -i "s#%%ingress_entry%%#${ingress_entry}#g" /etc/nginx/servers/direct.conf

ingress_port=$(bashio::addon.ingress_port)
ingress_interface=$(bashio::addon.ip_address)
sed -i "s/%%port%%/${ingress_port}/g" /etc/nginx/servers/ingress.conf
sed -i "s/%%interface%%/${ingress_interface}/g" /etc/nginx/servers/ingress.conf

dns_host=$(bashio::dns.host)
sed -i "s#%%dns_host%%#${dns_host}#g" /etc/nginx/includes/resolver.conf