#!/usr/bin/env bash
#
# Cleanup Puppet reports

REPORTDIR=/var/lib/puppet/reports

find $REPORTDIR/* -type f -mtime +14 -exec rm -f {} \;
