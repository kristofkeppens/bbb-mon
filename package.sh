NAME=bbb-mon
VERSION=1.0

fpm -s dir -t deb -n ${NAME} -v ${VERSION} \
    --description "bigbluebutton monitoring scripts" \
    -d python \
    -d python-argparse \
    --prefix /usr/local/bbb-mon \
    bigbluebutton_info.py bbb_api.py get-bigbluebutton-info.py
