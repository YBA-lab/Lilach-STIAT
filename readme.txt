To run the experiment using the batch runner make sure that:
a) the experiment file (*.opensesame, hardcoded default is 'study.opensesame', feel free to change the .bat file to fit your needs)
b) the filepool (__pool__ directory; see http://osdoc.cogsci.nl/miscellaneous/git/#use-a-static-file-pool-folder), and
c) the batch runner file (OSrunner.bat)
are all in one folder.

to that folder, extract a portable version of Opensesame (I've used 2.9.7 for development, the upcoming 3.0.X should work, but wasn't tested). The portable version can be obtained at: http://osdoc.cogsci.nl/getting-opensesame/download/ look for the one that says 'Windows XP/Vista/7 no installation required (.zip)'

the end result should be that OSrunner.bat, study.opensesame and opensesamerun.exe (and many other files) are all in one folder, and the __pool__ is one of the subfolders of that folder (among many others).

run OSrunner.bat

This will check if a data folder exists, and if not create one (ExpData), where logs and data will be kept as CSV files, one per subjectID.
As duplicate subjectIDs will overwrite previously gathered data, there is a mechanism to detect and prevent duplicates:
If a log file with the same subjectID already exists, a prompt will ask the participant to call the experimenter and provide a password (default: 'michael', feel free to edit the .bat file. It shouldn't be hard to find where). If an incorrect password is provided the participant will be prompted again, until the correct password is provided, or the program is force-closed.
After the correct password has been provided, the experimenter can give any subjectID, and could therefore choose to FORCE-overwrite previous data by providing again the duplicate subjectID, or correct the participant's mistake and give a new unique subjectID.

The study should then run, using the subjectID provided by the user, and saving the data to the ExpData subfolder.

Happy researching,
