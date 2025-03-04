

#!/bin/bash/

#receiver of email
receiver="razvanmatesan9@gmail.com"

#subject 
subject="Daily report"

#creation of report
raport=$(printf "Daily Report:\n\n"
          "Date and hour: $(date)\n\n"
          "Free space on disk:\n$(df -h)\n\n"
          "Memory utilization:\n$(free -h)")

#send of report by email
echo "$raport" | mail -s "$subject" "$receiver"

#Verify the output and send the message
if [ $? -eq 0 ]; then
    echo "The message was send"
else
    echo "Cannot sent message"
fi

