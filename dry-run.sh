#!/bin/bash

# ok prompt
echo "Do dry-run"
read -p "ok? (y/N): " yn
case "$yn" in
	    [yY]*) ;;
	        *) echo "abort." ; exit ;;
esac

bundle exec dashdog apply --dry-run $@


