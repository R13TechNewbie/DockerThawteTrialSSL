# DockerThawteTrialSSL
Create SSL Website on Docker (NGINX) with Thawte Trial SSL Certificate

Important : SSL expired on August 13th, 2020, just try to make a new one by open nginx.dockerfile and uncomment the openssl hashtag

Prequisities:

- Docker (https://www.docker.com/products/docker-desktop)
- Docker-Compose (type "sudo apt install docker-compose" for installing)

How to use:

1. Git clone this project 

git clone https://github.com/R13TechNewbie/DockerThawteTrialSSL

2. Open folder directory

cd DockerThawteTrialSSL

3.(Optional) Install nano

sudo apt install nano

4. Set up domain on your /etc/hosts (or C:\windows\system32\drivers\etc\hosts on Windows)

sudo nano /etc/hosts (or if you don't have nano, just replace it with vi instead)

5. Add on the third line

127.0.0.1	danagoodies.com

6. Close and save

(do Ctrl+x, y, and enter. confused? just googling "how to use nano")

7. Run Docker

docker-compose up -d --build

8. Open danagoodies.com on your browser

dont forget to use https://danagoodies.com for accessing SSL one, because I don't want to set it auto redirect to SSL for now. 

9. Not secure? import the CA ROOT to your browser

Depends on your browser (which mine is firefox), go to Preferences > Privacy & Security > Certificates > View Certificates > Authorities > Import. Import CAROOT file on <your-dir-path>/certs/danagoodies.com.caroot.crt. It should be secure for now. For other browser, please do googling on your own :v
 
Thanks to:

Andrew Schmelyun (https://github.com/aschmelyun/video-https-docker-nginx) and his video tutorial (https://www.youtube.com/watch?v=UloZyNiHZK4)

Shingeki no Kyojin Website (http://shingeki.tv/final/) I cloned the html from them (Don't forget to watch the final Attack On Titan guys :3 ) [ I own nothing for this property, copyright to them ]

What's next?

- Make installer.sh works
- Ports installer.sh to installer.bat for easy use on Windows
- Make installer.sh English version
- Make README.md Indonesia version

Side Note:

Follow AoT hype guys :3 (https://www.reddit.com/r/ShingekiNoKyojin/)
Also Follow Railgun T hype too guys :3 (https://www.reddit.com/r/toarumajutsunoindex/)
I'll go easy on you if you have same fandom :v
