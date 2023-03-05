/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICRLManager.idl
 */

module mozilla.dxpcom.nsICRLManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICRLManager;


public import mozilla.dxpcom.nsICRLManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIArray;

public import mozilla.dxpcom.nsIArrayD;

public import mozilla.xpcom.nsICRLInfo;

public import mozilla.dxpcom.nsICRLInfoD;


/* starting wrapper class:    nsICRLManager */
class nsICRLManagerD : public nsISupportsD {

  static const nsIID IID = NS_ICRLMANAGER_IID;


  alias nsICRLManager InnerType;

  this(nsICRLManager intr){
    super(intr);
    this.inner = intr;
  }

  nsICRLManager opCast() {
    return inner;
  }

  void opAssign(nsICRLManager value) {
    inner = value;
  }

  /* void importCrl ([array, size_is (length)] in octet data, in unsigned long length, in nsIURI uri, in unsigned long type, in boolean doSilentDownload, in wstring crlKey); */
  void ImportCrl(PRUint8 *data, PRUint32 length, nsIURID uri, PRUint32 type, PRBool doSilentDownload, PRUnichar*crlKey){
    nsresult __result = inner.ImportCrl(data, length, uri ? cast(nsIURI)uri : null, type, doSilentDownload, crlKey);
    CheckException(__result);
  }

  /* boolean updateCRLFromURL (in wstring url, in wstring key); */
  PRBool UpdateCRLFromURL(PRUnichar*url, PRUnichar*key){
    PRBool _retval;
    nsresult __result = inner.UpdateCRLFromURL(url, key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIArray getCrls (); */
  nsIArrayD  GetCrls(){
    nsIArray _retval;
    nsresult __result = inner.GetCrls(&_retval);
    CheckException(__result);
    return new nsIArrayD(_retval);
  }

  /* void deleteCrl (in unsigned long crlIndex); */
  void DeleteCrl(PRUint32 crlIndex){
    nsresult __result = inner.DeleteCrl(crlIndex);
    CheckException(__result);
  }

  /* void rescheduleCRLAutoUpdate (); */
  void RescheduleCRLAutoUpdate(){
    nsresult __result = inner.RescheduleCRLAutoUpdate();
    CheckException(__result);
  }

  enum { TYPE_AUTOUPDATE_TIME_BASED = 1U }

  enum { TYPE_AUTOUPDATE_FREQ_BASED = 2U }

  /* wstring computeNextAutoUpdateTime (in nsICRLInfo info, in unsigned long autoUpdateType, in double noOfDays); */
  PRUnichar* ComputeNextAutoUpdateTime(nsICRLInfoD info, PRUint32 autoUpdateType, double noOfDays){
    PRUnichar* _retval;
    nsresult __result = inner.ComputeNextAutoUpdateTime(info ? cast(nsICRLInfo)info : null, autoUpdateType, noOfDays, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICRLManager inner;

}

