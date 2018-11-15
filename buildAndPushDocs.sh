
COUNTER=1

while true; do

    echo "Running under loop $COUNTER"

    sleep 600;

    docker-compose exec docs sh -c "rm -r /app/source/build; cd .. && bundle exec middleman build; mv /app/build/ /app/source"

    git add *

    xdotool key F12

    git commit -a

    cd .. && git subtree push --prefix slate-docker/build origin gh-pages && cd slate-docker

    COUNTER=$[$COUNTER+1]

done