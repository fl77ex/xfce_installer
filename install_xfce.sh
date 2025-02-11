#!/bin/bash

# Обновление списка пакетов и установка обновлений
sudo apt update && sudo apt upgrade -y

# Установка XFCE
sudo apt install -y xfce4 xfce4-goodies

# Установка xrdp для удаленного подключения
sudo apt install -y xrdp

# Настройка xrdp для использования XFCE
echo "startxfce4" > ~/.xsession

# Перезапуск xrdp
sudo systemctl restart xrdp

# Открытие порта для подключения через RDP
sudo ufw allow 3389/tcp

# Уведомление пользователя
echo "XFCE и xrdp установлены. Вы можете подключиться через RDP."
