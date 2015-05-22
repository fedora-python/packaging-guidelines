#!/usr/bin/env bash
#== Add some scripts to see how far the guidelines are also implemented in current packages ==

#- Find pyfoo packages that need to be renamed:
#  Current (incomplete) script:
non_py_packages=$(dnf --disablerepo=* --enablerepo=rawhide search py | awk '{print $1}' | grep -v i686 | grep py | sort | grep -v python- | grep -v python3- )

without_python3=$(echo $non_py_packages | sed "s/ /\n/g" | grep -v python3)


without_python=$(echo $without_python3 | sed "s/ /\n/g" | grep -v python)


echo $without_python | sed "s/ /\n/g"
