FROM qnib/alpn-hbase

ADD opt/qnib/hbase/bin/healthcheck.sh /opt/qnib/hbase/bin/
HEALTHCHECK --interval=2s --retries=120 --timeout=1s \
  CMD /opt/qnib/hbase/bin/healthcheck.sh
