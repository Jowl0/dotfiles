#!/bin/bash

# Verifica si el servicio Bluetooth está activo
if bluetoothctl show | grep -q "Powered: yes"; then
    # Si está activado, muestra el estado del dispositivo Bluetooth
    devices=$(bluetoothctl devices | wc -l)
    if [ "$devices" -gt 0 ]; then
        # Si hay dispositivos emparejados, muestra el número de dispositivos
        echo " $devices Dispositivos"
    else
        # Si no hay dispositivos, muestra el estado de Bluetooth
        echo " Desconectado"
    fi
else
    echo " Apagado"
fi

