#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9ed1f497-a74c-4262-b26f-7484aacf11c4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

