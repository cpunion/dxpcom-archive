/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDBChangeAnnouncer.idl
 */

module mozilla.dxpcom.nsIDBChangeAnnouncerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDBChangeAnnouncer;


public import mozilla.dxpcom.nsIDBChangeAnnouncerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIDBChangeListener;

public import mozilla.dxpcom.nsIDBChangeListenerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIDBChangeAnnouncer */
class nsIDBChangeAnnouncerD : public nsISupportsD {

  static const nsIID IID = NS_IDBCHANGEANNOUNCER_IID;


  alias nsIDBChangeAnnouncer InnerType;

  this(nsIDBChangeAnnouncer intr){
    super(intr);
    this.inner = intr;
  }

  nsIDBChangeAnnouncer opCast() {
    return inner;
  }

  void opAssign(nsIDBChangeAnnouncer value) {
    inner = value;
  }

  /* void AddListener (in nsIDBChangeListener listener); */
  void AddListener(nsIDBChangeListenerD listener){
    nsresult __result = inner.AddListener(listener ? cast(nsIDBChangeListener)listener : null);
    CheckException(__result);
  }

  /* void RemoveListener (in nsIDBChangeListener listener); */
  void RemoveListener(nsIDBChangeListenerD listener){
    nsresult __result = inner.RemoveListener(listener ? cast(nsIDBChangeListener)listener : null);
    CheckException(__result);
  }

  /* void NotifyHdrChangeAll (in nsIMsgDBHdr aHdrChanged, in unsigned long aOldFlags, in unsigned long aNewFlags, in nsIDBChangeListener instigator); */
  void NotifyHdrChangeAll(nsIMsgDBHdrD aHdrChanged, PRUint32 aOldFlags, PRUint32 aNewFlags, nsIDBChangeListenerD instigator){
    nsresult __result = inner.NotifyHdrChangeAll(aHdrChanged ? cast(nsIMsgDBHdr)aHdrChanged : null, aOldFlags, aNewFlags, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void NotifyHdrAddedAll (in nsIMsgDBHdr aHdrAdded, in nsMsgKey parentKey, in long flags, in nsIDBChangeListener instigator); */
  void NotifyHdrAddedAll(nsIMsgDBHdrD aHdrAdded, nsMsgKey parentKey, PRInt32 flags, nsIDBChangeListenerD instigator){
    nsresult __result = inner.NotifyHdrAddedAll(aHdrAdded ? cast(nsIMsgDBHdr)aHdrAdded : null, parentKey, flags, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void NotifyHdrDeletedAll (in nsIMsgDBHdr aHdrDeleted, in nsMsgKey parentKey, in long flags, in nsIDBChangeListener instigator); */
  void NotifyHdrDeletedAll(nsIMsgDBHdrD aHdrDeleted, nsMsgKey parentKey, PRInt32 flags, nsIDBChangeListenerD instigator){
    nsresult __result = inner.NotifyHdrDeletedAll(aHdrDeleted ? cast(nsIMsgDBHdr)aHdrDeleted : null, parentKey, flags, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void NotifyParentChangedAll (in nsMsgKey keyReparented, in nsMsgKey oldParent, in nsMsgKey newParent, in nsIDBChangeListener instigator); */
  void NotifyParentChangedAll(nsMsgKey keyReparented, nsMsgKey oldParent, nsMsgKey newParent, nsIDBChangeListenerD instigator){
    nsresult __result = inner.NotifyParentChangedAll(keyReparented, oldParent, newParent, instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void NotifyReadChanged (in nsIDBChangeListener instigator); */
  void NotifyReadChanged(nsIDBChangeListenerD instigator){
    nsresult __result = inner.NotifyReadChanged(instigator ? cast(nsIDBChangeListener)instigator : null);
    CheckException(__result);
  }

  /* void NotifyJunkScoreChanged (in nsIDBChangeListener aInstigator); */
  void NotifyJunkScoreChanged(nsIDBChangeListenerD aInstigator){
    nsresult __result = inner.NotifyJunkScoreChanged(aInstigator ? cast(nsIDBChangeListener)aInstigator : null);
    CheckException(__result);
  }

  /* void NotifyAnnouncerGoingAway (); */
  void NotifyAnnouncerGoingAway(){
    nsresult __result = inner.NotifyAnnouncerGoingAway();
    CheckException(__result);
  }

private:
  nsIDBChangeAnnouncer inner;

}

