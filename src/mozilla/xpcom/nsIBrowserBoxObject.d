/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserBoxObject.idl
 */

module mozilla.xpcom.nsIBrowserBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.xpcom.nsIDocShell; /* forward declaration */


/* starting interface:    nsIBrowserBoxObject */
const char[] NS_IBROWSERBOXOBJECT_IID_STR = "f2504c26-7cf5-426a-86a7-e50998ac57c1";

const nsIID NS_IBROWSERBOXOBJECT_IID= 
  {0xf2504c26, 0x7cf5, 0x426a, 
    [ 0x86, 0xa7, 0xe5, 0x09, 0x98, 0xac, 0x57, 0xc1 ]};

extern(Windows)
interface nsIBrowserBoxObject : nsISupports {
  static const char[] IID_STR = NS_IBROWSERBOXOBJECT_IID_STR;
  static const nsIID IID = NS_IBROWSERBOXOBJECT_IID;

  /* readonly attribute nsIDocShell docShell; */
  nsresult GetDocShell(nsIDocShell  *aDocShell);

}

