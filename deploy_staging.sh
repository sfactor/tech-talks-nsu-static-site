export website_root=/staging
export ftp_website_root=/staging
cp data/lectures.json source
middleman build && middleman deploy
