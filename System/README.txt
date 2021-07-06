--- Xorg
xinitrc -> ~/.xinitrc
Xresources -> ~/.Xresources


--- Zathura
zathurarc -> ~/.config/zathura/zathurarc
Set as default 
xdg-mime default org.pwmt.zathura.desktop application/pdf


--- Fonts
Fonts for all users located :
	/usr/share/fonts/
	
OTF Fonts go to:
	/usr/share/fonts/truetype/

Fonts for particular user:
	~/.local/share/fonts/

Get list of fonts System uses
	fc-list -f '%{file}\n' | sort

Refresh Font Cache
	fc-cache -f -v



