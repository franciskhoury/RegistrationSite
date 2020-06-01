# Registration Site

 Notes:
 ======
 1. The SQL database script is in Database folder.  The database uses Windows Authentication.
 2. The email send function uses the Gmail smtp server.  Credentials are passed in from appsettings. Placeholders are provided.
 3. The email body is hard-coded in the BusinessLayer class for convenience of this demo.
 4. The jQuery form validation plugin, used here without modification, was obtained from https://github.com/jquery-validation/jquery-validation/
 
 To-Do List:
 ============
 1. breadcrumb images
 2. refine email layout
 3. match validation styling to requirements (no messages)
 4. Notify user of registration succeeded but email send failed.
 5. Exception logging on server
