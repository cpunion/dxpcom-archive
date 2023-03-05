/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURLFormatter.idl
 */

module mozilla.xpcom.nsIURLFormatter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIURLFormatter */
const char[] NS_IURLFORMATTER_IID_STR = "4ab31d30-372d-11db-a98b-0800200c9a66";

const nsIID NS_IURLFORMATTER_IID= 
  {0x4ab31d30, 0x372d, 0x11db, 
    [ 0xa9, 0x8b, 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66 ]};

extern(Windows)
interface nsIURLFormatter : nsISupports {
  static const char[] IID_STR = NS_IURLFORMATTER_IID_STR;
  static const nsIID IID = NS_IURLFORMATTER_IID;

  /** 
   * formatURL - Formats a string URL
   *
   * @param aFormat string 
   */
  /* AString formatURL (in AString aFormat); */
  nsresult FormatURL(nsAString * aFormat, nsAString * _retval);

  /** 
   * formatURLPref - Formats a string URL stored in a pref
   *
   * @param aFormat string 
   */
  /* AString formatURLPref (in AString aPref); */
  nsresult FormatURLPref(nsAString * aPref, nsAString * _retval);

}

