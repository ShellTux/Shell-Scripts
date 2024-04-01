PKG_MANAGER = sudo pacman -S --needed --noconfirm
AUR_MANAGER = yay -S --aur --needed --noconfirm

all: *

.PHONY: bemenu
bemenu:
	$(PKG_MANAGER) \
		bemenu \
		bemenu-ncurses \
		bemenu-wayland \
		bemenu-x11

.PHONY: brightness
brightness:
	$(PKG_MANAGER) \
		brightnessctl \
		libnotify

.PHONY: counter
counter:
	$(PKG_MANAGER) \
		figlet \
		libnotify \
		lolcat

.PHONY: emoji-menu
emoji-menu:
	$(PKG_MANAGER) \
		wl-clipboard

.PHONY: extract
extract:
	$(PKG_MANAGER) \
		gzip \
		p7zip \
		tar \
		unzip \
		zip

.PHONY: gource-video
gource-video:
	$(PKG_MANAGER) \
		gource

.PHONY: mount-menu
mount-menu: bemenu
	$(PKG_MANAGER) \
		libnotify \
		pinentry-bemenu \
		sudo \
		x11-ssh-askpass

.PHONY: music-menu
music-menu: bemenu
	$(PKG_MANAGER) \
		dmenu \
		ffmpegthumbnailer \
		fzf \
		mpc \
		viu \
		wofi

.PHONY: notify-music
notify-music:
	$(PKG_MANAGER) \
		libnotify \
		mpc

.PHONY: notify-sudo
notify-sudo:
	$(PKG_MANAGER) \
		libnotify \
		sudo

.PHONY: notify-wallpaper
notify-wallpaper: debug-message
	$(PKG_MANAGER) \
		ffmpegthumbnailer \
		libnotify

.PHONY: onefetch-languages
onefetch-languages:
	$(PKG_MANAGER) \
		onefetch

.PHONY: pass
pass:
	$(PKG_MANAGER) \
		clipmenu \
		libnotify \
		pass

.PHONY: power-menu
power-menu: bemenu
	$(PKG_MANAGER) \
		clipmenu

.PHONY: qrwifi
qrwifi:
	$(PKG_MANAGER) \
		fzf \
		qrencode

.PHONY: sb-battery
sb-battery: scratchpad
	$(PKG_MANAGER) \
		bc \
		libnotify

.PHONY: sb-cpu
sb-cpu: scratchpad
	$(PKG_MANAGER) \
		bc \
		libnotify \
		lm_sensors
	mkdir --parents ~/.cache/proc

.PHONY: scratchpad
scratchpad:
	$(PKG_MANAGER) \
		xorg-xrandr

.PHONY: screenshot
screenshot: bemenu
	$(PKG_MANAGER) \
		grim \
		jq \
		libnotify \
		scrot \
		slurp \
		wl-clipboard \
		xdg-user-dirs
	$(AUR_MANAGER) \
		hyprprop-git

.PHONY: startWM
startWM:
	$(PKG_MANAGER) \
		setconf

.PHONY: tmux-scratchpad
tmux-scratchpad:
	$(PKG_MANAGER) \
		tmux

.PHONY: toggle-mute
toggle-mute:
	$(PKG_MANAGER) \
		pulsemixer \
		wireplumber

.PHONY: update-repos
update-repos: debug-message
	$(PKG_MANAGER) \
		git

.PHONY: volume
volume:
	$(PKG_MANAGER) \
		libnotify \
		pulsemixer \
		wireplumber

.PHONY: wallpaperLoop
wallpaperLoop: debug-message notify-wallpaper
	$(PKG_MANAGER) \
		feh \
		ffmpegthumbnailer
	$(AUR_MANAGER) \
		mpvpaper \
		swww
