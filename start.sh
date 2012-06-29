rails server -d
QUEUE='*' rake resque:work &
