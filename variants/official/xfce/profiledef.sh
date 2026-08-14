#!/usr/bin/env bash
# shellcheck disable=SC2034
#
# xfce variant profile — same AcreetionOS, xfce desktop only.
iso_name="AcreetionOS-Xfce"
iso_label="acreetionOS_xfce_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Acreetion OS Community"
iso_application="AcreetionOS-Xfce Install Media"
iso_version="1.0.0"
