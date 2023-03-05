/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIQABrowserChrome.idl
 */

module mozilla.dxpcom.nsIQABrowserChromeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIQABrowserChrome;


public import mozilla.dxpcom.nsIQABrowserChromeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIBaseWindow;
public import mozilla.dxpcom.nsIBaseWindowD;
public import mozilla.xpcom.nsIWeakReference;
public import mozilla.dxpcom.nsIWeakReferenceD;

public import mozilla.xpcom.nsIQABrowserUIGlue;

public import mozilla.dxpcom.nsIQABrowserUIGlueD;

public import mozilla.xpcom.nsIQABrowserView;

public import mozilla.dxpcom.nsIQABrowserViewD;


/* starting wrapper class:    nsIQABrowserChrome */
class nsIQABrowserChromeD : public nsISupportsD {

  static const nsIID IID = NS_IQABROWSERCHROME_IID;


  alias nsIQABrowserChrome InnerType;

  this(nsIQABrowserChrome intr){
    super(intr);
    this.inner = intr;
  }

  nsIQABrowserChrome opCast() {
    return inner;
  }

  void opAssign(nsIQABrowserChrome value) {
    inner = value;
  }

  /* void initQAChrome (in nsIQABrowserUIGlue uiGlue, in nativeWindow nativeWnd); */
  void InitQAChrome(nsIQABrowserUIGlueD uiGlue, nativeWindow nativeWnd){
    nsresult __result = inner.InitQAChrome(uiGlue ? cast(nsIQABrowserUIGlue)uiGlue : null, nativeWnd);
    CheckException(__result);
  }

private:
  nsIQABrowserChrome inner;

}

