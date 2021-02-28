cd ~
sudo yum groupinstall "Development Tools" -y
sudo yum install jq -y
sudo pip install --upgrade pip
sudo pip install awscli --upgrade

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

source  ~/.bash_profile

brew tap weaveworks/tap
brew install kubernetes-cli kubernetes-helm weaveworks/tap/eksctl
brew install helm
brew install eksctl
brew install gettext
curl -sSL https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

source  ~/.bash_profile
aws eks update-kubeconfig --name 'EKS-Lab'


