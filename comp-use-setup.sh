
EC2_DNS="ec2-18-191-231-38.us-east-2.compute.amazonaws.com"
KEY_FILE="/Users/didduran/Documents/macos-didduran-us-east-2.pem"

#ssh -i "macos-didduran-us-east-2.pem" ec2-user@ec2-3-16-113-109.us-east-2.compute.amazonaws.com
ssh -i "$KEY_FILE" -L "5900:localhost:5900" "ec2-user@$EC2_DNS"

exit 0

# screen sharing
sudo launchctl enable system/com.apple.screensharing
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.screensharing.plist

# brew install wget, aws-cli and Python 3.12

brew upgrade
brew install wget
brew install aws-cli
brew install python@3.12
brew install git

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
python3 -m pip install --upgrade pip

# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html
 wget --no-check-certificate https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-py3-latest.tar.gz
 pip3 install aws-cfn-bootstrap-py3-latest.tar.gz

 # cat /Users/ec2-user/Library/Python/3.9/bin/cfn-signal




git clone https://github.com/anthropics/anthropic-quickstarts.git




# install docker
wget --no-check-certificate https://desktop.docker.com/mac/main/amd64/Docker.dmg
sudo hdiutil attach Docker.dmg
sudo /Volumes/Docker/Docker.app/Contents/MacOS/install
sudo hdiutil detach /Volumes/Docker

https://stackoverflow.com/questions/42637339/how-to-start-docker-for-mac-daemon-on-bootcat

cat ~/Library/Group\ Containers/group.com.docker/settings-store.json

open -a Docker

 "DockerAppLaunchPath": "/Applications/Docker.app",



# set passw
# pasord
sudo passwd ec2-user

vnc://localhost:5900.

https://stackoverflow.com/questions/714915/using-the-passwd-command-from-within-a-shell-script

# set passwd for ec2-user
sudo dscl . -passwd /Users/ec2-user foofoofoo barbarbar


docker run \
    -e API_PROVIDER=bedrock \
    -e AWS_REGION=us-west-2 \
    -v $HOME/.anthropic:/home/computeruse/.anthropic \
    -p 5900:5900 \
    -p 8501:8501 \
    -p 6080:6080 \
    -p 8080:8080 \
    -it ghcr.io/anthropics/anthropic-quickstarts:computer-use-demo-latest

#
docker run \
    -e API_PROVIDER=bedrock \
    -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
    -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
    -e AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN \
    -e AWS_REGION=us-west-2 \
    -v $HOME/.anthropic:/home/computeruse/.anthropic \
    -p 5900:5900 \
    -p 8501:8501 \
    -p 6080:6080 \
    -p 8080:8080 \
    -it ghcr.io/anthropics/anthropic-quickstarts:computer-use-demo-latest
