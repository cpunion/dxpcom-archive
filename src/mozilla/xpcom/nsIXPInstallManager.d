/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPInstallManager.idl
 */

module mozilla.xpcom.nsIXPInstallManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXPIProgressDialog; /* forward declaration */


/* starting interface:    nsIXPInstallManager */
const char[] NS_IXPINSTALLMANAGER_IID_STR = "566689cb-9926-4bec-a66e-a034e364ad2c";

const nsIID NS_IXPINSTALLMANAGER_IID= 
  {0x566689cb, 0x9926, 0x4bec, 
    [ 0xa6, 0x6e, 0xa0, 0x34, 0xe3, 0x64, 0xad, 0x2c ]};

/**
 * Interface to XPInstallManager - manages download and install operations.
 */
extern(Windows)
interface nsIXPInstallManager : nsISupports {
  static const char[] IID_STR = NS_IXPINSTALLMANAGER_IID_STR;
  static const nsIID IID = NS_IXPINSTALLMANAGER_IID;

  /** 
     * Initiates a download and install operation of the supplied URLs
     * and sends notifications to the supplied listener.
     * @param aURLs     array of XPI urls to download and install
     * @param aURLCount number of XPI urls in aURLs
     * @param aListener a listener to receive status notifications
     */
  /* void initManagerFromChrome ([array, size_is (aURLCount)] in wstring aURLs, in unsigned long aURLCount, in nsIXPIProgressDialog aListener); */
  nsresult InitManagerFromChrome(PRUnichar **aURLs, PRUint32 aURLCount, nsIXPIProgressDialog aListener);

  /**
     * Initiates a set of downloads and checks the supplied hashes after
     * download. Just like initManagerFromChrome() in all other respects
     * @param aURLs     array of XPI urls to download and install
     * @param aHashes   array of hash strings to validate. The entire array
     *                  or individual hashes can be null to indicate no
     *                  checking. If supplied looks like "type:hash", like
     *                  "md5:3232bc5624041c507db0965324188024".
     *                  Supports the types in nsICryptoHash
     * @param aURLCount number of XPI urls in aURLs and aHashes
     * @param aListener a listener to receive status notifications
     */
  /* void initManagerWithHashes ([array, size_is (aURLCount)] in wstring aURLs, [array, size_is (aURLCount)] in string aHashes, in unsigned long aURLCount, in nsIXPIProgressDialog aListener); */
  nsresult InitManagerWithHashes(PRUnichar **aURLs, char **aHashes, PRUint32 aURLCount, nsIXPIProgressDialog aListener);

}

