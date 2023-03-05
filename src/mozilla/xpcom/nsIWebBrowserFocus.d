/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserFocus.idl
 */

module mozilla.xpcom.nsIWebBrowserFocus;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIWebBrowserFocus */
const char[] NS_IWEBBROWSERFOCUS_IID_STR = "9c5d3c58-1dd1-11b2-a1c9-f3699284657a";

const nsIID NS_IWEBBROWSERFOCUS_IID= 
  {0x9c5d3c58, 0x1dd1, 0x11b2, 
    [ 0xa1, 0xc9, 0xf3, 0x69, 0x92, 0x84, 0x65, 0x7a ]};

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
extern(Windows)
interface nsIWebBrowserFocus : nsISupports {
  static const char[] IID_STR = NS_IWEBBROWSERFOCUS_IID_STR;
  static const nsIID IID = NS_IWEBBROWSERFOCUS_IID;

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
  nsresult Activate();

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
  nsresult Deactivate();

  /**
   * Give the first element focus within mozilla
   * (i.e. TAB was pressed and focus should enter mozilla)
   */
  /* void setFocusAtFirstElement (); */
  nsresult SetFocusAtFirstElement();

  /**
   * Give the last element focus within mozilla
   * (i.e. SHIFT-TAB was pressed and focus should enter mozilla)
   */
  /* void setFocusAtLastElement (); */
  nsresult SetFocusAtLastElement();

  /**
   * The currently focused nsDOMWindow when the browser is active,
   * or the last focused nsDOMWindow when the browser is inactive.
   */
  /* attribute nsIDOMWindow focusedWindow; */
  nsresult GetFocusedWindow(nsIDOMWindow  *aFocusedWindow);
  nsresult SetFocusedWindow(nsIDOMWindow  aFocusedWindow);

  /**
   * The currently focused nsDOMElement when the browser is active,
   * or the last focused nsDOMElement when the browser is inactive.
   */
  /* attribute nsIDOMElement focusedElement; */
  nsresult GetFocusedElement(nsIDOMElement  *aFocusedElement);
  nsresult SetFocusedElement(nsIDOMElement  aFocusedElement);

}

