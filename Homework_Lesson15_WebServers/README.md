Конфиг nginx, который выступает как reverse proxy apache
   1 │ server {
   2 │         listen 80 default_server;
   3 │         listen [::]:80 default_server;
   4 │ 
   5 │         root /var/www/html;
   6 │ 
   7 │         # Add index.php to the list if you are using PHP
   8 │         index index.nginx_site_tms.html index.nginx-debian.html index.html index.htm;
   9 │ 
  10 │         server_name tms.by www.tms.by _;
  11 │ 
  12 │         location / {
  13 │         proxy_pass http://127.0.0.1:8080;
  14 │         proxy_set_header Host $host;
  15 │         proxy_set_header X-Real-IP $remote_addr;
  16 │         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  17 │         proxy_set_header X-Forwarded-Proto $scheme;
  18 │                 try_files $uri $uri/ =404;
  19 │         }
  20 │ 
  21 │ }





Конфиг nginx дефолтный:
   1 │ server {
   2 │         listen 80 default_server;
   3 │         listen [::]:80 default_server;
   4 │ 
   5 │         root /var/www/html;
   6 │ 
   7 │         # Add index.php to the list if you are using PHP
   8 │         index index.nginx_site_tms.html index.nginx-debian.html index.html index.htm;
   9 │ 
  10 │         server_name tms.by www.tms.by _;
  11 │ 
  12 │         location / {
  13 │                 try_files $uri $uri/ =404;
  14 │         }
  15 │ 
  16 │ }

