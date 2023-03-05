/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICRLManager.idl
 */

module mozilla.xpcom.nsICRLManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIArray; /* forward declaration */

public import mozilla.xpcom.nsICRLInfo; /* forward declaration */


/* starting interface:    nsICRLManager */
const char[] NS_ICRLMANAGER_IID_STR = "486755db-627a-4678-a21b-f6a63bb9c56a";

const nsIID NS_ICRLMANAGER_IID= 
  {0x486755db, 0x627a, 0x4678, 
    [ 0xa2, 0x1b, 0xf6, 0xa6, 0x3b, 0xb9, 0xc5, 0x6a ]};

extern(Windows)
interface nsICRLManager : nsISupports {
  static const char[] IID_STR = NS_ICRLMANAGER_IID_STR;
  static const nsIID IID = NS_ICRLMANAGER_IID;

  /* void importCrl ([array, size_is (length)] in octet data, in unsigned long length, in nsIURI uri, in unsigned long type, in boolean doSilentDownload, in wstring crlKey); */
  nsresult ImportCrl(PRUint8 *data, PRUint32 length, nsIURI uri, PRUint32 type, PRBool doSilentDownload, PRUnichar *crlKey);

  /* boolean updateCRLFromURL (in wstring url, in wstring key); */
  nsresult UpdateCRLFromURL(PRUnichar *url, PRUnichar *key, PRBool *_retval);

  /* nsIArray getCrls (); */
  nsresult GetCrls(nsIArray *_retval);

  /* void deleteCrl (in unsigned long crlIndex); */
  nsresult DeleteCrl(PRUint32 crlIndex);

  /* void rescheduleCRLAutoUpdate (); */
  nsresult RescheduleCRLAutoUpdate();

  enum { TYPE_AUTOUPDATE_TIME_BASED = 1U };

  enum { TYPE_AUTOUPDATE_FREQ_BASED = 2U };

  /* wstring computeNextAutoUpdateTime (in nsICRLInfo info, in unsigned long autoUpdateType, in double noOfDays); */
  nsresult ComputeNextAutoUpdateTime(nsICRLInfo info, PRUint32 autoUpdateType, double noOfDays, PRUnichar **_retval);

}

