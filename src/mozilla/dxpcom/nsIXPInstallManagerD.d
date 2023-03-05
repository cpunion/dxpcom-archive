/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPInstallManager.idl
 */

module mozilla.dxpcom.nsIXPInstallManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPInstallManager;


public import mozilla.dxpcom.nsIXPInstallManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXPIProgressDialog;

public import mozilla.dxpcom.nsIXPIProgressDialogD;


/* starting wrapper class:    nsIXPInstallManager */
/**
 * Interface to XPInstallManager - manages download and install operations.
 */
class nsIXPInstallManagerD : public nsISupportsD {

  static const nsIID IID = NS_IXPINSTALLMANAGER_IID;


  alias nsIXPInstallManager InnerType;

  this(nsIXPInstallManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPInstallManager opCast() {
    return inner;
  }

  void opAssign(nsIXPInstallManager value) {
    inner = value;
  }

  /** 
     * Initiates a download and install operation of the supplied URLs
     * and sends notifications to the supplied listener.
     * @param aURLs     array of XPI urls to download and install
     * @param aURLCount number of XPI urls in aURLs
     * @param aListener a listener to receive status notifications
     */
  /* void initManagerFromChrome ([array, size_is (aURLCount)] in wstring aURLs, in unsigned long aURLCount, in nsIXPIProgressDialog aListener); */
  void InitManagerFromChrome(PRUnichar**aURLs, PRUint32 aURLCount, nsIXPIProgressDialogD aListener){
    nsresult __result = inner.InitManagerFromChrome(aURLs, aURLCount, aListener ? cast(nsIXPIProgressDialog)aListener : null);
    CheckException(__result);
  }

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
  void InitManagerWithHashes(PRUnichar**aURLs, char**aHashes, PRUint32 aURLCount, nsIXPIProgressDialogD aListener){
    nsresult __result = inner.InitManagerWithHashes(aURLs, aHashes, aURLCount, aListener ? cast(nsIXPIProgressDialog)aListener : null);
    CheckException(__result);
  }

private:
  nsIXPInstallManager inner;

}

