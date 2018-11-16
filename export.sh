#!/bin/bash

# ok prompt
echo "Do export"
read -p "ok? (y/N): " yn
case "$yn" in
	    [yY]*) ;;
	        *) echo "abort." ; exit ;;
esac

bundle exec dashdog export -w --split $@


