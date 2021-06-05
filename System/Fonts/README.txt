Fonts for all users located :
	/usr/share/fonts/

Fonts for particular user:
	~/.local/share/fonts/

Get list of fonts System uses
	fc-list -f '%{file}\n' | sort

Refresh Font Cache
	fc-cache -f -v
