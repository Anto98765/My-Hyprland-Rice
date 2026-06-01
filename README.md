<div align="center">




# 🌿 Hyprland Dotfiles

> *I made a Rice that brings together effciency, aesthetics, and ease of use.*

![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)

</div>

---

## 🖼️ Showcase

https://github.com/user-attachments/assets/542d751f-b0ac-4cf0-acbb-4301aba04dd0

---

## ✨ Features

- **Smooth Animations** — Custom Hyprland animations for elegant transitions
- **Color Scheme Generator** — Dynamic color generation with matugen
- **Wallpaper Integration** — Custom Rofi picker for instant theme switching
- **Status Bar** — Minimal yet functional Waybar with quick module toggles
- **Notifications** — SwayNC for non-intrusive notifications

---

## 📦 Stack

| Role | Tool |
|---|---|
| WM | [Hyprland 0.55.2-1](https://hyprland.org/) |
| Bar | Waybar |
| Launcher | Rofi |
| Terminal | Kitty |
| Shell | Fish |
| Notifications | SwayNC |
| Logout Menu | wlogout |
| Wallpaper Engine | matugen + awww + custom Rofi picker |
| File Manager | nautilus |

---

## ⚙️ Installation
>[!CAUTION]
>These dotfiles are tailored for Arch Linux. Proceed with caution on other distros.

>[!WARNING]
>Before procced to the installation, make sure to backup your Dotfiles.

### 1. Prerequisites

```bash
# First update your system
sudo pacman -Syu
```


```bash
# Install Hyprland and core dependencies

# pacman packages

sudo pacman -S hyprland hypridle hyprlock hyprshot waybar rofi kitty fish awww swaync btop \
               cava cliphist wl-clipboard matugen nautilus neovim satty otf-aurulent-nerd \
               otf-font-awesome ttf-dejavu ttf-jetbrains-mono ttf-jetbrains-mono-nerd \
               ttf-nerd-fonts-symbols woff2-font-awesome --needed

# yay packages

yay -S wlogout neofetch papirus-folders ttf-joypixels ttf-rubik-vf \
               ttf-material-design-icons-extended --needed
               
```

### 2. Clone the repo

```bash
git clone https://github.com/Anto98765/My-Hyprland-setup.git ~/My-Hyprland-setup
cd ~/My-Hyprland-setup
```

### 3. Run the install script

```bash
chmod +x install.sh
./install.sh

```

### 4. Restart your PC

>[!IMPORTANT]
>If Fish was not set as your default shell, either run chsh -s $(which fish) or manually add exec fish to your ~/.bashrc

## ⌨️ Keybindings

### 🖥️ General

| Keybind | Action |
|---|---|
| `SUPER + RETURN` | Open terminal (Kitty) |
| `SUPER + Q` | Kill active window |
| `SUPER + E` | File manager |
| `SUPER + L` | Lock screen |
| `SUPER + ESC` | Logout menu (wlogout) |
| `SUPER + I` | Internet Manager (NetworkManager_dmenu) |

>[!IMPORTANT]
> The status pill in the waybar when left click on it opens swaync, and when you right click on the module (wifi,sound) opens the menu of the module.

### 🪟 Windows & Layout

| Keybind | Action |
|---|---|
| `SUPER + D` | Toggle floating |
| `SUPER + F` | Toggle fullscreen |
| `SUPER + ← / → / ↑ / ↓` | Move focus |

### 🗂️ Workspaces

| Keybind | Action |
|---|---|
| `SUPER + 1–9` | Switch to workspace |
| `SUPER + SHIFT + 1–9` | Move window to workspace |

### 🚀 Apps

| Keybind | Action |
|---|---|
| `SUPER + M` | App launcher (Rofi) |
| `SUPER + B` | Browser (Brave) |
| `SUPER + W` | Wallpaper picker (Rofi) |



### 📸 Screenshot

| Keybind | Action |
|---|---|
| `PRINT` | Fullscreen screenshot |
| `SUPER + PRINT` | Region screenshot |


### 💻 Laptop Hotkey

| Keybind | Action |
|---|---|
| `SUPER + F2` | Brightness - |
| `SUPER + F3` | Brightness + |
| `SUPER + F6` | Mute |
| `SUPER + F7` | Volume - |
| `SUPER + F8` | Volume + |

>[!IMPORTANT]
>These shortcut differs depending on your laptop's manufacture

---

## 🎨 Customization

### Change Color Scheme
The color scheme is pre-generated with matugen based on the wallpaper .

### Wallpaper switcher
To use the wallpaper switcher make sure to put all wallpapers inside (~/Pictures/wallpapers) and rename all wallpapers like what i did in Preview folder.

### Modify Keybindings
Edit `~/.config/hypr/hyprland.conf`.

### Change Theme
Run GTK settings → Select **Tahoe-Dark** theme for blur support on apps .

### Change Folder icons
Run GTK settings → Select **Papirus-Dark** .

---

## 📁 Structure

```
My-Hyprland-setup/
├── .config/
│   ├── btop/                    # btop++ theme
│   ├── cava/                    # cava visualizer theme
│   ├── fish/                    # Shell config
│   ├── hypr/                    # Hyprland config + animations
│   ├── kitty/                   # Terminal theme
│   ├── matugen/                 # color scheme config
│   ├── neofetch/                # neofetch config
│   ├── networkmanager-dmenu/    # network menu config
│   ├── nvim/                    # nvim config + theme
│   ├── rofi/                    # Launcher config
│   ├── satty/                   # screenshot editor config
│   ├── swaync/                  # Notification center
│   ├── waybar/                  # Bar config & CSS
│   └── wlogout/                 # Logout screen
├── .local/
│   └── bin/
│       └── oh-my-posh           #apply shell themes
├── .poshthemes/                 #shell theme files
├── .themes/
│   └── Tahoe-Dark/              #GTK 3/4 Theme
└── Pictures/
    └── wallpapers/              #preview wallpapers
```

---
## Full Tutorial from arch end with rice

coming soon ....
---

## 📄 License

MIT — feel free to use, modify, and share.

