/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbBase.idl
 */

module mozilla.xpcom.nsIAbBase;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsICollection;


/* starting interface:    nsIAbBase */
const char[] NS_IABBASE_IID_STR = "013dd009-f73b-11d2-a2da-001083003d0c";

const nsIID NS_IABBASE_IID= 
  {0x013dd009, 0xf73b, 0x11d2, 
    [ 0xa2, 0xda, 0x00, 0x10, 0x83, 0x00, 0x3d, 0x0c ]};

extern(Windows)
interface nsIAbBase : nsICollection {
  static const char[] IID_STR = NS_IABBASE_IID_STR;
  static const nsIID IID = NS_IABBASE_IID;

  /* readonly attribute string URI; */
  nsresult GetURI(char * *aURI);

  /* attribute string name; */
  nsresult GetName(char * *aName);
  nsresult SetName(char * aName);

  /* nsISupports GetChildNamed (in string name); */
  nsresult GetChildNamed(char *name, nsISupports *_retval);

  /* attribute nsIAbBase parent; */
  nsresult GetParent(nsIAbBase  *aParent);
  nsresult SetParent(nsIAbBase  aParent);

  /* nsISimpleEnumerator GetChildNodes (); */
  nsresult GetChildNodes(nsISimpleEnumerator *_retval);

}

