#!/bin/sh

# install dulu whois
# pkg install whois

echo "=== Cek Provider Jaringan (ISP) di FreeBSD ==="

# Cek IP Publik
echo -e "\n-- IP Publik --"
IP=$(fetch -qo - https://ifconfig.me)
echo "IP Publik: $IP"

# Cek WHOIS (Provider)
echo -e "\n-- Informasi Provider dari WHOIS --"
whois "$IP" | grep -Ei 'OrgName|OrgTechName|netname|descr|owner|country|address'

echo -e "\nSelesai."
