/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilterHitNotify.idl
 */

module mozilla.dxpcom.nsIMsgFilterHitNotifyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFilterHitNotify;


public import mozilla.dxpcom.nsIMsgFilterHitNotifyD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgFilter;
public import mozilla.dxpcom.nsIMsgFilterD;
public import mozilla.xpcom.nsMsgFilterCore;
public import mozilla.dxpcom.nsMsgFilterCoreD;
public import mozilla.xpcom.nsIMsgWindow;
public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIMsgFilterHitNotify */
class nsIMsgFilterHitNotifyD : public nsISupportsD {

  static const nsIID IID = NS_IMSGFILTERHITNOTIFY_IID;


  alias nsIMsgFilterHitNotify InnerType;

  this(nsIMsgFilterHitNotify intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFilterHitNotify opCast() {
    return inner;
  }

  void opAssign(nsIMsgFilterHitNotify value) {
    inner = value;
  }

  /* boolean applyFilterHit (in nsIMsgFilter filter, in nsIMsgWindow msgWindow); */
  PRBool ApplyFilterHit(nsIMsgFilterD filter, nsIMsgWindowD msgWindow){
    PRBool _retval;
    nsresult __result = inner.ApplyFilterHit(filter ? cast(nsIMsgFilter)filter : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgFilterHitNotify inner;

}

