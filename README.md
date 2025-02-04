# TTU-CS-4366

An automatic TA/grader assignment system, given the instructor of each course and a group of TA/graders (some master’s graders (20 hrs per week) and some ph.d. TAs (10 hrs or 20 hrs per week) with their experiences and preferences

## Necessary Technologies

### MySql

Follow this link: [MySQL Installation](https://dev.mysql.com/downloads/) and choose the option for your laptop. On Windows, choose the MySQL Installer for Windows and then opt into downloading both the MySQL Workbench and Shell.

After installing MySQL workbench, you should be able to open it up and create a root user and password. Once the root user is created an you've created MySQL Connection, you should be able to open connection and import tables.sql into the SQL editor, upon which you can execute the script and generate the tables.

> Note, when you first open a MySQL connection, there will be some dummy databases generated. If you feel like deleting them you can enter the command `DROP DATABASE _database_name_`

### Node/npm

Follow this link: [Node/npm Installation](https://nodejs.org/en/download) and choose accordingly.

After downloading Node and npm, all you need to do is navigate to the frontend, and in a terminal type: `npm install`, which installs all nodejs packages used in this project.

### Python/pip

Follow this link: [Python/pip Installation](https://www.python.org/downloads/) and choose accordingly.

After downloading Python and pip, type `pip install -r requirements.txt` and all the python requirements should be installed.

## Technology used

### Node/React/Vite

When creating the frontend of this project, we used Vite and ReactJS. `npm init vite@latest -- --template react`

> If you want to use typescript, enter this command: `npm init vite@latest -- --template react-ts`
