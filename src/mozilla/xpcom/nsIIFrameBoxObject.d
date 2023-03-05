/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIFrameBoxObject.idl
 */

module mozilla.xpcom.nsIIFrameBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.xpcom.nsIDocShell; /* forward declaration */


/* starting interface:    nsIIFrameBoxObject */
const char[] NS_IIFRAMEBOXOBJECT_IID_STR = "dd9ab9be-fed3-4bff-a72d-5390d52dd887";

const nsIID NS_IIFRAMEBOXOBJECT_IID= 
  {0xdd9ab9be, 0xfed3, 0x4bff, 
    [ 0xa7, 0x2d, 0x53, 0x90, 0xd5, 0x2d, 0xd8, 0x87 ]};

extern(Windows)
interface nsIIFrameBoxObject : nsISupports {
  static const char[] IID_STR = NS_IIFRAMEBOXOBJECT_IID_STR;
  static const nsIID IID = NS_IIFRAMEBOXOBJECT_IID;

  /* readonly attribute nsIDocShell docShell; */
  nsresult GetDocShell(nsIDocShell  *aDocShell);

}

