# ACE Milwaukee MYSQL repo

For now there will be random SQL tables placed in to this repo as the group learns SQL, but eventually this will hold all of the SQL files necessary to quickly deploy an instance of the Database created for ACE Milwaukee. This uses docker-compose to simplify establishing your development environment and exploring the MySQL database using PHPMyAdmin.

## docker-compose

This project uses docker-compose so you need to have either Docker Desktop (Windows and Mac) or Docker Engine and Docker Compose (Linux) installed in order to use this. [Start Here](https://docs.docker.com/get-docker/)

- For linux remember that after this install you still have to [install docker-compose](https://docs.docker.com/compose/install/) 

## Development Workflow

Create all wanted sql tables in .sql files placed in the `docker-entrypoint-initdb.d` directory. Also create files to insert any dummy test data you would like to work with.

- For now the files from chapter 2's cape codd table have been placed there for reference.

With docker-compose installed, all you have to do is open a terminal in the root of the project and run:

    docker-compose up -d

Then, wait for a while or run:
    
    docker-compose logs -f db

and wait for the message: `[System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.21'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.`

- You can exit after this message using the `[Ctrl]+c` key combo

Now you can just go to [localhost](http://localhost) on your browser and start using phpmyadmin to administrate your server. Use this to query and explore your server to test if it is working.

- Do not rely on this to create and persist datas or tables. Use the `docker-entrypoint-initdb.d` directory for that purpose.

When you are done working, or if your server becomes messed up and needs to be reset run:

    docker-compose down

and docker-compose will clean and delete everything so you can start from the top of this workflow again.

- This will delete any data that was added using PHPMyAdmin so be sure to save all operations in .sql files in the `docker-entrypoint-initdb.d` directory if you want them to be present when you start again.

## Configuration

---

You do not have to copy contents into the `src` folder to build the database if you don't want to. You can define the folder to build from in terminal using a terminal environment variable you define at the start of each session. `./src` is the default set the `DB_FOLDER` environment variable to use any folder, local relative path or otherwise, you would like.

On Windows with Powershell the command to set this would be:

```
$env:DB_FOLDER="./EXAMPLE_FOLDER_NAME"
```
Or on Linux bash the command is:

```
export DB_FOLDER=./EXAMPLE_FOLDER_NAME
```

After running this command you can continue to use docker-compose as normal in that session and it will instead use the given folder.

---

**This is unnecessary by default now.** It was easier to leave this unset by default for this use case. Use `CREATE TABLE IF NOT EXISTS ____` and `USE ___`statements at the start of your files to set up the databases in each folder instaed.

If you want to change the name of the database being used, go into the docker-compose.yml and change the line:

    MYSQL_DATABASE: database_name

and replace [database_name] with the name you would like to use.

---

**This is unnecessary by default now.** This default port is already set and ready to use by default. You only need this section if you want to change the port.

If you would like to use MySQL workbench or another SQL Client with this, open the docker-compose.yml file and add the lines:

    ports: 
        - 3306:3306

Indented underneath the line which says `db:`. Now you can add the connection to your client with the default host and port, with the username as root and the password as "secret".

- This is obviously not secure, it is only meant for use on your local machine, don't expose it to the world.
- If you already have SQL Server installed, you will have to uninstall it or at least disable the default server instance which reserves this port by default.

---

