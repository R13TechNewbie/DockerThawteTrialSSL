#!/bin/bash
#Shellscript buat deploy nginx + rapidssl
#Buatan Ramadhan Hidayat
#git clone <github proyek ini>
cd <folder proyek>
echo "Kita buat Certificate Signing Request (csr) dulu"
echo "Masukkan data csrnya"
read -p "Negara lu (Contohnya kalo Jepun masukin singkatannya aja, jadi JP, kalo Indo ya ID): " Country
read -p "Provinsi lu (Contohnya Jawa Barat): " State
read -p "Kota/Kabupaten lu (Contohnya Konohagakure) : " Locality
read -p "Organisasi lu (Contohnya Akatsuki): " Organization
read -p "Unit Kerja Organisasi lu (Contohnya Divisi Marketing Akatsuki): " OrganizationUnit
read -p "Nama Domain lu (Contohnya wibueyen.com): " CName
echo "RUN openssl genrsa -out /etc/nginx/certs/csr_and_key/website.key 2048"
echo "RUN openssl req -new -key /etc/nginx/certs/csr_and_key/website.key -out /etc/nginx/certs/csr_and_key/website.csr -subj \"/C=$Country/ST=$State/L=$Locality/O=$Organization/OU=$OrganizationUnit/CN=$CName\"" >> nginx.dockerfile
echo "Mulai generate csr.."
#sudo docker
sudo docker-compose up -d --build
docker cp <container-id>:/etc/nginx/certs/csr_and_key/website.key ./certs/$CName.key
docker cp <container-id>:/etc/nginx/certs/csr_and_key/website.csr ./certs/$CName.csr
echo -e "Copy csr ini ke website RapidSSL:\n"
cat ./certs/$CName.csr
echo -e "\nKalo gatau caranya, buka ae link ini \"https://www.rapidsslonline.com/ssl-brands/rapidssl/free-ssl-certificates.aspx\""
echo "Masih bingung juga harus ngapain? baca nih \"https://knowledge.digicert.com/solution/SO16222.html\""
echo "Jangan main ikutin ae, mikir dikit sono, kan lu pake freessl, bukan pake yang bayar pea. Buka link rapidsslonlen diatas buat yg versi gratisan"
echo -e "\nKalo udah dicopy dan masukin csr kesono, tunggu email masuk isinya file zip. Klo udah dapet zipnya, lu ekstrak filenya, trus lu pastein kesini directory filepathnya. (Contohnya C:\\Users\\Download\\namazip\\namafile.crt)"
read -p "Masukin filepath certificate lu: " Cert

