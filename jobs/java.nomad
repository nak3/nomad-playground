job "java-example" {
        datacenters = ["dc1"]
        group "example" {
                # Define a task to run
                task "web" {
                        driver = "java"

                        config {
                                jar_path = "local/hello.jar"
				jvm_options = ["-Xmx2048m", "-Xms256m"]
                        }

                        # Specifying an artifact is required with the "java"
                        # driver. This is the # mechanism to ship the Jar to be run.
                        artifact {
                                source = "https://github.com/nak3/nomad-playground/raw/master/java-example/Hello/hello.jar"
                        }
                resources {}
                }
        }
}

