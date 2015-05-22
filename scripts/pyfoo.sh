#!/usr/bin/env bash
#== Add some scripts to see how far the guidelines are also implemented in current packages ==

#- Find pyfoo packages that need to be renamed:
#  Current (incomplete) script:
dnf --disablerepo=* --enablerepo=rawhide search py | awk '{print $1}' | grep py | sort | grep -v python- | grep -v python3-
