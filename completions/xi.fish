complete -c xi --wraps xbps-install
complete --no-files -c xi -a "(__fish_print_xsrc_packages)" -d "xbps-src"
