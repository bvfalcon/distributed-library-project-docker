### Run Distributed Library Project on docker

Last version of this instruction can be found [hier](https://sourceforge.net/p/distributed-library-project/wiki/How%20to%20start%20application/).

Run Distributed Library Project on docker with these steps:
1. If you have no installed docker desktop, [download](https://www.docker.com/products/docker-desktop) and install it from [official site](https://www.docker.com/)
2. Download last version archive with docker from [Files](https://sourceforge.net/projects/distributed-library-project/files/).
These files have names like ``docker-{VERSION}.zip``.
Unpack downloaded archive.
Folder docker inside unpacked archive we will call ``DLP_DOCKER``
3. Download last version of application from [Files](https://sourceforge.net/projects/distributed-library-project/files/).
These files have names like ``dlp-{VERSION}.war``.
Rename downloaded file to ``dlp.war`` and move it into folder ``DLP_DOCKER``.
4. In the folder ``DLP_DOCKER`` you can find a file ".env".
Open it and edit environment variables. This step is **very important** for correct work of system!
5. Go to the folder ``DLP_DOCKER`` and start Database from console with command `docker-compose up db`.
*Wait for database successfully started*!
6. Go to the folder ``DLP_DOCKER`` and start Application Server with command `docker-compose up --build app-server`

In future you can stop both Database an Application Server with command `docker-compose stop` and start them with command `docker-compose start`.


#### Some useful docker-compose commands

`docker-compose up --force-recreate db` - start Database with full recreating (**all data will be lost!**)

`docker-compose up --build app-server` - rebuild and start Application Server

`docker-compose down` - stop and **remove** docker containers