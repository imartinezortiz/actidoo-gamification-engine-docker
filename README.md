# ActiDoo Vagrant+Docker environment

This repositoriy includes a simple Vagrant+Docker environment to setup an [ActiDoo Gamification engine](https://github.com/ActiDoo/gamification-engine).

### Installation

Required software:
  * [VirtualBox](https://virtualbox.org)
  * [Vagrant](https://vagrantup.com/)

Once the dependencies are installed run from the terminal: 
```sh
$ git clone https://github.com/imartinezortiz/actidoo-gamification-engine-docker.git
$ vagrant up
```

It takes some time (few minutes) the first time the VM is launched because docker must pull and build the images. You can
check the logs of the docker compose by, running:
```sh
$ vagrant ssh
vagrant@vagrant $ docker ps
vagrant@vagrant $ cd /opt/docker/compose/actidoo/
vagrant@vagrant $ docker-compose logs
```

To stop the server just run:
```sh
$ vagrant halt
```

### Using the gamification engine

The vagrant VM exposes the following NATed ports:
  * 8081: Listens the [actidoo server](http://localhost:8081/admin/).
  * 8082: Listens the [Adminer DB frontend](http://localhost:8082/).

### Adminer connection settings

  * System: PostgreSQL
	* Server: db
	* Username: gengine
	* Password: genegine
	* Database: gengine	