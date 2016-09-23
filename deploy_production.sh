export website_root=
export ftp_website_root=/
cp data/lectures.json source
middleman build && middleman deploy
rm source/lectures.json
