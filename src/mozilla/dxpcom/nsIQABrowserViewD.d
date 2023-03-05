/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIQABrowserView.idl
 */

module mozilla.dxpcom.nsIQABrowserViewD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIQABrowserView;


public import mozilla.dxpcom.nsIQABrowserViewD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIBaseWindow;
public import mozilla.dxpcom.nsIBaseWindowD;

public import mozilla.xpcom.nsIWebBrowser;

public import mozilla.dxpcom.nsIWebBrowserD;

public import mozilla.xpcom.nsIWebBrowserChrome;

public import mozilla.dxpcom.nsIWebBrowserChromeD;


/* starting wrapper class:    nsIQABrowserView */
class nsIQABrowserViewD : public nsISupportsD {

  static const nsIID IID = NS_IQABROWSERVIEW_IID;


  alias nsIQABrowserView InnerType;

  this(nsIQABrowserView intr){
    super(intr);
    this.inner = intr;
  }

  nsIQABrowserView opCast() {
    return inner;
  }

  void opAssign(nsIQABrowserView value) {
    inner = value;
  }

  /* void CreateBrowser (in nativeWindow aNativeWnd, in nsIWebBrowserChrome aChrome); */
  void CreateBrowser(nativeWindow aNativeWnd, nsIWebBrowserChromeD aChrome){
    nsresult __result = inner.CreateBrowser(aNativeWnd, aChrome ? cast(nsIWebBrowserChrome)aChrome : null);
    CheckException(__result);
  }

  /* void DestroyBrowser (); */
  void DestroyBrowser(){
    nsresult __result = inner.DestroyBrowser();
    CheckException(__result);
  }

  /* readonly attribute nsIWebBrowser WebBrowser; */
  nsIWebBrowserD  WebBrowser(){
    nsIWebBrowser value;
    nsresult __result = inner.GetWebBrowser(&value);
    CheckException(__result);
    return new nsIWebBrowserD(value);
  }

private:
  nsIQABrowserView inner;

}

