#!/usr/bin/env bash
# shellcheck disable=SC2034
#
# plasma variant profile — same AcreetionOS, plasma desktop only.
iso_name="AcreetionOS-Plasma"
iso_label="acreetionOS_plasma_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Acreetion OS Community"
iso_application="AcreetionOS-Plasma Install Media"
iso_version="1.0.0"
