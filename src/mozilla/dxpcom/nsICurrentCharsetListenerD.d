/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICurrentCharsetListener.idl
 */

module mozilla.dxpcom.nsICurrentCharsetListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICurrentCharsetListener;


public import mozilla.dxpcom.nsICurrentCharsetListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICurrentCharsetListener */
class nsICurrentCharsetListenerD : public nsISupportsD {

  static const nsIID IID = NS_ICURRENTCHARSETLISTENER_IID;


  alias nsICurrentCharsetListener InnerType;

  this(nsICurrentCharsetListener intr){
    super(intr);
    this.inner = intr;
  }

  nsICurrentCharsetListener opCast() {
    return inner;
  }

  void opAssign(nsICurrentCharsetListener value) {
    inner = value;
  }

  /* void SetCurrentCharset (in wstring charset); */
  void SetCurrentCharset(PRUnichar*charset){
    nsresult __result = inner.SetCurrentCharset(charset);
    CheckException(__result);
  }

  /* void SetCurrentMailCharset (in wstring charset); */
  void SetCurrentMailCharset(PRUnichar*charset){
    nsresult __result = inner.SetCurrentMailCharset(charset);
    CheckException(__result);
  }

  /* void SetCurrentComposerCharset (in wstring charset); */
  void SetCurrentComposerCharset(PRUnichar*charset){
    nsresult __result = inner.SetCurrentComposerCharset(charset);
    CheckException(__result);
  }

private:
  nsICurrentCharsetListener inner;

}

