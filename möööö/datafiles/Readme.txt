Welcome to Android Permissions!! 
As you may be aware, Android operating systems 6.0 and higher now check for permissions at run time, and it is now up to us the developers to handle this. I have made this extension to do that. there are 24 permissions Android lists as 'Dangerous Permissions' and so there are 25 functions in this extension available for you to use and each function has a request permission and a check permission so there are actually 50 functions total. Most apps only need 1 or 2 dangerous permissions so you'd most likly only need to use 2 - 4 of them but to cover every situation I have included ALL OF THEM for you. here is the list of the dangerous permissions and the related functions in the extension to handle them in this order - permission name, check permission name, get permission function name:
READ_CALENDAR - ChkRcal(); - readCal();
WRITE_CALENDAR - ChkWcal(); - writeCal();
CAMERA - ChkCam(); - Cam();
READ_CONTACTS - ChkCon(); - ReadCon();
WRITE_CONTACTS - ChkWCon(); - WriteCon();
GET_ACCOUNTS - ChkAcct(); - ReadAcct();
ACCESS_FINE_LOCATION - ChkFineLoc(); - ReadFineLoc();
ACCESS_COARSE_LOCATION - ChkCoarseLoc(); - ReadCoarseLoc();
RECORD_AUDIO - ChkAudio(); - RecAudio();
READ_PHONE_STATE - ChkPhState(); - ReadPhState();
CALL_PHONE - ChkCallPhone(); - CallPhone();
READ_CALL_LOG - ChkCallLog(); - ReadCallLog();
WRITE_CALL_LOG - ChkWriteCallLog(); - WriteCallLog();
ADD_VOICEMAIL - ChkVmail(); - AddVmail();
USE_SIP - ChkSip(); - UseSip();
PROCESS_OUTGOING_CALLS - ChkProsOutCal(); - ProsOutCal();
BODY_SENSORS - ChkBodySens(); - BodySens();
SEND_SMS - ChkSendSms(); - SendSms();
RECEIVE_SMS - ChkRecvSms(); - RecvSms();
READ_SMS - ChkReadSms(); - ReadSms();
RECEIVE_WAP_PUSH - ChkRecvPush(); - RecvPush();
RECEIVE_MMS - ChkRecvMms(); - RecvMms();
READ_EXTERNAL_STORAGE - ChkReadExtStor(); - ReadExtStor();
WRITE_EXTERNAL_STORAGE - ChkWriteExtStor(); - WriteExtStor();
MOUNT_UNMOUNT_FILESYSTEMS - ChkMountFile(); - MountFile();

Don't forget to check the permissions box(s) in the global game settings for the permissions you want to use, and if your permission isn't listed in the global game settings you need to add it in the Android form by right clicking the extension in the resource tree and selecting properties which brings up the edit extensions form, in here click the android tab and click the add button to type in your permission with the format: android.permission.PERMISSION_NAME (substitute PERMISSION_NAME with the actual name of the permission) This will inject the permission into the android manifest and this extension does the task of implementing the job of asking the user to allow the permission.
To use the extension in your project you would put a code similar to this in the create event of the first instance in the first room of your game:

//Let's say you want to use the permission WRITE_EXTERNAL_STORAGE
global.permissions=0;
if ChkWriteExtStor()==0//If the permission has not been granted
{
WriteExtStor();//Ask the user for the permission
}
 else 
{
global.permissions=1;//If the game has been run before and we got the permission execute related code
}
//If you need multiple permissions change the global variable into an array and repeat the above process for each permission you need.

Then in an alarm event check again for the permission so that it will take effect on the first run, otherwise the user will have to close and reopen the app to use the permission's functionality, so just do something like this in the first instance's alarm event set to 1:

if ChkWriteExtStor()==1 global.permissions=1;

So if the user ok's the permission you can use global.permissions anywhere in your game that requires that permission to check if you can perform the task, or alternatly if the permission is denied you can use the global.permissions variable to show the user a message asking them to enable it in settings if they want to use your app's functionality that requires that permission. NOTE - Do a clean, full build install of your app to test, to be specific, You must do a final build to test it using the create executable for target button, uninstall the test project if you've previously test run it with the yoyo runner, then install your app on your android device to test. (denying permissions in test mode denies the runner access to your phone and will crash your game)

This info can also be found on the Android Permissions home page on my website: 
http://roadhammergaming.blogspot.com/p/android-permissions.html
