# Increase log verbosity
log_level = "DEBUG"

name = "server1"

# Setup data dir
data_dir = "/tmp/server1"

bind_addr = "127.0.0.1"

advertise {
    # Defaults to the first private IP address.
    http = "127.0.0.1"
    rpc  = "127.0.0.1"
    serf = "127.0.0.1" # non-default ports may be specified
}

# Enable the server
server {
    enabled = true

    # Self-elect, should be 3 or 5 for production
    bootstrap_expect = 1
}

