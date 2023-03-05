/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFPrivate.idl
 */

module mozilla.xpcom.nsIXTFPrivate;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIXTFPrivate */
const char[] NS_IXTFPRIVATE_IID_STR = "13ef3d54-1dd1-4a5c-a8d5-a04a327fb9b6";

const nsIID NS_IXTFPRIVATE_IID= 
  {0x13ef3d54, 0x1dd1, 0x4a5c, 
    [ 0xa8, 0xd5, 0xa0, 0x4a, 0x32, 0x7f, 0xb9, 0xb6 ]};

extern(Windows)
interface nsIXTFPrivate : nsISupports {
  static const char[] IID_STR = NS_IXTFPRIVATE_IID_STR;
  static const nsIID IID = NS_IXTFPRIVATE_IID;

  /* readonly attribute nsISupports inner; */
  nsresult GetInner(nsISupports  *aInner);

}

