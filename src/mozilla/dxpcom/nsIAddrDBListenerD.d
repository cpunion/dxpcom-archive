/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddrDBListener.idl
 */

module mozilla.dxpcom.nsIAddrDBListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAddrDBListener;


public import mozilla.dxpcom.nsIAddrDBListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.dxpcom.nsIAbCardD;
public import mozilla.xpcom.nsIAbDirectory;
public import mozilla.dxpcom.nsIAbDirectoryD;

public import mozilla.xpcom.nsIAddrDBAnnouncer;

public import mozilla.dxpcom.nsIAddrDBAnnouncerD;


/* starting wrapper class:    nsIAddrDBListener */
class nsIAddrDBListenerD : public nsISupportsD {

  static const nsIID IID = NS_IADDRDBLISTENER_IID;


  alias nsIAddrDBListener InnerType;

  this(nsIAddrDBListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIAddrDBListener opCast() {
    return inner;
  }

  void opAssign(nsIAddrDBListener value) {
    inner = value;
  }

  /* void onCardAttribChange (in unsigned long abCode); */
  void OnCardAttribChange(PRUint32 abCode){
    nsresult __result = inner.OnCardAttribChange(abCode);
    CheckException(__result);
  }

  /* void onCardEntryChange (in unsigned long abCode, in nsIAbCard card); */
  void OnCardEntryChange(PRUint32 abCode, nsIAbCardD card){
    nsresult __result = inner.OnCardEntryChange(abCode, card ? cast(nsIAbCard)card : null);
    CheckException(__result);
  }

  /* void onListEntryChange (in unsigned long abCode, in nsIAbDirectory list); */
  void OnListEntryChange(PRUint32 abCode, nsIAbDirectoryD list){
    nsresult __result = inner.OnListEntryChange(abCode, list ? cast(nsIAbDirectory)list : null);
    CheckException(__result);
  }

  /* void onAnnouncerGoingAway (); */
  void OnAnnouncerGoingAway(){
    nsresult __result = inner.OnAnnouncerGoingAway();
    CheckException(__result);
  }

private:
  nsIAddrDBListener inner;

}

