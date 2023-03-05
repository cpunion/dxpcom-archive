/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDBChangeListener.idl
 */

module mozilla.xpcom.nsIDBChangeListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIDBChangeAnnouncer; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsIDBChangeListener */
const char[] NS_IDBCHANGELISTENER_IID_STR = "1d409e71-3b4e-4611-9759-6335c7362f5c";

const nsIID NS_IDBCHANGELISTENER_IID= 
  {0x1d409e71, 0x3b4e, 0x4611, 
    [ 0x97, 0x59, 0x63, 0x35, 0xc7, 0x36, 0x2f, 0x5c ]};

extern(Windows)
interface nsIDBChangeListener : nsISupports {
  static const char[] IID_STR = NS_IDBCHANGELISTENER_IID_STR;
  static const nsIID IID = NS_IDBCHANGELISTENER_IID;

  /* void onHdrChange (in nsIMsgDBHdr aHdrChanged, in unsigned long aOldFlags, in unsigned long aNewFlags, in nsIDBChangeListener aInstigator); */
  nsresult OnHdrChange(nsIMsgDBHdr aHdrChanged, PRUint32 aOldFlags, PRUint32 aNewFlags, nsIDBChangeListener aInstigator);

  /* void onHdrDeleted (in nsIMsgDBHdr aHdrChanged, in nsMsgKey aParentKey, in long aFlags, in nsIDBChangeListener aInstigator); */
  nsresult OnHdrDeleted(nsIMsgDBHdr aHdrChanged, nsMsgKey aParentKey, PRInt32 aFlags, nsIDBChangeListener aInstigator);

  /* void onHdrAdded (in nsIMsgDBHdr aHdrChanged, in nsMsgKey aParentKey, in long aFlags, in nsIDBChangeListener aInstigator); */
  nsresult OnHdrAdded(nsIMsgDBHdr aHdrChanged, nsMsgKey aParentKey, PRInt32 aFlags, nsIDBChangeListener aInstigator);

  /* void onParentChanged (in nsMsgKey aKeyChanged, in nsMsgKey oldParent, in nsMsgKey newParent, in nsIDBChangeListener aInstigator); */
  nsresult OnParentChanged(nsMsgKey aKeyChanged, nsMsgKey oldParent, nsMsgKey newParent, nsIDBChangeListener aInstigator);

  /* void onAnnouncerGoingAway (in nsIDBChangeAnnouncer instigator); */
  nsresult OnAnnouncerGoingAway(nsIDBChangeAnnouncer instigator);

  /* void onReadChanged (in nsIDBChangeListener aInstigator); */
  nsresult OnReadChanged(nsIDBChangeListener aInstigator);

  /* void onJunkScoreChanged (in nsIDBChangeListener aInstigator); */
  nsresult OnJunkScoreChanged(nsIDBChangeListener aInstigator);

}

