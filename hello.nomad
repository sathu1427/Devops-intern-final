job "hello-app" {
    datacenters = ["dcl]
    group "app" {
        count = 1
        task "hello" {
            driver = "docker"
            config {
                image = "hello-app:latest"
            }
            resources{
                cpu = 100
                memory = 128
            }
        }
    }
}