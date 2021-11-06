# What is etcd
etcd is a strongly consistent, distributed key-value store that provides a reliable way to store data that needs to be accessed by a distributed system or cluster of machines. It gracefully handles leader elections during network partitions and can tolerate machine failure, even in the leader node.

# TL;DR

```
$ docker run -it --name etcd jas02/etcd
```

# What's in this image?
This image contains etcd server and etcd client (CLI).

