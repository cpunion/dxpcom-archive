/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDBChangeListener.idl
 */

module mozilla.dxpcom.nsIDBChangeListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDBChangeListener;


public import mozilla.dxpcom.nsIDBChangeListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIDBChangeAnnouncer;

public import mozilla.dxpcom.nsIDBChangeAnnouncerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIDBChangeListener */
class nsIDBChangeListenerD : public nsISupportsD {

  static const nsIID IID = NS_IDBCHANGELISTENER_IID;


  alias nsIDBChangeListener InnerType;

  this(nsIDBChangeListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIDBChangeListener opCast() {
    return inner;
  }

  void opAssign(nsIDBChangeListener value) {
    inner = value;
  }

  /* void onHdrChange (in nsIMsgDBHdr aHdrChanged, in unsigned long aOldFlags, in unsigned long aNewFlags, in nsIDBChangeListener aInstigator); */
  void OnHdrChange(nsIMsgDBHdrD aHdrChanged, PRUint32 aOldFlags, PRUint32 aNewFlags, nsIDBChangeListenerD aInstigator){
    nsresult __result = inner.OnHdrChange(aHdrChanged ? cast(nsIMsgDBHdr)aHdrChanged : null, aOldFlags, aNewFlags, aInstigator ? cast(nsIDBChangeListener)aInstigator : null);
    CheckException(__result);
  }

  /* void onHdrDeleted (in nsIMsgDBHdr aHdrChanged, in nsMsgKey aParentKey, in long aFlags, in nsIDBChangeListener aInstigator); */
  void OnHdrDeleted(nsIMsgDBHdrD aHdrChanged, nsMsgKey aParentKey, PRInt32 aFlags, nsIDBChangeListenerD aInstigator){
    nsresult __result = inner.OnHdrDeleted(aHdrChanged ? cast(nsIMsgDBHdr)aHdrChanged : null, aParentKey, aFlags, aInstigator ? cast(nsIDBChangeListener)aInstigator : null);
    CheckException(__result);
  }

  /* void onHdrAdded (in nsIMsgDBHdr aHdrChanged, in nsMsgKey aParentKey, in long aFlags, in nsIDBChangeListener aInstigator); */
  void OnHdrAdded(nsIMsgDBHdrD aHdrChanged, nsMsgKey aParentKey, PRInt32 aFlags, nsIDBChangeListenerD aInstigator){
    nsresult __result = inner.OnHdrAdded(aHdrChanged ? cast(nsIMsgDBHdr)aHdrChanged : null, aParentKey, aFlags, aInstigator ? cast(nsIDBChangeListener)aInstigator : null);
    CheckException(__result);
  }

  /* void onParentChanged (in nsMsgKey aKeyChanged, in nsMsgKey oldParent, in nsMsgKey newParent, in nsIDBChangeListener aInstigator); */
  void OnParentChanged(nsMsgKey aKeyChanged, nsMsgKey oldParent, nsMsgKey newParent, nsIDBChangeListenerD aInstigator){
    nsresult __result = inner.OnParentChanged(aKeyChanged, oldParent, newParent, aInstigator ? cast(nsIDBChangeListener)aInstigator : null);
    CheckException(__result);
  }

  /* void onAnnouncerGoingAway (in nsIDBChangeAnnouncer instigator); */
  void OnAnnouncerGoingAway(nsIDBChangeAnnouncerD instigator){
    nsresult __result = inner.OnAnnouncerGoingAway(instigator ? cast(nsIDBChangeAnnouncer)instigator : null);
    CheckException(__result);
  }

  /* void onReadChanged (in nsIDBChangeListener aInstigator); */
  void OnReadChanged(nsIDBChangeListenerD aInstigator){
    nsresult __result = inner.OnReadChanged(aInstigator ? cast(nsIDBChangeListener)aInstigator : null);
    CheckException(__result);
  }

  /* void onJunkScoreChanged (in nsIDBChangeListener aInstigator); */
  void OnJunkScoreChanged(nsIDBChangeListenerD aInstigator){
    nsresult __result = inner.OnJunkScoreChanged(aInstigator ? cast(nsIDBChangeListener)aInstigator : null);
    CheckException(__result);
  }

private:
  nsIDBChangeListener inner;

}

