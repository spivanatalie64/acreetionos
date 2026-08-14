#!/usr/bin/env bash
# shellcheck disable=SC2034
#
# openbox variant profile — same AcreetionOS, openbox desktop only.
iso_name="AcreetionOS-Openbox"
iso_label="acreetionOS_openbox_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Acreetion OS Community"
iso_application="AcreetionOS-Openbox Install Media"
iso_version="1.0.0"
