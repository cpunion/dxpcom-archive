/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowCreator.idl
 */

module mozilla.dxpcom.nsIWindowCreatorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWindowCreator;


public import mozilla.dxpcom.nsIWindowCreatorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIWebBrowserChrome;

public import mozilla.dxpcom.nsIWebBrowserChromeD;


/* starting wrapper class:    nsIWindowCreator */
class nsIWindowCreatorD : public nsISupportsD {

  static const nsIID IID = NS_IWINDOWCREATOR_IID;


  alias nsIWindowCreator InnerType;

  this(nsIWindowCreator intr){
    super(intr);
    this.inner = intr;
  }

  nsIWindowCreator opCast() {
    return inner;
  }

  void opAssign(nsIWindowCreator value) {
    inner = value;
  }

  /** Create a new window. Gecko will/may call this method, if made
      available to it, to create new windows.
      @param parent parent window, if any. null if not. the newly created
                    window should be made a child/dependent window of
                    the parent, if any (and if the concept applies
                    to the underlying OS).
      @param chromeFlags chrome features from nsIWebBrowserChrome
      @return the new window
  */
  /* nsIWebBrowserChrome createChromeWindow (in nsIWebBrowserChrome parent, in PRUint32 chromeFlags); */
  nsIWebBrowserChromeD  CreateChromeWindow(nsIWebBrowserChromeD parent, PRUint32 chromeFlags){
    nsIWebBrowserChrome _retval;
    nsresult __result = inner.CreateChromeWindow(parent ? cast(nsIWebBrowserChrome)parent : null, chromeFlags, &_retval);
    CheckException(__result);
    return new nsIWebBrowserChromeD(_retval);
  }

private:
  nsIWindowCreator inner;

}

