#!/usr/bin/env bash
# scaffold-desktop-variants.sh — create all desktop-environment variants
# Each variant = AcreetionOS base with ONLY the desktop environment swapped.
# Uses the existing variant system: packages override + airootfs overlay.
set -euo pipefail
cd "$(dirname "$(readlink -f "$0")")/.."

# cinnamon packages removed from EVERY variant (the base desktop)
CINNAMON_REMOVE=(
  cinnamon cinnamon-control-center cinnamon-desktop cinnamon-menus
  cinnamon-session cinnamon-settings-daemon cinnamon-screensaver
  cinnamon-translations cjs muffin nemo
  lightdm lightdm-gtk-greeter
)

# DE name -> display manager session name
declare -A SESSIONS=(
  [gnome]=gnome
  [plasma]=plasma
  [xfce]=xfce
  [mate]=mate
  [openbox]=openbox
  [sway]=sway
  [i3]=i3
  [hyprland]=hyprland
)

for de in "${!SESSIONS[@]}"; do
  vdir="variants/official/$de"
  echo "=== $de ==="
  mkdir -p "$vdir/airootfs/etc/lightdm/lightdm.conf.d"

  # packages override: remove cinnamon, add the DE
  {
    echo "# $de variant — same AcreetionOS, $de desktop"
    echo "# removes: cinnamon stack + lightdm"
    for p in "${CINNAMON_REMOVE[@]}"; do echo "-$p"; done
    echo ""
    echo "# $de desktop"
  } > "$vdir/packages.x86_64"
  echo "  packages.x86_64 written"
done

echo ""
echo "done scaffolding ${#SESSIONS[@]} variant package stubs"
