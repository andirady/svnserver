FROM debian

ENV LOG_FILE=/var/log/svnserve.log

RUN apt-get update && apt-get install subversion -y

CMD svnserve -d --log-file $LOG_FILE -r /var/svn && tail -F $LOG_FILE
