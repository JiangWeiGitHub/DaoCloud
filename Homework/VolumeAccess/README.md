# Volume Access

### Goal
  Run a docker with `volume`, add a configuration file into this volume on `DaoCloud`'s webpage, check whether the file is working with `http` server running inside docker which I use for printing log.

### Operation
  + run docker server <p>
  `docker -H tcp://192.168.154.140:6666 daemon --registry-mirror=http://f2d6cb40.m.daocloud.io`
  
  + run `Dockerfile` & create `VolumeAccess` image <p>
  `docker -H tcp://192.168.154.140:6666 build -t=volume_access .`
  
  + run this image <p>
  `docker -H tcp://192.168.154.140:6666 run --net=host -p 8200:8200 -p 1900:1900/udp 6bdfe06bbd66`
  
