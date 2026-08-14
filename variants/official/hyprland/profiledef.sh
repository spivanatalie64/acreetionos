#!/usr/bin/env bash
# shellcheck disable=SC2034
#
# hyprland variant profile — same AcreetionOS, hyprland desktop only.
iso_name="AcreetionOS-Hyprland"
iso_label="acreetionOS_hyprland_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Acreetion OS Community"
iso_application="AcreetionOS-Hyprland Install Media"
iso_version="1.0.0"
