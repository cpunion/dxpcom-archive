/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM xpcjsid.idl
 */

module mozilla.xpcom.xpcjsid;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIJSID */
const char[] NS_IJSID_IID_STR = "c86ae131-d101-11d2-9841-006008962422";

const nsIID NS_IJSID_IID= 
  {0xc86ae131, 0xd101, 0x11d2, 
    [ 0x98, 0x41, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

extern(Windows)
interface nsIJSID : nsISupports {
  static const char[] IID_STR = NS_IJSID_IID_STR;
  static const nsIID IID = NS_IJSID_IID;

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* readonly attribute string number; */
  nsresult GetNumber(char * *aNumber);

  /* [noscript] readonly attribute nsIDPtr id; */
  nsresult GetId(nsID * *aId);

  /* readonly attribute boolean valid; */
  nsresult GetValid(PRBool *aValid);

  /* boolean equals (in nsIJSID other); */
  nsresult Equals(nsIJSID other, PRBool *_retval);

  /* void initialize (in string idString); */
  nsresult Initialize(char *idString);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsIJSIID */
const char[] NS_IJSIID_IID_STR = "e08dcda0-d651-11d2-9843-006008962422";

const nsIID NS_IJSIID_IID= 
  {0xe08dcda0, 0xd651, 0x11d2, 
    [ 0x98, 0x43, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

extern(Windows)
interface nsIJSIID : nsIJSID {
  static const char[] IID_STR = NS_IJSIID_IID_STR;
  static const nsIID IID = NS_IJSIID_IID;

}


/* starting interface:    nsIJSCID */
const char[] NS_IJSCID_IID_STR = "e3a24a60-d651-11d2-9843-006008962422";

const nsIID NS_IJSCID_IID= 
  {0xe3a24a60, 0xd651, 0x11d2, 
    [ 0x98, 0x43, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

extern(Windows)
interface nsIJSCID : nsIJSID {
  static const char[] IID_STR = NS_IJSCID_IID_STR;
  static const nsIID IID = NS_IJSCID_IID;

  /* nsISupports createInstance (); */
  nsresult CreateInstance(nsISupports *_retval);

  /* nsISupports getService (); */
  nsresult GetService(nsISupports *_retval);

}

