FROM qnib/alpn-hbase

ADD opt/qnib/hbase/bin/healthcheck.sh /opt/qnib/hbase/bin/
HEALTHCHECK --interval=30s --retries=20 --timeout=20s \
  CMD /opt/qnib/hbase/bin/healthcheck.sh
