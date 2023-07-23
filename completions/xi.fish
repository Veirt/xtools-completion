function __fish_print_xsrc_packages
    set -l distdir $XBPS_DISTDIR
    if not set -q XBPS_DISTDIR
        set distdir "."
    end

    if test -d $distdir/hostdir/binpkgs
        find $distdir/hostdir/binpkgs/**/*.xbps -exec basename {} \;  | sed -nr "s/(.+)-\\d*.*xbps/\1/p" | uniq
    end
end


complete -c xi --wraps xbps-install
complete --no-files -c xi -a "(__fish_print_xsrc_packages)" -d "xbps-src"
