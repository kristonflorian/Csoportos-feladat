# Repont

<b>This Repo is for the 2024/2025 end of school year exam for the REpont group from SZIKSZI, and it is used to track changes we made to the project along the way</b><br>
The project itself is about providing users with an interface where they can track their progress in returning bottles, and getting achievements in the process, along with a database of machines, so they can check which ones are the closest to them
<br>
System Requirements:
|         | Recommended      | Required  |
| ------------- |-------------:| -----:|
| Processor (CPU)      | Intel Core i3-2100 3.1GHz | Intel Pentium G630 |
| Operating System (OS)      | Windows 10   |  Windows 10 |
| RAM | 4GB      |   2GB |
| Storage | 1GB      |   1GB |
| Internet | Broadband      |  Broadband |
| GPU | NVIDIA GeForce 605      |   Nvidia GeForce 405 |
## Requirements
Latest version of NodeJS, PHP Composer, XAMPP, and an actively supported webbrowser
## How to use
First you need to start XAMPP, including Apache Web Server and MySQL modules, then go to the command line where the Laravel database has been downloaded/extracted, and run `php artisan migrate -seed` to partially upload the database (if it asks if you want to create it, then allow it). Then go back to XAMPP and in the MySQL module click on the Admin button, which will take you to the phpMyAdmin database management web interface, then in the left hand menu look for the database called 'repont' and click on it, then click on the import button at the top and in the file import field put in 'settlementNmachineImport.sql', once it is uploaded, unzip it and click on the import button. After that, go back to your command line, and run `php artisan serve`. Then you can open another command line so that the one that was started now is not closed, and with the new command line you can go to the place where the Angular frontend was downloaded/extracted, and run the command `ng serve` there, and the Web application will be ready to use.
