#!/usr/bin/env bash
# shellcheck disable=SC2034
#
# gnome variant profile — same AcreetionOS, gnome desktop only.
iso_name="AcreetionOS-Gnome"
iso_label="acreetionOS_gnome_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Acreetion OS Community"
iso_application="AcreetionOS-Gnome Install Media"
iso_version="1.0.0"
