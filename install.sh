export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg > ~/apt-key.gpg
cat ~/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update; sudo apt-get install -y google-drive-ocamlfuse
google-drive-ocamlfuse -headless