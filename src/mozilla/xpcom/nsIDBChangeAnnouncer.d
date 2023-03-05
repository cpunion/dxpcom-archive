/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDBChangeAnnouncer.idl
 */

module mozilla.xpcom.nsIDBChangeAnnouncer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIDBChangeListener; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsIDBChangeAnnouncer */
const char[] NS_IDBCHANGEANNOUNCER_IID_STR = "22baf00b-939d-42c3-ac51-21d99dfa1f05";

const nsIID NS_IDBCHANGEANNOUNCER_IID= 
  {0x22baf00b, 0x939d, 0x42c3, 
    [ 0xac, 0x51, 0x21, 0xd9, 0x9d, 0xfa, 0x1f, 0x05 ]};

extern(Windows)
interface nsIDBChangeAnnouncer : nsISupports {
  static const char[] IID_STR = NS_IDBCHANGEANNOUNCER_IID_STR;
  static const nsIID IID = NS_IDBCHANGEANNOUNCER_IID;

  /* void AddListener (in nsIDBChangeListener listener); */
  nsresult AddListener(nsIDBChangeListener listener);

  /* void RemoveListener (in nsIDBChangeListener listener); */
  nsresult RemoveListener(nsIDBChangeListener listener);

  /* void NotifyHdrChangeAll (in nsIMsgDBHdr aHdrChanged, in unsigned long aOldFlags, in unsigned long aNewFlags, in nsIDBChangeListener instigator); */
  nsresult NotifyHdrChangeAll(nsIMsgDBHdr aHdrChanged, PRUint32 aOldFlags, PRUint32 aNewFlags, nsIDBChangeListener instigator);

  /* void NotifyHdrAddedAll (in nsIMsgDBHdr aHdrAdded, in nsMsgKey parentKey, in long flags, in nsIDBChangeListener instigator); */
  nsresult NotifyHdrAddedAll(nsIMsgDBHdr aHdrAdded, nsMsgKey parentKey, PRInt32 flags, nsIDBChangeListener instigator);

  /* void NotifyHdrDeletedAll (in nsIMsgDBHdr aHdrDeleted, in nsMsgKey parentKey, in long flags, in nsIDBChangeListener instigator); */
  nsresult NotifyHdrDeletedAll(nsIMsgDBHdr aHdrDeleted, nsMsgKey parentKey, PRInt32 flags, nsIDBChangeListener instigator);

  /* void NotifyParentChangedAll (in nsMsgKey keyReparented, in nsMsgKey oldParent, in nsMsgKey newParent, in nsIDBChangeListener instigator); */
  nsresult NotifyParentChangedAll(nsMsgKey keyReparented, nsMsgKey oldParent, nsMsgKey newParent, nsIDBChangeListener instigator);

  /* void NotifyReadChanged (in nsIDBChangeListener instigator); */
  nsresult NotifyReadChanged(nsIDBChangeListener instigator);

  /* void NotifyJunkScoreChanged (in nsIDBChangeListener aInstigator); */
  nsresult NotifyJunkScoreChanged(nsIDBChangeListener aInstigator);

  /* void NotifyAnnouncerGoingAway (); */
  nsresult NotifyAnnouncerGoingAway();

}

