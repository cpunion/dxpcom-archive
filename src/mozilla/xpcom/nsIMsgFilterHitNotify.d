/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilterHitNotify.idl
 */

module mozilla.xpcom.nsIMsgFilterHitNotify;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgFilter;
public import mozilla.xpcom.nsMsgFilterCore;
public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsIMsgFilterHitNotify */
const char[] NS_IMSGFILTERHITNOTIFY_IID_STR = "c9f15174-1f3f-11d3-a51b-0060b0fc04b7";

const nsIID NS_IMSGFILTERHITNOTIFY_IID= 
  {0xc9f15174, 0x1f3f, 0x11d3, 
    [ 0xa5, 0x1b, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgFilterHitNotify : nsISupports {
  static const char[] IID_STR = NS_IMSGFILTERHITNOTIFY_IID_STR;
  static const nsIID IID = NS_IMSGFILTERHITNOTIFY_IID;

  /* boolean applyFilterHit (in nsIMsgFilter filter, in nsIMsgWindow msgWindow); */
  nsresult ApplyFilterHit(nsIMsgFilter filter, nsIMsgWindow msgWindow, PRBool *_retval);

}

