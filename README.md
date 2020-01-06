# openvpn-for-dockers
直接生成openvpn的镜像容器

在该目录下执行以下命令：

```
docker build -t vpn:ubuntu .
mkdir openvpn
VPN_PATH=`pwd`"/openvpn"
docker run -d --privileged --name testvpn -v $VPN_PATH:/etc/openvpn  -p 1194:1194/udp vpn:ubuntu
 
```
