cd ~
sudo yum groupinstall 'Development Tools' -y
sudo yum install jq -y
sudo pip install --upgrade pip
sudo pip install awscli --upgrade

git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -s ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin
eval $(~/.linuxbrew/bin/brew shellenv)

source  ~/.bash_profile

sudo brew tap weaveworks/tap
sudo brew install kubernetes-cli kubernetes-helm weaveworks/tap/eksctl

aws eks update-kubeconfig --name 'EKS-Lab'


