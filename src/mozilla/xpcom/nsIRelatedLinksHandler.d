/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRelatedLinksHandler.idl
 */

module mozilla.xpcom.nsIRelatedLinksHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIRelatedLinksHandler */
const char[] NS_IRELATEDLINKSHANDLER_IID_STR = "8bb4fb60-1cac-11d3-bdf9-000064657374";

const nsIID NS_IRELATEDLINKSHANDLER_IID= 
  {0x8bb4fb60, 0x1cac, 0x11d3, 
    [ 0xbd, 0xf9, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsIRelatedLinksHandler : nsISupports {
  static const char[] IID_STR = NS_IRELATEDLINKSHANDLER_IID_STR;
  static const nsIID IID = NS_IRELATEDLINKSHANDLER_IID;

  /* attribute string URL; */
  nsresult GetURL(char * *aURL);
  nsresult SetURL(char * aURL);

}

