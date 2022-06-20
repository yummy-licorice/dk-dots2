all:
  @mkdir -p ~/.local/share/fonts/
  @cp fonts/* ~/.local/share/fonts/
  @fc-cache -v
  @echo "Fonts installed succesfully"
  @cp home/* ~
  @echo "Home installed succesfully"
  @mkdir -p ~/.config
  @cp config/* ~/.config
  @echo "Configs installed succesfully"
  @mkdir -p ~/.local/bin
  @cp bin/* ~/.local/bin
  @echo "Bins installed succesfully"
    
fonts:
  @mkdir -p ~/.local/share/fonts/
  @cp fonts/* ~/.local/share/fonts/
  @fc-cache -v
  @echo "Fonts installed succesfully"
  
home:
  @cp home/* ~
  @echo "Home installed succesfully"
  
configs:
  @mkdir -p ~/.config
  @cp config/* ~/.config
  @echo "Configs installed succesfully"
  
bin:
  @mkdir -p ~/.local/bin
  @cp bin/* ~/.local/bin
  @echo "Bins installed succesfully"
    
  
