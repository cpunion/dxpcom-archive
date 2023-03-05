/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBoxLayoutManager.idl
 */

module mozilla.xpcom.nsIBoxLayoutManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIBoxLayoutManager */
const char[] NS_IBOXLAYOUTMANAGER_IID_STR = "dc06b890-15a1-45a9-a1a3-f144b42eea29";

const nsIID NS_IBOXLAYOUTMANAGER_IID= 
  {0xdc06b890, 0x15a1, 0x45a9, 
    [ 0xa1, 0xa3, 0xf1, 0x44, 0xb4, 0x2e, 0xea, 0x29 ]};

extern(Windows)
interface nsIBoxLayoutManager : nsISupports {
  static const char[] IID_STR = NS_IBOXLAYOUTMANAGER_IID_STR;
  static const nsIID IID = NS_IBOXLAYOUTMANAGER_IID;

  /* void layout (); */
  nsresult Layout();

}

