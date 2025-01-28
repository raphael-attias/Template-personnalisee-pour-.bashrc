# Gestion des couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # Sans couleur

# Texte en jaune
echo -e "${YELLOW}
                           _____                                         _____                    
            _____     _____\    \ ___________   _______    ______   _____\    \ ___________       
       _____\    \   /    / |    |\          \  \      |  |      | /    / |    |\          \      
      /    / \    | /    /  /___/| \    /\    \  |     /  /     /|/    /  /___/| \    /\    \     
     |    |  /___/||    |__ |___|/  |   \_\    | |\    \  \    |/|    |__ |___|/  |   \_\    |    
  ____\    \ |   |||       \        |      ___/  \ \    \ |    | |       \        |      ___/     
 /    /\    \|___|/|     __/ __     |      \  ____\|     \|    | |     __/ __     |      \  ____  
|    |/ \    \     |\    \  /  \   /     /\ \/    \|\         /| |\    \  /  \   /     /\ \/    \
|\____\ /____/|    | \____\/    | /_____/ |\______|| \_______/ | | \____\/    | /_____/ |\______|
| |   ||    | |    | |    |____/| |     | | |     | \ |     | /  | |    |____/| |     | | |     |
 \|___||____|/      \|____|   | | |_____|/ \|_____|  \|_____|/    \|____|   | | |_____|/ \|_____|
                          |___|/                                        |___|/                    

${NC}"
echo -e "${GREEN}========================================${NC}"
# Température du CPU
cpu_temp=$(vcgencmd measure_temp | awk -F "=" '{print $2}')
echo -e "Température CPU : ${RED}$cpu_temp${NC}"

# Température du GPU
gpu_temp=$(cat /sys/class/thermal/thermal_zone0/temp)
gpu_temp_c=$(echo "scale=1; $gpu_temp / 1000" | bc)
echo -e "Température GPU : ${RED}${gpu_temp_c}°C${NC}"

# Date et heure
echo -e "${GREEN}Date : $(date)${NC}"
echo -e "${GREEN}========================================${NC}"