/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDNSListener.idl
 */

module mozilla.dxpcom.nsIDNSListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDNSListener;


public import mozilla.dxpcom.nsIDNSListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsICancelable;

public import mozilla.dxpcom.nsICancelableD;

public import mozilla.xpcom.nsIDNSRecord;

public import mozilla.dxpcom.nsIDNSRecordD;


/* starting wrapper class:    nsIDNSListener */
/**
 * nsIDNSListener
 */
class nsIDNSListenerD : public nsISupportsD {

  static const nsIID IID = NS_IDNSLISTENER_IID;


  alias nsIDNSListener InnerType;

  this(nsIDNSListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIDNSListener opCast() {
    return inner;
  }

  void opAssign(nsIDNSListener value) {
    inner = value;
  }

  /**
     * called when an asynchronous host lookup completes.
     *
     * @param aRequest
     *        the value returned from asyncResolve.
     * @param aRecord
     *        the DNS record corresponding to the hostname that was resolved.
     *        this parameter is null if there was an error.
     * @param aStatus
     *        if the lookup failed, this parameter gives the reason.
     */
  /* void onLookupComplete (in nsICancelable aRequest, in nsIDNSRecord aRecord, in nsresult aStatus); */
  void OnLookupComplete(nsICancelableD aRequest, nsIDNSRecordD aRecord, nsresult aStatus){
    nsresult __result = inner.OnLookupComplete(aRequest ? cast(nsICancelable)aRequest : null, aRecord ? cast(nsIDNSRecord)aRecord : null, aStatus);
    CheckException(__result);
  }

private:
  nsIDNSListener inner;

}

