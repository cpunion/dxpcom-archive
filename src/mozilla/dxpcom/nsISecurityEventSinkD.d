/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecurityEventSink.idl
 */

module mozilla.dxpcom.nsISecurityEventSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISecurityEventSink;


public import mozilla.dxpcom.nsISecurityEventSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsISecurityEventSink */
class nsISecurityEventSinkD : public nsISupportsD {

  static const nsIID IID = NS_ISECURITYEVENTSINK_IID;


  alias nsISecurityEventSink InnerType;

  this(nsISecurityEventSink intr){
    super(intr);
    this.inner = intr;
  }

  nsISecurityEventSink opCast() {
    return inner;
  }

  void opAssign(nsISecurityEventSink value) {
    inner = value;
  }

  /**
      * Fired when a security change occurs due to page transitions,
      * or end document load. This interface should be called by
      * a security package (eg Netscape Personal Security Manager)
      * to notify nsIWebProgressListeners that security state has
      * changed. State flags are in nsIWebProgressListener.idl
      */
  /* void onSecurityChange (in nsISupports i_Context, in unsigned long state); */
  void OnSecurityChange(nsISupportsD i_Context, PRUint32 state){
    nsresult __result = inner.OnSecurityChange(i_Context ? cast(nsISupports)i_Context : null, state);
    CheckException(__result);
  }

private:
  nsISecurityEventSink inner;

}

