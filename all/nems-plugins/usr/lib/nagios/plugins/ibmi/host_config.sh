#!/bin/bash
java -cp /usr/lib/nagios/plugins/ibmi/nagios4i.jar com.ibm.nagios.config.HostConfig $1 $2
