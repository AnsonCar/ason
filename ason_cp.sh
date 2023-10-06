if [ $2 = "1TB" ]; then
    rsync -av --exclude '._*' --exclude '.DS_Store' --exclude 'node_modules' $1 /Volumes/Anson_1TB/MyDocker/
else
    rsync -av --exclude '._*' --exclude '.DS_Store' --exclude 'node_modules' $1 $2
fi