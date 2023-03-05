/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedTextConstruct.idl
 */

module mozilla.dxpcom.nsIFeedTextConstructD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedTextConstruct;


public import mozilla.dxpcom.nsIFeedTextConstructD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMDocumentFragment;

public import mozilla.dxpcom.nsIDOMDocumentFragmentD;


/* starting wrapper class:    nsIFeedTextConstruct */
/**
* nsIFeedTextConstructs represent feed text fields that can contain
* one of text, HTML, or XHTML. Some extension elements also have "type"
* parameters, and this interface could be used there as well.
*/
class nsIFeedTextConstructD : public nsISupportsD {

  static const nsIID IID = NS_IFEEDTEXTCONSTRUCT_IID;


  alias nsIFeedTextConstruct InnerType;

  this(nsIFeedTextConstruct intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedTextConstruct opCast() {
    return inner;
  }

  void opAssign(nsIFeedTextConstruct value) {
    inner = value;
  }

  /**
   * If the text construct contains (X)HTML, relative references in
   * the content should be resolved against this base URI.
   */
  /* attribute nsIURI base; */
  nsIURID  Base(){
    nsIURI value;
    nsresult __result = inner.GetBase(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Base(nsIURID  aBase){
    nsIURI value;
    nsresult __result = inner.SetBase(value);
    CheckException(__result);
  }

  /**
   * The language of the text. For example, "en-US" for US English.
   */
  /* attribute AString lang; */
  wchar[] Lang(){
    scope auto value = new AString();
    nsresult __result = inner.GetLang(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Lang(wchar[] aLang){
    scope auto value = new AString(aLang);
    nsresult __result = inner.SetLang(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * One of "text", "html", or "xhtml". If the type is (x)html, a '<'
   * character represents markup. To display that character, an escape
   * such as &lt; must be used. If the type is "text", the '<'
   * character represents the character itself, and such text should
   * not be embedded in markup without escaping it first.
   */
  /* attribute AString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The content of the text construct.
   */
  /* attribute AString text; */
  wchar[] Text(){
    scope auto value = new AString();
    nsresult __result = inner.GetText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Text(wchar[] aText){
    scope auto value = new AString(aText);
    nsresult __result = inner.SetText(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * Returns the text of the text construct, with all markup stripped 
   * and all entities decoded. If the type attribute's value is "text",
   * this function returns the value of the text attribute unchanged.
   */
  /* AString plainText (); */
  wchar[] PlainText(){
    scope auto _retval = new AString;
    nsresult __result = inner.PlainText(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Return an nsIDocumentFragment containing the text and markup.
   */
  /* nsIDOMDocumentFragment createDocumentFragment (in nsIDOMElement element); */
  nsIDOMDocumentFragmentD  CreateDocumentFragment(nsIDOMElementD element){
    nsIDOMDocumentFragment _retval;
    nsresult __result = inner.CreateDocumentFragment(element ? cast(nsIDOMElement)element : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentFragmentD(_retval);
  }

private:
  nsIFeedTextConstruct inner;

}

