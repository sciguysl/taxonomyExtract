cat prokaryotes.csv | grep -w -v 'algae' | cat prokaryotes.csv | grep -w -v 'algae' | grep -w -v 'uncultured' | uniq | cut -d ' ' -f1,2 | cut -c 2- > taxnames

sed -i 's/["]//g' taxnames

cat taxnames | awk '!seen[$0]++' > tax

cat taxnames | grep -v '^bacterium' > tax
