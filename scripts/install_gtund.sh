systemctl stop gtund
GTUND_DIR="/opt/apps/gtund"
mkdir -p $GTUND_DIR/logs
cp -r . $GTUND_DIR
cp etc/gtund.service /lib/systemd/system/
systemctl daemon-reload
systemctl start gtund