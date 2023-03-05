/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddbookUrl.idl
 */

module mozilla.xpcom.nsIAddbookUrl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIURI;


/* starting interface:    nsIAddbookUrlOperation */
const char[] NS_IADDBOOKURLOPERATION_IID_STR = "6eb9d874-01aa-11d4-8fbe-000064657374";

const nsIID NS_IADDBOOKURLOPERATION_IID= 
  {0x6eb9d874, 0x01aa, 0x11d4, 
    [ 0x8f, 0xbe, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsIAddbookUrlOperation {
  static const char[] IID_STR = NS_IADDBOOKURLOPERATION_IID_STR;
  static const nsIID IID = NS_IADDBOOKURLOPERATION_IID;

  enum { InvalidUrl = 0 };

  enum { PrintAddressBook = 1 };

  enum { AddVCard = 2 };

}


/* starting interface:    nsIAddbookUrl */
const char[] NS_IADDBOOKURL_IID_STR = "ee1d5cc3-5f8c-43f3-b1b8-8d2ea67ce2d8";

const nsIID NS_IADDBOOKURL_IID= 
  {0xee1d5cc3, 0x5f8c, 0x43f3, 
    [ 0xb1, 0xb8, 0x8d, 0x2e, 0xa6, 0x7c, 0xe2, 0xd8 ]};

extern(Windows)
interface nsIAddbookUrl : nsIURI {
  static const char[] IID_STR = NS_IADDBOOKURL_IID_STR;
  static const nsIID IID = NS_IADDBOOKURL_IID;

  /* readonly attribute long addbookOperation; */
  nsresult GetAddbookOperation(PRInt32 *aAddbookOperation);

}

