#! usr/bin/bash
pkill php;
pkill node;
echo "killing all process..."

for w in $(wmctrl -l | cut -d" " -f1); do
    wmctrl -i -c $w
    echo "killed process $w "
    sleep 0.25
done