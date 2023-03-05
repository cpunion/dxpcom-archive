/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStatusBarBiffManager.idl
 */

module mozilla.xpcom.nsIStatusBarBiffManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.xpcom.nsIFolderListener;


/* starting interface:    nsIStatusBarBiffManager */
const char[] NS_ISTATUSBARBIFFMANAGER_IID_STR = "a767c5d1-5142-41a2-8873-71df09b4ce89";

const nsIID NS_ISTATUSBARBIFFMANAGER_IID= 
  {0xa767c5d1, 0x5142, 0x41a2, 
    [ 0x88, 0x73, 0x71, 0xdf, 0x09, 0xb4, 0xce, 0x89 ]};

extern(Windows)
interface nsIStatusBarBiffManager : nsIFolderListener {
  static const char[] IID_STR = NS_ISTATUSBARBIFFMANAGER_IID_STR;
  static const nsIID IID = NS_ISTATUSBARBIFFMANAGER_IID;

  /* readonly attribute nsMsgBiffState biffState; */
  nsresult GetBiffState(nsMsgBiffState *aBiffState);

}

