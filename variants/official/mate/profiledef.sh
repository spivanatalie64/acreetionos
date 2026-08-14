#!/usr/bin/env bash
# shellcheck disable=SC2034
#
# mate variant profile — same AcreetionOS, mate desktop only.
iso_name="AcreetionOS-Mate"
iso_label="acreetionOS_mate_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Acreetion OS Community"
iso_application="AcreetionOS-Mate Install Media"
iso_version="1.0.0"
