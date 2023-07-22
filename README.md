# sparsh-project

sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt update
sudo apt install docker-ce
sudo systemctl start docker
sudo systemctl enable docker
docker --version
sudo usermod -aG docker $USER
docker image built -t sparsh:3.0 .
docker login
docker push sparsh:3.0
docker run -d -p 80:5000 sparsh:3.0
