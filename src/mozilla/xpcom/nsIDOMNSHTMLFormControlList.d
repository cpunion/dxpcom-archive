/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLFormControlList.idl
 */

module mozilla.xpcom.nsIDOMNSHTMLFormControlList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDOMNSHTMLFormControlList */
const char[] NS_IDOMNSHTMLFORMCONTROLLIST_IID_STR = "a6cf911a-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMNSHTMLFORMCONTROLLIST_IID= 
  {0xa6cf911a, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMNSHTMLFormControlList : nsISupports {
  static const char[] IID_STR = NS_IDOMNSHTMLFORMCONTROLLIST_IID_STR;
  static const nsIID IID = NS_IDOMNSHTMLFORMCONTROLLIST_IID;

  /* nsISupports namedItem (in DOMString name); */
  nsresult NamedItem(nsAString * name, nsISupports *_retval);

}

