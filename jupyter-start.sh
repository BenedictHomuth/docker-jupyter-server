if [ -n "${MANUAL_CONF}" ] # check if env var is provided
then
    MANUAL_CONF_LOWER=$(echo "${MANUAL_CONF}" | tr '[:upper:]' '[:lower:]') # Check if value is "true" after lower case transformation in case e.g., True, or TRUE is provided!
    if [ "${MANUAL_CONF_LOWER}" = "true" ]
    then
        echo "\n MANUAL_CONF is set! Please provide a command at startup or exec into the container to run commands.\n"
        exit 1
    fi
fi

jupyter notebook --ip='*' --port=8080 --notebook-dir=opt/notebooks --no-browser --allow-root --ServerApp.token='' --ServerApp.password=''