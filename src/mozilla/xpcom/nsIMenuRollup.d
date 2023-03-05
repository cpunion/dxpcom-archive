/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMenuRollup.idl
 */

module mozilla.xpcom.nsIMenuRollup;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;


/* starting interface:    nsIMenuRollup */
const char[] NS_IMENUROLLUP_IID_STR = "05c48880-0fcf-11d4-bb6f-d9f289fe803c";

const nsIID NS_IMENUROLLUP_IID= 
  {0x05c48880, 0x0fcf, 0x11d4, 
    [ 0xbb, 0x6f, 0xd9, 0xf2, 0x89, 0xfe, 0x80, 0x3c ]};

extern(Windows)
interface nsIMenuRollup : nsISupports {
  static const char[] IID_STR = NS_IMENUROLLUP_IID_STR;
  static const nsIID IID = NS_IMENUROLLUP_IID;

  /* nsISupportsArray GetSubmenuWidgetChain (); */
  nsresult GetSubmenuWidgetChain(nsISupportsArray *_retval);

}

