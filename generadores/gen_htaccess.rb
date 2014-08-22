htaccess = "RewriteEngine on
RewriteCond $1 !^(index\.php|public_folder|images-something)
RewriteRule ^(.*)$ /index.php/$1 [L]"


file_htaccess = File.new("../.htaccess", "w+")
if file_htaccess
   file_htaccess.syswrite(htaccess)
else
   puts "Unable to open file!"
end
