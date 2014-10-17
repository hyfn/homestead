#!/bin/sh

env VAR='() { :;}; echo Bash is vulnerable!' bash -c "echo Bash Test"

sudo apt-get update -y -q
sudo apt-get install php5-intl php5-xsl -y -q

dos2unix $3
/bin/bash $3