/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMinimoDesktop.idl
 */

module mozilla.xpcom.nsIMinimoDesktop;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIMinimoDesktop */
const char[] NS_IMINIMODESKTOP_IID_STR = "bf9a9526-0514-4b0b-9972-afb9e734e8b6";

const nsIID NS_IMINIMODESKTOP_IID= 
  {0xbf9a9526, 0x0514, 0x4b0b, 
    [ 0x99, 0x72, 0xaf, 0xb9, 0xe7, 0x34, 0xe8, 0xb6 ]};

extern(Windows)
interface nsIMinimoDesktop : nsISupports {
  static const char[] IID_STR = NS_IMINIMODESKTOP_IID_STR;
  static const nsIID IID = NS_IMINIMODESKTOP_IID;

  /* readonly attribute boolean connected; */
  nsresult GetConnected(PRBool *aConnected);

  /* readonly attribute long availableMemory; */
  nsresult GetAvailableMemory(PRInt32 *aAvailableMemory);

  /* readonly attribute long batteryLifePercent; */
  nsresult GetBatteryLifePercent(PRInt32 *aBatteryLifePercent);

  /* wstring getMinimoInstallLocation (); */
  nsresult GetMinimoInstallLocation(PRUnichar **_retval);

  /* void remoteStartProcess (in wstring app, in wstring params); */
  nsresult RemoteStartProcess(PRUnichar *app, PRUnichar *params);

  /* void remoteCreateDirectory (in wstring dir); */
  nsresult RemoteCreateDirectory(PRUnichar *dir);

  /* void remoteRemoveFile (in wstring source); */
  nsresult RemoteRemoveFile(PRUnichar *source);

  /* void remoteCopyFile (in wstring source, in wstring dest); */
  nsresult RemoteCopyFile(PRUnichar *source, PRUnichar *dest);

  /* void remoteMoveFile (in wstring source, in wstring dest); */
  nsresult RemoteMoveFile(PRUnichar *source, PRUnichar *dest);

  /* void copyFileToDevice (in wstring locationOnDevice, in nsIFile localFile); */
  nsresult CopyFileToDevice(PRUnichar *locationOnDevice, nsIFile localFile);

  /* void copyFileFromDevice (in wstring locationOnDevice, in nsIFile localFile); */
  nsresult CopyFileFromDevice(PRUnichar *locationOnDevice, nsIFile localFile);

}

