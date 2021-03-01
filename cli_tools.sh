cd ~
sudo yum groupinstall "Development Tools" -y
sudo yum install jq -y
pip install --upgrade pip
pip install awscli --upgrade

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval $(/home/ec2-user/.linuxbrew/bin/brew shellenv)
source  ~/.bash_profile

brew tap weaveworks/tap
brew install kubernetes-cli kubernetes-helm weaveworks/tap/eksctl
brew install eksctl
brew install gettext


source  ~/.bash_profile
aws eks update-kubeconfig --name 'EKS-Lab'
