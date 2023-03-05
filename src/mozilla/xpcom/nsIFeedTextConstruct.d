/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedTextConstruct.idl
 */

module mozilla.xpcom.nsIFeedTextConstruct;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */


/* starting interface:    nsIFeedTextConstruct */
const char[] NS_IFEEDTEXTCONSTRUCT_IID_STR = "fc97a2a9-d649-4494-931e-db81a156c873";

const nsIID NS_IFEEDTEXTCONSTRUCT_IID= 
  {0xfc97a2a9, 0xd649, 0x4494, 
    [ 0x93, 0x1e, 0xdb, 0x81, 0xa1, 0x56, 0xc8, 0x73 ]};

/**
* nsIFeedTextConstructs represent feed text fields that can contain
* one of text, HTML, or XHTML. Some extension elements also have "type"
* parameters, and this interface could be used there as well.
*/
extern(Windows)
interface nsIFeedTextConstruct : nsISupports {
  static const char[] IID_STR = NS_IFEEDTEXTCONSTRUCT_IID_STR;
  static const nsIID IID = NS_IFEEDTEXTCONSTRUCT_IID;

  /**
   * If the text construct contains (X)HTML, relative references in
   * the content should be resolved against this base URI.
   */
  /* attribute nsIURI base; */
  nsresult GetBase(nsIURI  *aBase);
  nsresult SetBase(nsIURI  aBase);

  /**
   * The language of the text. For example, "en-US" for US English.
   */
  /* attribute AString lang; */
  nsresult GetLang(nsAString * aLang);
  nsresult SetLang(nsAString * aLang);

  /**
   * One of "text", "html", or "xhtml". If the type is (x)html, a '<'
   * character represents markup. To display that character, an escape
   * such as &lt; must be used. If the type is "text", the '<'
   * character represents the character itself, and such text should
   * not be embedded in markup without escaping it first.
   */
  /* attribute AString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /**
   * The content of the text construct.
   */
  /* attribute AString text; */
  nsresult GetText(nsAString * aText);
  nsresult SetText(nsAString * aText);

  /**
   * Returns the text of the text construct, with all markup stripped 
   * and all entities decoded. If the type attribute's value is "text",
   * this function returns the value of the text attribute unchanged.
   */
  /* AString plainText (); */
  nsresult PlainText(nsAString * _retval);

  /**
   * Return an nsIDocumentFragment containing the text and markup.
   */
  /* nsIDOMDocumentFragment createDocumentFragment (in nsIDOMElement element); */
  nsresult CreateDocumentFragment(nsIDOMElement element, nsIDOMDocumentFragment *_retval);

}

