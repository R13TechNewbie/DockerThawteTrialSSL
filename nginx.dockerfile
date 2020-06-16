FROM nginx:latest

RUN apt-get update
RUN apt-get install -y openssl
RUN mkdir -p /etc/nginx/certs/csr_and_key
#RUN openssl genrsa -out /etc/nginx/certs/csr_and_key/ckel7.com.key 2048
#RUN openssl req -new -key /etc/nginx/certs/csr_and_key/ckel7.com.key -out /etc/nginx/certs/csr_and_key/ckel7.com.csr -subj "/C=ID/ST=Jawa Barat/L=Bekasi/O=UINJakarta/OU=Sistem Informasi/CN=ckel7.com"

#Uncomment command below after generating csr (running this docker for first time and get the csr)
#RUN openssl dhparam -out /etc/nginx/certs/dhparam.pem 2048 

