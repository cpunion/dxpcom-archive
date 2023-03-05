/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorBoxObject.idl
 */

module mozilla.xpcom.nsIEditorBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.xpcom.nsIEditor; /* forward declaration */

public import mozilla.xpcom.nsIDocShell; /* forward declaration */


/* starting interface:    nsIEditorBoxObject */
const char[] NS_IEDITORBOXOBJECT_IID_STR = "14b3b669-3414-4548-aa03-edf257d889c8";

const nsIID NS_IEDITORBOXOBJECT_IID= 
  {0x14b3b669, 0x3414, 0x4548, 
    [ 0xaa, 0x03, 0xed, 0xf2, 0x57, 0xd8, 0x89, 0xc8 ]};

extern(Windows)
interface nsIEditorBoxObject : nsISupports {
  static const char[] IID_STR = NS_IEDITORBOXOBJECT_IID_STR;
  static const nsIID IID = NS_IEDITORBOXOBJECT_IID;

  /* readonly attribute nsIDocShell docShell; */
  nsresult GetDocShell(nsIDocShell  *aDocShell);

}

