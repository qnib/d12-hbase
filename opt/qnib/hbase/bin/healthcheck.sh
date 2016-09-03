#!/usr/local/bin/dumb-init /bin/bash

if [ "${HADOOP_HDFS_DATANODE}" == "true" ];then
    /opt/qnib/hdfs/datanode/bin/healthcheck.sh
fi
if [ "${HADOOP_HDFS_NAMENODE}" == "true" ];then
    /opt/qnib/hdfs/namenode/bin/healthcheck.sh
fi
if [ "${HBASE_MASTER}" == "true" ];then
    /opt/qnib/hbase/master/bin/healthcheck.sh
fi
if [ "${HBASE_REGIONSERVER}" == "true" ];then
    /opt/qnib/hbase/regionserver/bin/healthcheck.sh
fi
if [ "${HBASE_REST}" == "true" ];then
    /opt/qnib/hbase/rest/bin/healthcheck.sh
fi

exit 0

