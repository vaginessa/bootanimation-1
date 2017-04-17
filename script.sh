#1/bin/bash

a=1
for i in *.png; do
  new=$(printf "%03d.png" "$a")
  mv -- "$i" "$new"
  let a=a+1
done
