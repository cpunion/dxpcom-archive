/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDownload.idl
 */

module mozilla.xpcom.nsIDownload;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsITransfer;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIObserver; /* forward declaration */

public import mozilla.xpcom.nsICancelable; /* forward declaration */

public import mozilla.xpcom.nsIWebProgressListener; /* forward declaration */

public import mozilla.xpcom.nsIMIMEInfo; /* forward declaration */


/* starting interface:    nsIDownload */
const char[] NS_IDOWNLOAD_IID_STR = "9e1fd9f2-9727-4926-85cd-f16c375bba6d";

const nsIID NS_IDOWNLOAD_IID= 
  {0x9e1fd9f2, 0x9727, 0x4926, 
    [ 0x85, 0xcd, 0xf1, 0x6c, 0x37, 0x5b, 0xba, 0x6d ]};

extern(Windows)
interface nsIDownload : nsITransfer {
  static const char[] IID_STR = NS_IDOWNLOAD_IID_STR;
  static const nsIID IID = NS_IDOWNLOAD_IID;

  /**
     * The target of a download is always a file on the local file system.
     */
  /* readonly attribute nsILocalFile targetFile; */
  nsresult GetTargetFile(nsILocalFile  *aTargetFile);

  /**
     * The percentage of transfer completed.
     * If the file size is unknown it'll be -1 here.
     */
  /* readonly attribute PRInt32 percentComplete; */
  nsresult GetPercentComplete(PRInt32 *aPercentComplete);

  /**
     * The amount of kbytes downloaded so far.
     */
  /* readonly attribute PRUint64 amountTransferred; */
  nsresult GetAmountTransferred(PRUint64 *aAmountTransferred);

  /**
     * The size of file in kbytes.
     * Unknown size is represented by 0.
     */
  /* readonly attribute PRUint64 size; */
  nsresult GetSize(PRUint64 *aSize);

  /**
     * The source of the transfer.
     */
  /* readonly attribute nsIURI source; */
  nsresult GetSource(nsIURI  *aSource);

  /**
     * The target of the transfer.
     */
  /* readonly attribute nsIURI target; */
  nsresult GetTarget(nsIURI  *aTarget);

  /**
     * Object that can be used to cancel the download.
     * Will be null after the download is finished.
     */
  /* readonly attribute nsICancelable cancelable; */
  nsresult GetCancelable(nsICancelable  *aCancelable);

  /**
     * The user-readable description of the transfer.
     */
  /* readonly attribute wstring displayName; */
  nsresult GetDisplayName(PRUnichar * *aDisplayName);

  /**
     * The time a transfer was started.
     */
  /* readonly attribute long long startTime; */
  nsresult GetStartTime(PRInt64 *aStartTime);

  /**
     * Optional. If set, it will contain the target's relevant MIME information.
     * This includes it's MIME Type, helper app, and whether that helper should be
     * executed.
     */
  /* readonly attribute nsIMIMEInfo MIMEInfo; */
  nsresult GetMIMEInfo(nsIMIMEInfo  *aMIMEInfo);

}


/* starting interface:    nsIDownload_MOZILLA_1_8_BRANCH */
const char[] NS_IDOWNLOAD_MOZILLA_1_8_BRANCH_IID_STR = "ff76f0c7-caaf-4e64-8896-154348322696";

const nsIID NS_IDOWNLOAD_MOZILLA_1_8_BRANCH_IID= 
  {0xff76f0c7, 0xcaaf, 0x4e64, 
    [ 0x88, 0x96, 0x15, 0x43, 0x48, 0x32, 0x26, 0x96 ]};

extern(Windows)
interface nsIDownload_MOZILLA_1_8_BRANCH : nsIDownload {
  static const char[] IID_STR = NS_IDOWNLOAD_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IDOWNLOAD_MOZILLA_1_8_BRANCH_IID;

  /**
     * The speed of the transfer in bytes/sec.
     */
  /* readonly attribute double speed; */
  nsresult GetSpeed(double *aSpeed);

}

