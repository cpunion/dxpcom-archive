/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableUnescapeHTML.idl
 */

module mozilla.dxpcom.nsIScriptableUnescapeHTMLD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptableUnescapeHTML;


public import mozilla.dxpcom.nsIScriptableUnescapeHTMLD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMDocumentFragment;

public import mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIScriptableUnescapeHTML */
/**
 * A utility class that unescapes HTML strings.
 */
class nsIScriptableUnescapeHTMLD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEUNESCAPEHTML_IID;


  alias nsIScriptableUnescapeHTML InnerType;

  this(nsIScriptableUnescapeHTML intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableUnescapeHTML opCast() {
    return inner;
  }

  void opAssign(nsIScriptableUnescapeHTML value) {
    inner = value;
  }

  /** 
   * Converts all entities to Unicode.
   *
   * @param src The HTML string to escape.
   */
  /* AString unescape (in AString src); */
  wchar[] Unescape(wchar[] src){
    scope auto _src = new AString(src);
    scope auto _retval = new AString;
    nsresult __result = inner.Unescape(cast(nsAString*)_src, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Appends the text to the element.
   */
  /* nsIDOMDocumentFragment parseFragment (in AString fragment, in PRBool isXML, in nsIURI baseURI, in nsIDOMElement element); */
  nsIDOMDocumentFragmentD  ParseFragment(wchar[] fragment, PRBool isXML, nsIURID baseURI, nsIDOMElementD element){
    scope auto _fragment = new AString(fragment);
    nsIDOMDocumentFragment _retval;
    nsresult __result = inner.ParseFragment(cast(nsAString*)_fragment, isXML, baseURI ? cast(nsIURI)baseURI : null, element ? cast(nsIDOMElement)element : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentFragmentD(_retval);
  }

private:
  nsIScriptableUnescapeHTML inner;

}

