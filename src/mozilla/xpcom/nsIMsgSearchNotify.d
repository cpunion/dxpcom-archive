/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchNotify.idl
 */

module mozilla.xpcom.nsIMsgSearchNotify;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIMsgSearchSession; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */


/* starting interface:    nsIMsgSearchNotify */
const char[] NS_IMSGSEARCHNOTIFY_IID_STR = "ca37784d-352b-4c39-8ccb-0abc1a93f681";

const nsIID NS_IMSGSEARCHNOTIFY_IID= 
  {0xca37784d, 0x352b, 0x4c39, 
    [ 0x8c, 0xcb, 0x0a, 0xbc, 0x1a, 0x93, 0xf6, 0x81 ]};

extern(Windows)
interface nsIMsgSearchNotify : nsISupports {
  static const char[] IID_STR = NS_IMSGSEARCHNOTIFY_IID_STR;
  static const nsIID IID = NS_IMSGSEARCHNOTIFY_IID;

  /* void onSearchHit (in nsIMsgDBHdr header, in nsIMsgFolder folder); */
  nsresult OnSearchHit(nsIMsgDBHdr header, nsIMsgFolder folder);

  /* void onSearchDone (in nsresult status); */
  nsresult OnSearchDone(nsresult status);

  /* void onNewSearch (); */
  nsresult OnNewSearch();

}

