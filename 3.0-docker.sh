## from https://dev.to/elalemanyo/how-to-install-docker-and-docker-compose-on-raspberry-pi-1mo
# Update and Upgrade
sudo apt-get update && sudo apt-get upgrade -y

# Install Docker
curl -sSL https://get.docker.com | sh

# Add a pi (non-root) User to the Docker Group
sudo usermod -aG docker ${USER}

# Enable the Docker system service to start your containers on boot
sudo systemctl enable docker

# prompt for testing
echo "successfully installed docker!"
echo "run the following command to test it:"
echo "docker run hello-world"