FROM shadowsocks/shadowsocks-libev
COPY v2ray-plugin_linux_amd64 /usr/local/bin
USER root
CMD exec ss-server \
      -s $SERVER_ADDR \
      -p 80 \
      -k ${PASSWORD:-$(hostname)} \
      -m $METHOD \
      -t $TIMEOUT \
      -d $DNS_ADDRS \
      --plugin v2ray-plugin_linux_amd64 \
      --plugin-opts "server" \
      -u \
      $ARGS