# Project Description
I have been working on this project for quite some time now and my goal is to build a social networking platform 
integrated with GPS technology in order to connect sporting and recreational enthusiasts through different activities 
e.g. hiking, football, tennis, badminton and more.

# Technology used includes:
HTML, CSS, JavaScript, JQuery, Ajax, PHP and MySQL.


https://youtu.be/tVLlJT6CryA - Project Overview
https://youtu.be/0a4-QwhLza0 - Demo 

# How to set up Xampp server and run PHP program?

a.) Once you have your project or .php file ready for execution, next step would be to install the  XAMPP software.
After completion of the installation, you can use the XAMPP Control Panel to start/ stop all servers.
Start Mysql and Apache servers.

b.) Copy file.php to htdocs (C:/Program Files/XAMPP/htdocs): Windows OS
You can also create any folders inside htdocs folder and save our codes over there.
In order to get the dashboard for localhost: search http://localhost in any browser.

c.) Now to run your code, open localhost/index.php then it gets executed.

d.) With this we come to an end of this article. I hope you have learned about XAMP, the installation of XAMP and how to run a PHP program in Xampp.


# Built Instructions
# Step 1:
a.) In order to create a XAMPP MySQL database, you need to launch XAMPP first.
b.) Now navigate to http://localhost/phpmyadmin
c.) And click on the Database tab. Now you should see the option to Create a Database and input field to enter the database name. Write the database name and hit the ‘Create’ button. You will see a success message in a while. 

# In case you already have a database created, jump to step 4 (by importing the database)
# Step 2:
# Create Tables Using phpMyAdmin XAMPP
On this page, you will find list databases available, click on the ‘Create new table on database’ wizard to get started. First, add the table name and the total number of fields and hit the ‘Go’ button.

# Step 3:
# Set Password to phpMyAdmin on XAMPP
a.) When we install the XAMPP server on a local machine, by default the username is ‘root’ and the password remains empty. Since it is a local server that’s why developers don’t set any password. However, it’s entirely your choice to set or change the password to phpMyAdmin on XAMPP. If you want to set a password you can follow the following steps.
b.) Start the XAMPP server by clicking on the ‘Start’ button parallel to MySQL and Apache server like shown below.
Parallel to MySQL in the Actions column, click on the ‘Admin’ button. And this will open a page whose URL will be localhost/phpmyadmin. However, you can directly open this page simply by entering this URL in the browser.
c.) On this page, click on the ‘User accounts’ option at the top of the page.
d.) Now press the ‘Edit Privileges’ under ‘Actions’ option for the Username ‘root’ and Hostname ‘localhost.’
e.) Now choose the third tab ‘Change password’ and type your password in the provided field, retype the password to confirm it and then finally click on the ‘Go’ key to conclude the process.
f.) That’s how you can set a password to phpMyAdmin XAMPP!!
 
# Step 4:
# Import / Export Database on XAMPP phpMyAdmin
a.) In order to manage the MySQL database, phpMyAdmin provides you an efficient platform. You can handle the data from anywhere using phpMyAdmin. Moreover, the capability to import & export database gives you the best chance to recover from any sudden or unavoidable data loss. Likewise, migrating data from one server to another can be done flawlessly. It is a web-based interface that allows you to recover the data from anywhere.

# Import Database on XAMPP phpMyAdmin
a.) However, it is easy to import or export data and the following steps can help you with that. So to import the database using phpMyAdmin XAMPP carry out the following steps.
b.) Open the Database in phpMyAdmin.
c.) Click on the Databases from the top menu.
d.) Select the name of the database from the drop-down menu which you want to import.
e.) Click on the Import tab.
f.) Browse your .sql file by clicking on the ‘Choose File’ option that you wish to import. And then click on the ‘Go’ button at the bottom.
g.) You’re done!! You have successfully imported the database if the syntax of your .sql file is correct, now you should see a confirmation message on your screen. Similarly, you can see the tables in the column to the left in the phpMyAdmin interface.

# Export Database on XAMPP phpMyAdmin
a.) In order to export MySQL database via phpMyAdmin XAMPP, follow the following step.
b.) To begin the export process, log in to the cPanel and open the phpMyAdmin interface.
c.) In the left pane of the phpMyAdmin, select the database you want to export.
d.) Select the ‘Export’ tab at the top.
e.) Now, you shall see two options i.e. Quick and Custom. You can select Quick if you want to go with default option or select Custom if you want to select particular tables and comepresion type of the exported file in addition to many other options.
f.) Note: The older version of phpMyAdmin does not support Quick. So you’ll have to follow another method for that.
g.) Now, single out the format you wish to export your database in. Click on the drop-down menu and opt out the one from the given list.
h.) Confirm your choice by clicking on the ‘Go’ button.
i.) Now, you will be asked to either open or save the chosen file. You may select save the file and save it to your desired location.
j.) Congratulations!! You have successfully exported the file.

