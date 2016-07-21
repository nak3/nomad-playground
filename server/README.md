Usage
===

~~~
nomad agent -config server1.hcl

nomad agent -config server2.hcl

nomad server-join  127.0.1.1
~~~

Result
===

~~~
# nomad server-members
Name            Address    Port  Status  Leader  Protocol  Build     Datacenter  Region
server1.global  127.0.0.1  4648  alive   true    2         0.4.1dev  dc1         global
server2.global  127.0.1.1  4648  alive   false   2         0.4.1dev  dc1         global
~~~
