job "raw-sleep" {
        datacenters = ["dc1"]
	group "example" {
		# Define a task to run
		task "example" {
			driver = "raw_exec"
			config {
				# When running a binary that exists on the host, the path must be absolute
				command = "/bin/sleep"
				args = ["100"]
  			}
               		resources {}
		}
	}
}
