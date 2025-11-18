# Needs A, B, C software
import pyautogui
import pywinauto

import os
pyautogui.FAILSAFE = True

###########################################################################################################
# CONFIG
#---------------------------------------------------------------------------------------------------------#
RECORDING_HOTKEY = ('ctrl', 'r')
STOPRECORDING_HOTKEY = ('escape')
SLEEP_TIME = 5
SOUNDRECORDING_APP = "shortcuts\\winsoundrecorder.lnk"
###########################################################################################################
os.startfile(SOUNDRECORDING_APP)
pyautogui.sleep(SLEEP_TIME)
pyautogui.hotkey(RECORDING_HOTKEY)
pyautogui.sleep(SLEEP_TIME)

DECISION = input("Ação: ")
if DECISION == '1' or 1:
    # Inserir uma lógica que abre o app de gravação que está minimizado, mas ele precisa pegar informações do nome do app (para achar a janela certa) diretamente lá do .lnk o "SOUNDRECORDING_APP"
    pyautogui.hotkey(STOPRECORDING_HOTKEY)