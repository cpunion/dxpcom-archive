/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITXTToHTMLConv.idl
 */

module mozilla.dxpcom.nsITXTToHTMLConvD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITXTToHTMLConv;


public import mozilla.dxpcom.nsITXTToHTMLConvD;

public import mozilla.xpcom.nsIStreamConverter;
public import mozilla.dxpcom.nsIStreamConverterD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsITXTToHTMLConv */
class nsITXTToHTMLConvD : public nsIStreamConverterD {

  static const nsIID IID = NS_ITXTTOHTMLCONV_IID;


  alias nsITXTToHTMLConv InnerType;

  this(nsITXTToHTMLConv intr){
    super(intr);
    this.inner = intr;
  }

  nsITXTToHTMLConv opCast() {
    return inner;
  }

  void opAssign(nsITXTToHTMLConv value) {
    inner = value;
  }

  /**
   * @param text: Title to set for the HTML document.  Only applicable if
   *              preFormatHTML(true) is called.
   * @result      The given title will be used to form an HTML document
   *              from the plain text document.
   */
  /* void setTitle (in wstring text); */
  void SetTitle(PRUnichar*text){
    nsresult __result = inner.SetTitle(text);
    CheckException(__result);
  }

  /**
   * @param value: true to use an HTML header and footer on the document,
   *               false to omit it.
   * @result       The document will use a header and footer if value is
   *               true.
   */
  /* void preFormatHTML (in boolean value); */
  void PreFormatHTML(PRBool value){
    nsresult __result = inner.PreFormatHTML(value);
    CheckException(__result);
  }

private:
  nsITXTToHTMLConv inner;

}

