/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserChromeFocus.idl
 */

module mozilla.dxpcom.nsIWebBrowserChromeFocusD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebBrowserChromeFocus;


public import mozilla.dxpcom.nsIWebBrowserChromeFocusD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIWebBrowserChromeFocus */
/**
 * The nsIWebBrowserChromeFocus is implemented by the same object as the
 * nsIEmbeddingSiteWindow. It represents the focus up-calls from mozilla
 * to the embedding chrome. See mozilla bug #70224 for gratuitous info.
 *
 * @status FROZEN
 */
class nsIWebBrowserChromeFocusD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSERCHROMEFOCUS_IID;


  alias nsIWebBrowserChromeFocus InnerType;

  this(nsIWebBrowserChromeFocus intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowserChromeFocus opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowserChromeFocus value) {
    inner = value;
  }

  /**
     * Set the focus at the next focusable element in the chrome.
     */
  /* void focusNextElement (); */
  void FocusNextElement(){
    nsresult __result = inner.FocusNextElement();
    CheckException(__result);
  }

  /**
     * Set the focus at the previous focusable element in the chrome.
     */
  /* void focusPrevElement (); */
  void FocusPrevElement(){
    nsresult __result = inner.FocusPrevElement();
    CheckException(__result);
  }

private:
  nsIWebBrowserChromeFocus inner;

}

