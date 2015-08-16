to run the experiment using the batch runner make sure that:
a) the experiment file (Lilach-ST.opensesame)
b) the filepool (__pool__ directory), and
c) the batch runner file (Lilach.bat)
are all in one folder.

to that folder, extract a portable version of Opensesame (I've used 2.9.7 for development, the upcoming 3.0.X should work, but wasn't tested). The portable version can be obtained at: http://osdoc.cogsci.nl/getting-opensesame/download/ look for the one that says 'Windows XP/Vista/7 no installation required (.zip)'

the end result should be that lilach.bat, Lilach-ST.opensesame and opensesamerun.exe (and many other files) are all in one folder, and the __pool__ is one of the subfolders of that folder (among many others).

run lilach.bat


this will check if a log folder exists, and if not create one (lilach-logs), where logs will be kept as CSV files, one per subjectID.
As duplicate subjectIDs will overwrite data, there is a mechanism to detect and prevent duplicates.
if a log file with the same subjectID already exists, a prompt will ask the participant to call the experimenter and provide a password ('michael'). If an incorrect password is provided the participant will be prompted again, until the correct password is provided, or the program is force-closed.
after the correct password has been provided, the experimenter can give any subjectID, and could therefore choose to force-overwrite previous data by providing again the duplicate subjectID, or correct the participant's mistake and give a new unique subjectID
