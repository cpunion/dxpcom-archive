/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIComponentLoaderManager.idl
 */

module mozilla.xpcom.nsIComponentLoaderManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIComponentLoaderManager */
const char[] NS_ICOMPONENTLOADERMANAGER_IID_STR = "fce83d37-a3c0-4e09-ad9f-6842a984dbdf";

const nsIID NS_ICOMPONENTLOADERMANAGER_IID= 
  {0xfce83d37, 0xa3c0, 0x4e09, 
    [ 0xad, 0x9f, 0x68, 0x42, 0xa9, 0x84, 0xdb, 0xdf ]};

extern(Windows)
interface nsIComponentLoaderManager : nsISupports {
  static const char[] IID_STR = NS_ICOMPONENTLOADERMANAGER_IID_STR;
  static const nsIID IID = NS_ICOMPONENTLOADERMANAGER_IID;

  /* boolean hasFileChanged (in nsIFile file, in string loaderString, in PRInt64 modDate); */
  nsresult HasFileChanged(nsIFile file, char *loaderString, PRInt64 modDate, PRBool *_retval);

  /* void saveFileInfo (in nsIFile file, in string loaderString, in PRInt64 modDate); */
  nsresult SaveFileInfo(nsIFile file, char *loaderString, PRInt64 modDate);

  /* void removeFileInfo (in nsIFile file, in string loaderString); */
  nsresult RemoveFileInfo(nsIFile file, char *loaderString);

  /* void flushPersistentStore (in boolean now); */
  nsresult FlushPersistentStore(PRBool now);

  /* string getOptionalData (in nsIFile file, in string loaderString); */
  nsresult GetOptionalData(nsIFile file, char *loaderString, char **_retval);

  /* void setOptionalData (in nsIFile file, in string loaderString, in string value); */
  nsresult SetOptionalData(nsIFile file, char *loaderString, char *value);

}

