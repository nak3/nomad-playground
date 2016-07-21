Usage
===

NOTE: After starting nomad server

~~~
nomad agent -config client1.hcl

nomad agent -config client2.hcl
~~~

Result
===

~~~
[root@nomad ~]# nomad node-status
ID        DC   Name   Class   Drain  Status
4c0d651e  dc1  nomad  <none>  false  ready
6505031f  dc1  nomad  <none>  false  ready
~~~
