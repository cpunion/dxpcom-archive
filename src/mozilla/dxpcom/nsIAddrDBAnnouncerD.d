/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddrDBAnnouncer.idl
 */

module mozilla.dxpcom.nsIAddrDBAnnouncerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAddrDBAnnouncer;


public import mozilla.dxpcom.nsIAddrDBAnnouncerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.dxpcom.nsIAbCardD;

public import mozilla.xpcom.nsIAddrDBListener;

public import mozilla.dxpcom.nsIAddrDBListenerD;


/* starting wrapper class:    nsIAddrDBAnnouncer */
class nsIAddrDBAnnouncerD : public nsISupportsD {

  static const nsIID IID = NS_IADDRDBANNOUNCER_IID;


  alias nsIAddrDBAnnouncer InnerType;

  this(nsIAddrDBAnnouncer intr){
    super(intr);
    this.inner = intr;
  }

  nsIAddrDBAnnouncer opCast() {
    return inner;
  }

  void opAssign(nsIAddrDBAnnouncer value) {
    inner = value;
  }

  /* void addListener (in nsIAddrDBListener listener); */
  void AddListener(nsIAddrDBListenerD listener){
    nsresult __result = inner.AddListener(listener ? cast(nsIAddrDBListener)listener : null);
    CheckException(__result);
  }

  /* void removeListener (in nsIAddrDBListener listener); */
  void RemoveListener(nsIAddrDBListenerD listener){
    nsresult __result = inner.RemoveListener(listener ? cast(nsIAddrDBListener)listener : null);
    CheckException(__result);
  }

  /* void notifyCardAttribChange (in unsigned long abCode); */
  void NotifyCardAttribChange(PRUint32 abCode){
    nsresult __result = inner.NotifyCardAttribChange(abCode);
    CheckException(__result);
  }

  /* void notifyCardEntryChange (in unsigned long abCode, in nsIAbCard card); */
  void NotifyCardEntryChange(PRUint32 abCode, nsIAbCardD card){
    nsresult __result = inner.NotifyCardEntryChange(abCode, card ? cast(nsIAbCard)card : null);
    CheckException(__result);
  }

  /* void notifyAnnouncerGoingAway (); */
  void NotifyAnnouncerGoingAway(){
    nsresult __result = inner.NotifyAnnouncerGoingAway();
    CheckException(__result);
  }

private:
  nsIAddrDBAnnouncer inner;

}

