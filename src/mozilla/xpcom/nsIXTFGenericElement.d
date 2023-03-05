/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFGenericElement.idl
 */

module mozilla.xpcom.nsIXTFGenericElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIXTFElement;

public import mozilla.xpcom.nsIXTFGenericElementWrapper; /* forward declaration */


/* starting interface:    nsIXTFGenericElement */
const char[] NS_IXTFGENERICELEMENT_IID_STR = "e339eb1d-3ea8-4c85-87ce-644eb7a19034";

const nsIID NS_IXTFGENERICELEMENT_IID= 
  {0xe339eb1d, 0x3ea8, 0x4c85, 
    [ 0x87, 0xce, 0x64, 0x4e, 0xb7, 0xa1, 0x90, 0x34 ]};

extern(Windows)
interface nsIXTFGenericElement : nsIXTFElement {
  static const char[] IID_STR = NS_IXTFGENERICELEMENT_IID_STR;
  static const nsIID IID = NS_IXTFGENERICELEMENT_IID;

  /* void onCreated (in nsIXTFGenericElementWrapper wrapper); */
  nsresult OnCreated(nsIXTFGenericElementWrapper wrapper);

}

