echo '【now synchronizing files to git...】'
cp ~/.bash_aliases ./
cp ~/.sh ./ -r 
cp /etc/apache2/sites-available/default etc.apache2.sites-available.default
cp /etc/rc.local etc.rc.local
git add -A
echo "【now commit】"
git commit -m "auto from syn.sh"
echo "【now push to remote server】"
git push origin master
