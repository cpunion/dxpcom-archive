/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFElementFactory.idl
 */

module mozilla.xpcom.nsIXTFElementFactory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXTFElement; /* forward declaration */


/* starting interface:    nsIXTFElementFactory */
const char[] NS_IXTFELEMENTFACTORY_IID_STR = "27c10dca-2efc-416b-ae36-9794380a661e";

const nsIID NS_IXTFELEMENTFACTORY_IID= 
  {0x27c10dca, 0x2efc, 0x416b, 
    [ 0xae, 0x36, 0x97, 0x94, 0x38, 0x0a, 0x66, 0x1e ]};

extern(Windows)
interface nsIXTFElementFactory : nsISupports {
  static const char[] IID_STR = NS_IXTFELEMENTFACTORY_IID_STR;
  static const nsIID IID = NS_IXTFELEMENTFACTORY_IID;

  /* nsIXTFElement createElement (in AString tagName); */
  nsresult CreateElement(nsAString * tagName, nsIXTFElement *_retval);

}

