/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserFocus.idl
 */

module mozilla.dxpcom.nsIWebBrowserFocusD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebBrowserFocus;


public import mozilla.dxpcom.nsIWebBrowserFocusD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIWebBrowserFocus */
/**
 * nsIWebBrowserFocus
 * Interface that embedders use for controlling and interacting
 * with the browser focus management. The embedded browser can be focused by
 * clicking in it or tabbing into it. If the browser is currently focused and
 * the embedding application's top level window is disabled, deactivate() must
 * be called, and activate() called again when the top level window is
 * reactivated for the browser's focus memory to work correctly.
 *
 * @status FROZEN
 */
class nsIWebBrowserFocusD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSERFOCUS_IID;


  alias nsIWebBrowserFocus InnerType;

  this(nsIWebBrowserFocus intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowserFocus opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowserFocus value) {
    inner = value;
  }

  /**
   * MANDATORY
   * activate() is a mandatory call that must be made to the browser
   * when the embedding application's window is activated *and* the 
   * browser area was the last thing in focus.  This method can also be called
   * if the embedding application wishes to give the browser area focus,
   * without affecting the currently focused element within the browser.
   *
   * @note
   * If you fail to make this call, mozilla focus memory will not work
   * correctly.
   */
  /* void activate (); */
  void Activate(){
    nsresult __result = inner.Activate();
    CheckException(__result);
  }

  /**
   * MANDATORY
   * deactivate() is a mandatory call that must be made to the browser
   * when the embedding application's window is deactivated *and* the
   * browser area was the last thing in focus.  On non-windows platforms,
   * deactivate() should also be called when focus moves from the browser
   * to the embedding chrome.
   *
   * @note
   * If you fail to make this call, mozilla focus memory will not work
   * correctly.
   */
  /* void deactivate (); */
  void Deactivate(){
    nsresult __result = inner.Deactivate();
    CheckException(__result);
  }

  /**
   * Give the first element focus within mozilla
   * (i.e. TAB was pressed and focus should enter mozilla)
   */
  /* void setFocusAtFirstElement (); */
  void SetFocusAtFirstElement(){
    nsresult __result = inner.SetFocusAtFirstElement();
    CheckException(__result);
  }

  /**
   * Give the last element focus within mozilla
   * (i.e. SHIFT-TAB was pressed and focus should enter mozilla)
   */
  /* void setFocusAtLastElement (); */
  void SetFocusAtLastElement(){
    nsresult __result = inner.SetFocusAtLastElement();
    CheckException(__result);
  }

  /**
   * The currently focused nsDOMWindow when the browser is active,
   * or the last focused nsDOMWindow when the browser is inactive.
   */
  /* attribute nsIDOMWindow focusedWindow; */
  nsIDOMWindowD  FocusedWindow(){
    nsIDOMWindow value;
    nsresult __result = inner.GetFocusedWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }
  void FocusedWindow(nsIDOMWindowD  aFocusedWindow){
    nsIDOMWindow value;
    nsresult __result = inner.SetFocusedWindow(value);
    CheckException(__result);
  }

  /**
   * The currently focused nsDOMElement when the browser is active,
   * or the last focused nsDOMElement when the browser is inactive.
   */
  /* attribute nsIDOMElement focusedElement; */
  nsIDOMElementD  FocusedElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetFocusedElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }
  void FocusedElement(nsIDOMElementD  aFocusedElement){
    nsIDOMElement value;
    nsresult __result = inner.SetFocusedElement(value);
    CheckException(__result);
  }

private:
  nsIWebBrowserFocus inner;

}

