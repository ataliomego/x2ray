
#!/bin/bash

# Pengecekan Hak Akses Root
if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as root"
    exit 1
fi

# Pengecekan Virtualisasi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
    echo "OpenVZ is not supported"
    exit 1
fi

# ==========================================
# Warna
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# =========================================

# Mengambil Alamat IP
MYIP=$(wget -qO- ipinfo.io/ip)
echo "Checking VPS"
IZIN=$(wget -qO- ipinfo.io/ip)
clear

# Membuat direktori dan file konfigurasi
mkdir /var/lib/crot
echo "IP=" >> /var/lib/crot/ipvps.conf
cd

# Instalasi Alat
echo -e "${RED}Menginstal alat...${NC}"
# ${RED}wget URL_INSTALL_TOOLS_SCRIPT && chmod +x install-tools.sh && ./install-tools.sh${NC}

# Instalasi Xray
echo -e "${RED}Menginstal Xray...${NC}"
# ${RED}wget URL_INSTALL_XRAY_SCRIPT && chmod +x install-xray.sh && ./install-xray.sh${NC}

# Instalasi Xmenu
echo -e "${RED}Menginstal xmenu...${NC}"
# ${RED}wget URL_INSTALL_XMENU_SCRIPT && chmod +x updatedll.sh && ./updatedll.sh${NC}

# Penyelesaian
echo " "
echo "Installation has been completed!!"
echo " "
echo "============================================================================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------" | tee -a log-install.txt
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
echo -e "    SCRIPT x2ray Cincop by 88Numb"  | tee -a log-install.txt
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Layanan & Port"  | tee -a log-install.txt
echo "   - Nginx                      : 89"  | tee -a log-install.txt
echo "   - XRAYS TROJAN WS TLS        : 443"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS WS TLS   : 443"  | tee -a log-install.txt
echo "   - XRAYS VLESS WS TLS         : 443"  | tee -a log-install.txt
echo "   - XRAYS VMESS WS TLS         : 443"  | tee -a log-install.txt
echo "   - XRAYS TROJAN WS HTTP       : 80"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS WS HTTP  : 80"  | tee -a log-install.txt
echo "   - XRAYS VLESS WS HTTP        : 80"  | tee -a log-install.txt
echo "   - XRAYS VMESS WS HTTP        : 80"  | tee -a log-install.txt
echo "   - XRAYS TROJAN GRPC          : 443"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS GRPC     : 443"  | tee -a log-install.txt
echo "   - XRAYS VMESS GRPC           : 443"  | tee -a log-install.txt
echo "   - XRAYS VLESS GRPC           : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Informasi Server & Fitur Lainnya"  | tee -a log-install.txt
echo "   - Zona Waktu                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                  : [ON]"  | tee -a log-install.txt
echo "   - Dflate                    : [ON]"  | tee -a log-install.txt
echo "   - IPtables                  : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot               : [ON]"  | tee -a log-install.txt
echo "   - IPv6                      : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot Pada 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Hapus Akun Kadaluarsa" | tee -a log-install.txt
echo "   - Full Orders Untuk Berbagai Layanan" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Log Instalasi --> /root/log-install.txt"  | tee -a log-install.txt
echo " Reboot 15 Detik"
sleep 15
cd
rm -rf updatedll
rm -rf updatedll.sh
rm -rf setup.sh
rm -rf install-xray.sh
rm -rf install-tools.sh
