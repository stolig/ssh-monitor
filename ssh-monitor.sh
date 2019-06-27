#!/bin/bash

# see if you can ssh to your host
# written by: github/stolig 
# if it fails to ssh, then alert.
# you'll want to make sure you have your ssh keys on the myHost
# the machine this runs on will need to have postfix/mailutils working

myUser="username"
myHost="yourhostname"

mailTo="youremail@domain.com"
returnAddr="returnaddress@domain.com"
fromHeader="From: description <$returnAddr>"
mailSubj="cannot connect to $myHost"

function sshTest {

	if [[ $(ssh $myUser@$myHost -t "ls") ]] ; then

		echo "connection to $myHost good"

	else

		echo "$mailSubj" | mail -s "$mailSubj" -a "$fromHeader" "$mailTo"

	fi	

}

sshTest
