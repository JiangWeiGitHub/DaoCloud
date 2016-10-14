# DaoCloud

  [Official Site](http://www.daocloud.io/)

### Default Port
  `80`

### Goal
  `benchmark for daocloud`
  
### Result

  ```
  root@wisnuc:/home/wisnuc# ab -r -n 10000 -c 100 http://jiangweigithub-benchmark.daoapp.io/
  This is ApacheBench, Version 2.3 <$Revision: 1706008 $>
  Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
  Licensed to The Apache Software Foundation, http://www.apache.org/

  Benchmarking jiangweigithub-benchmark.daoapp.io (be patient)
  Completed 1000 requests
  Completed 2000 requests
  Completed 3000 requests
  Completed 4000 requests
  Completed 5000 requests
  Completed 6000 requests
  Completed 7000 requests
  Completed 8000 requests
  Completed 9000 requests
  Completed 10000 requests
  Finished 10000 requests


  Server Software:        nginx/1.11.1
  Server Hostname:        jiangweigithub-benchmark.daoapp.io
  Server Port:            80

  Document Path:          /
  Document Length:        18 bytes

  Concurrency Level:      100
  Time taken for tests:   71.659 seconds
  Complete requests:      10000
  Failed requests:        1
     (Connect: 0, Receive: 0, Length: 1, Exceptions: 0)
  Non-2xx responses:      1
  Total transferred:      1400527 bytes
  HTML transferred:       179982 bytes
  Requests per second:    139.55 [#/sec] (mean)
  Time per request:       716.592 [ms] (mean)
  Time per request:       7.166 [ms] (mean, across all concurrent requests)
  Transfer rate:          19.09 [Kbytes/sec] received

  Connection Times (ms)
                min  mean[+/-sd] median   max
  Connect:       26   30  11.0     28    1027
  Processing:    34  383 2085.9    223   60114
  Waiting:       34  383 2085.9    222   60113
  Total:         61  412 2085.9    252   60140

  Percentage of the requests served within a certain time (ms)
    50%    252
    66%    260
    75%    269
    80%    406
    90%    583
    95%    656
    98%   1250
    99%   1473
   100%  60140 (longest request)
  ```
