# Volume Access

### Goal
  Run a docker with `volume`, add a configuration file into this volume on `DaoCloud`'s webpage, check whether the file is working with `http` server running inside docker which I use for printing log.

### Local Development
  + run docker server <p>
  `docker -H tcp://192.168.154.140:6666 daemon --registry-mirror=http://f2d6cb40.m.daocloud.io`
  
  + create `Dockerfile`
  
  + run `Dockerfile` & create `VolumeAccess` image <p>
  `docker -H tcp://192.168.154.140:6666 build -t=volume_access .`
  
  + create `minidlna.conf` refer to `Dockerfile` & some testing files like music\pic\video
  ```
    ### minidlna.conf ###
    
    media_dir=A,/data/music
    media_dir=P,/data/pic
    media_dir=V,/data/video
    friendly_name=helloworldwisnuc
  ```

  + run this image <p>
  `docker -H tcp://192.168.154.140:6666 run --net=host -p 8200:8200 -p 1900:1900/udp -v /home/wisnuc/Documents/minidlna/minidlna.conf:/data/minidlna/minidlna.conf -v /home/wisnuc/Documents/data/music:/data/music -v /home/wisnuc/Documents/data/pic:/data/pic -v /home/wisnuc/Documents/data/video:/data/video d859720fc016`
  
### DaoCloud Development
  
