# SEATA_IP 需要根据运行环境配置成为主机的IP,否则将注册成为容器的IP,这样会导致非容器微服务无法使用
docker run --name seata-server -d \
 -p 8091:8091 -p 7091:7091 \
 -v $PWD/config:/seata-server/resources  \
 -e SEATA_IP=192.168.31.164 \
 seataio/seata-server:1.5.2
