#!/bin/bash

SCRIPT_VERSION="1.0"

RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
RESET='\033[0m'

while true; do
  clear
  echo -e "${CYAN}${BOLD}"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "     🔧 VPN MultiTools by HOSEINLOL 🔧   "
  echo "          🌐 Version $SCRIPT_VERSION     "
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo -e "${RESET}"
  echo -e "${YELLOW}0)${RESET}  🌀 ${GREEN}Update & tools${RESET}"
  echo -e "${YELLOW}1)${RESET}  🚀 ${GREEN}Optivpn${RESET}"
  echo -e "${YELLOW}2)${RESET}  🛡️  ${GREEN}Marzban Installer${RESET}"
  echo -e "${YELLOW}3)${RESET}  ⚙️  ${GREEN}X-ui (Sanaie)${RESET}"
  echo -e "${YELLOW}4)${RESET}  ⚙️  ${GREEN}X-ui (Alireza)${RESET}"
  echo -e "${YELLOW}5)${RESET}  🧩 ${GREEN}Tx-ui${RESET}"
  echo -e "${YELLOW}6)${RESET}  🌐 ${GREEN}Utunnel IPv4${RESET}"
  echo -e "${YELLOW}7)${RESET}  🌀 ${GREEN}Nebula Tunnel${RESET}"
  echo -e "${YELLOW}8)${RESET}  🔀 ${GREEN}AS-All Script${RESET}"
  echo -e "${YELLOW}9)${RESET}  🌊 ${GREEN}Remnawave Setup${RESET}"
  echo -e "${YELLOW}10)${RESET} 💻 ${GREEN}S-ui Installer${RESET}"
  echo -e "${YELLOW}11)${RESET} ❌ ${RED}Exit${RESET}"
  echo

  read -p "💡 Please enter an option [1]: " option
  option=${option:-1}

  case $option in
      0)
      echo -e "${CYAN}👉 Updating and installing tools...${RESET}"
      apt update -y && apt install sudo curl wget tmate nano -y
      ;;
    1)
      echo -e "${CYAN}👉 Running Optivpn...${RESET}"
      sudo bash <(curl -Ls https://raw.githubusercontent.com/hoseinlolready/panel/refs/heads/main/Optivpn)
      ;;
    2)
      echo -e "${CYAN}👉 Installing Marzban...${RESET}"
      sudo bash -c "$(curl -sL https://github.com/Gozargah/Marzban-scripts/raw/master/marzban.sh)" @ install
      ;;
    3)
      echo -e "${CYAN}👉 Installing X-ui (Sanaie)...${RESET}"
      bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
      ;;
    4)
      echo -e "${CYAN}👉 Installing X-ui (Alireza)...${RESET}"
      bash <(curl -Ls https://raw.githubusercontent.com/alireza0/x-ui/master/install.sh)
      ;;
    5)
      echo -e "${CYAN}👉 Installing Tx-ui...${RESET}"
      bash <(curl -Ls https://raw.githubusercontent.com/AghayeCoder/tx-ui/master/install.sh)
      ;;
    6)
      echo -e "${CYAN}👉 Installing Utunnel (IPv4)...${RESET}"
      bash <(curl -s https://raw.githubusercontent.com/aliamg1356/utunnel/refs/heads/main/install_utunnel.sh --ipv4)
      ;;
    7)
      echo -e "${CYAN}👉 Installing Nebula Tunnel...${RESET}"
      bash <(curl -Ls https://raw.githubusercontent.com/MrAminiDev/NebulaTunnel/main/install.sh)
      ;;
    8)
      echo -e "${CYAN}👉 Running AS-All Script...${RESET}"
      bash -c "$(curl -fsSL https://raw.githubusercontent.com/Salarvand-Education/AS-All/main/Menu.sh)"
      ;;
    9)
      echo -e "${CYAN}👉 Installing Remnawave Setup...${RESET}"
      wget -O start.sh https://raw.githubusercontent.com/AsanFillter/Remnawave-AutoSetup/main/start.sh && chmod +x start.sh && ./start.sh && rm -f start.sh
      ;;
    10)
      echo -e "${CYAN}👉 Installing S-ui...${RESET}"
      bash <(curl -Ls https://raw.githubusercontent.com/alireza0/s-ui/master/install.sh)
      ;;
    11)
      echo -e "${RED}👋 Exiting program...${RESET}"
      break
      ;;
    *)
      echo -e "${RED}❌ Invalid option. Please enter a valid number!${RESET}"
      sleep 2
      ;;
  esac

  echo
  read -p "🔁 Press Enter to return to menu..."
done
