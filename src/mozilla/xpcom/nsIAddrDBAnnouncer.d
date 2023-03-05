/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddrDBAnnouncer.idl
 */

module mozilla.xpcom.nsIAddrDBAnnouncer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAbCard;

public import mozilla.xpcom.nsIAddrDBListener; /* forward declaration */


/* starting interface:    nsIAddrDBAnnouncer */
const char[] NS_IADDRDBANNOUNCER_IID_STR = "0d8fe8e3-ad48-4dbd-b0c2-a1d374e39b93";

const nsIID NS_IADDRDBANNOUNCER_IID= 
  {0x0d8fe8e3, 0xad48, 0x4dbd, 
    [ 0xb0, 0xc2, 0xa1, 0xd3, 0x74, 0xe3, 0x9b, 0x93 ]};

extern(Windows)
interface nsIAddrDBAnnouncer : nsISupports {
  static const char[] IID_STR = NS_IADDRDBANNOUNCER_IID_STR;
  static const nsIID IID = NS_IADDRDBANNOUNCER_IID;

  /* void addListener (in nsIAddrDBListener listener); */
  nsresult AddListener(nsIAddrDBListener listener);

  /* void removeListener (in nsIAddrDBListener listener); */
  nsresult RemoveListener(nsIAddrDBListener listener);

  /* void notifyCardAttribChange (in unsigned long abCode); */
  nsresult NotifyCardAttribChange(PRUint32 abCode);

  /* void notifyCardEntryChange (in unsigned long abCode, in nsIAbCard card); */
  nsresult NotifyCardEntryChange(PRUint32 abCode, nsIAbCard card);

  /* void notifyAnnouncerGoingAway (); */
  nsresult NotifyAnnouncerGoingAway();

}

