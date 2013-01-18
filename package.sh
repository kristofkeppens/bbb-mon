NAME=bbb-mon
VERSION=1.0.1

sudo mkdir /usr/local/bbb-mon
sudo cp bigbluebutton_info.py bbb_api.py get-bigbluebutton-info.py /usr/local/bbb-mon
sudo chmod 755 /usr/local/bbb-mon/
sudo chown -R root:root /usr/local/bbb-mon

fpm -s dir -t deb -n ${NAME} -v ${VERSION} \
    --description "bigbluebutton monitoring scripts" \
    -d python \
    -d python-argparse \
    /usr/local/bbb-mon 
