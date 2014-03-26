#!/bin/sh

SKUNK=$HOME/Skunk
DEBUG=0

echo "Attemting to remount $SKUNK"

debugMsg() {
  [ "x$DEBUG" = x1 ] && echo "DEBUG: "$@
}

if [ -d $SKUNK ]; then
        debugMsg "Dir exists: $SKUNK"
        if ! diskutil unmount $SKUNK; then

                debugMsg "unmount failed"
                empty=0
                numthings=$(find $SKUNK -print -maxdepth 1 | wc -l)
                debugMsg "Found '$numthings' files/dirs in top level dir"

                if [ $numthings = 1 ]; then
                        # the directory is empty, it's not mounted and safe to delete
                        empty=1
                        debugMsg "Looks like dir is empty"
                else
                        numthings=$(df | grep /usr/local | grep fciis.net | wc -l)
                        debugMsg "Found '$numthings' mount points looking like Skunk"
                        if [ $numthings = 0 ]; then
                                # This isn't mounted, it's safe to delete and remount
                                debugMsg "Looks like it isn't mounted"
                                empty=1
                        fi
                fi

                debugMsg "empty? '$empty'"
                if [ "x$empty" = x1 ]; then
                        echo "Removing empty directory $SKUNK"
                        rm -r $SKUNK || exit 2
                else
                        echo "ERROR: $SKUNK directory is not empty and also is not mounted" 1>&2
                        exit 1
                fi
        fi
fi

if [ ! -d $SKUNK ]; then
        echo "Created directory $SKUNK"
        mkdir $SKUNK
fi

echo "Mounting $SKUNK to PDS via sshfs"
sshfs pds-sw.fciis.net:/usr/local $SKUNK -oauto_cache,reconnect,volname=Skunk || exit 1
