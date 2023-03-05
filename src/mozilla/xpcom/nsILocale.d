/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocale.idl
 */

module mozilla.xpcom.nsILocale;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsILocale */
const char[] NS_ILOCALE_IID_STR = "21035ee0-4556-11d3-91cd-00105aa3f7dc";

const nsIID NS_ILOCALE_IID= 
  {0x21035ee0, 0x4556, 0x11d3, 
    [ 0x91, 0xcd, 0x00, 0x10, 0x5a, 0xa3, 0xf7, 0xdc ]};

extern(Windows)
interface nsILocale : nsISupports {
  static const char[] IID_STR = NS_ILOCALE_IID_STR;
  static const nsIID IID = NS_ILOCALE_IID;

  /* AString getCategory (in AString category); */
  nsresult GetCategory(nsAString * category, nsAString * _retval);

}

