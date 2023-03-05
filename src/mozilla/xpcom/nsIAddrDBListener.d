/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddrDBListener.idl
 */

module mozilla.xpcom.nsIAddrDBListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.xpcom.nsIAbDirectory;

public import mozilla.xpcom.nsIAddrDBAnnouncer; /* forward declaration */


/* starting interface:    nsIAddrDBListener */
const char[] NS_IADDRDBLISTENER_IID_STR = "96876e1d-50a8-4264-8cd0-953d75d0e81b";

const nsIID NS_IADDRDBLISTENER_IID= 
  {0x96876e1d, 0x50a8, 0x4264, 
    [ 0x8c, 0xd0, 0x95, 0x3d, 0x75, 0xd0, 0xe8, 0x1b ]};

extern(Windows)
interface nsIAddrDBListener : nsISupports {
  static const char[] IID_STR = NS_IADDRDBLISTENER_IID_STR;
  static const nsIID IID = NS_IADDRDBLISTENER_IID;

  /* void onCardAttribChange (in unsigned long abCode); */
  nsresult OnCardAttribChange(PRUint32 abCode);

  /* void onCardEntryChange (in unsigned long abCode, in nsIAbCard card); */
  nsresult OnCardEntryChange(PRUint32 abCode, nsIAbCard card);

  /* void onListEntryChange (in unsigned long abCode, in nsIAbDirectory list); */
  nsresult OnListEntryChange(PRUint32 abCode, nsIAbDirectory list);

  /* void onAnnouncerGoingAway (); */
  nsresult OnAnnouncerGoingAway();

}

