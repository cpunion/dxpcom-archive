/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowMediatorListener.idl
 */

module mozilla.dxpcom.nsIWindowMediatorListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWindowMediatorListener;


public import mozilla.dxpcom.nsIWindowMediatorListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXULWindow;

public import mozilla.dxpcom.nsIXULWindowD;


/* starting wrapper class:    nsIWindowMediatorListener */
class nsIWindowMediatorListenerD : public nsISupportsD {

  static const nsIID IID = NS_IWINDOWMEDIATORLISTENER_IID;


  alias nsIWindowMediatorListener InnerType;

  this(nsIWindowMediatorListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIWindowMediatorListener opCast() {
    return inner;
  }

  void opAssign(nsIWindowMediatorListener value) {
    inner = value;
  }

  /* void onWindowTitleChange (in nsIXULWindow window, in wstring newTitle); */
  void OnWindowTitleChange(nsIXULWindowD window, PRUnichar*newTitle){
    nsresult __result = inner.OnWindowTitleChange(window ? cast(nsIXULWindow)window : null, newTitle);
    CheckException(__result);
  }

  /* void onOpenWindow (in nsIXULWindow window); */
  void OnOpenWindow(nsIXULWindowD window){
    nsresult __result = inner.OnOpenWindow(window ? cast(nsIXULWindow)window : null);
    CheckException(__result);
  }

  /* void onCloseWindow (in nsIXULWindow window); */
  void OnCloseWindow(nsIXULWindowD window){
    nsresult __result = inner.OnCloseWindow(window ? cast(nsIXULWindow)window : null);
    CheckException(__result);
  }

private:
  nsIWindowMediatorListener inner;

}

