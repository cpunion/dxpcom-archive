/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleProvider.idl
 */

module mozilla.xpcom.nsIAccessibleProvider;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAccessible;


/* starting interface:    nsIAccessibleProvider */
const char[] NS_IACCESSIBLEPROVIDER_IID_STR = "3f0e3eb0-1dd2-11b2-9605-be5b8e76cf4b";

const nsIID NS_IACCESSIBLEPROVIDER_IID= 
  {0x3f0e3eb0, 0x1dd2, 0x11b2, 
    [ 0x96, 0x05, 0xbe, 0x5b, 0x8e, 0x76, 0xcf, 0x4b ]};

extern(Windows)
interface nsIAccessibleProvider : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLEPROVIDER_IID_STR;
  static const nsIID IID = NS_IACCESSIBLEPROVIDER_IID;

  /* readonly attribute nsIAccessible accessible; */
  nsresult GetAccessible(nsIAccessible  *aAccessible);

}

