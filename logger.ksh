logInfo () {

    echo "`date +%m/%d/%Y-%H:%M:%S` $*"
    echo  "`date +%m/%d/%Y-%H:%M:%S` $*" >> $BASEDIR/TCS-BWBVariablisation.log
}
if

   [ ! -f /var/tmp/scripting ]

then

logInfo " `date +%m/%d/%Y-%H:%M:%S`    Error: Unable to open the file...."

 logInfo "
        "Missing argument"

        Usage: `basename $0` <ssi-file>

        "exiting with failure"
    "
logInfo "Loading the list of files for variablisation"
logInfo ""
fi
LogCleanup () {
find /var/Logs/ret/$RTE_LEVEL/nw-tsa/01/logdir/applogs -mtime +7 -name "*.log" -delete ||echo "warning: no files found to delete"
chmod 664 /var/Logs/ret/$RTE_LEVEL/nw-tsa/01/logdir/applogs/*||echo "warning: unable to change log permissions"
}
