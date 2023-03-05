/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableUnescapeHTML.idl
 */

module mozilla.xpcom.nsIScriptableUnescapeHTML;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIScriptableUnescapeHTML */
const char[] NS_ISCRIPTABLEUNESCAPEHTML_IID_STR = "3ab244a9-f09d-44da-9e3f-ee4d67367f2d";

const nsIID NS_ISCRIPTABLEUNESCAPEHTML_IID= 
  {0x3ab244a9, 0xf09d, 0x44da, 
    [ 0x9e, 0x3f, 0xee, 0x4d, 0x67, 0x36, 0x7f, 0x2d ]};

/**
 * A utility class that unescapes HTML strings.
 */
extern(Windows)
interface nsIScriptableUnescapeHTML : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEUNESCAPEHTML_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEUNESCAPEHTML_IID;

  /** 
   * Converts all entities to Unicode.
   *
   * @param src The HTML string to escape.
   */
  /* AString unescape (in AString src); */
  nsresult Unescape(nsAString * src, nsAString * _retval);

  /**
   * Appends the text to the element.
   */
  /* nsIDOMDocumentFragment parseFragment (in AString fragment, in PRBool isXML, in nsIURI baseURI, in nsIDOMElement element); */
  nsresult ParseFragment(nsAString * fragment, PRBool isXML, nsIURI baseURI, nsIDOMElement element, nsIDOMDocumentFragment *_retval);

}

