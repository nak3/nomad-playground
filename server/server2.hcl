# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/server2"

name = "server2"

bind_addr = "127.0.1.1"

advertise {
	# Defaults to the first private IP address.
	http = "127.0.1.1"
	rpc  = "127.0.1.1"
	serf = "127.0.1.1" # non-default ports may be specified
}

# Enable the server
server {
    enabled = true

    # Self-elect, should be 3 or 5 for production
#    bootstrap_expect = 1
}

