/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIJSSubScriptLoader.idl
 */

module mozilla.dxpcom.mozIJSSubScriptLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozIJSSubScriptLoader;


public import mozilla.dxpcom.mozIJSSubScriptLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozIJSSubScriptLoader */
class mozIJSSubScriptLoaderD : public nsISupportsD {

  static const nsIID IID = MOZIJSSUBSCRIPTLOADER_IID;


  alias mozIJSSubScriptLoader InnerType;

  this(mozIJSSubScriptLoader intr){
    super(intr);
    this.inner = intr;
  }

  mozIJSSubScriptLoader opCast() {
    return inner;
  }

  void opAssign(mozIJSSubScriptLoader value) {
    inner = value;
  }

  /**
     * This method should only be called from JS!
     * In JS, the signature looks like:
     * rv loadSubScript (url [, obj]);
     * @param url the url if the sub-script, it MUST be either a file:,
     *            resource:, or chrome: url, and MUST be local.
     * @param obj an optional object to evaluate the script onto, it
     *            defaults to the global object of the caller.
     * @retval rv the value returned by the sub-script
     */
  /* void loadSubScript (in wstring url); */
  void LoadSubScript(PRUnichar*url){
    nsresult __result = inner.LoadSubScript(url);
    CheckException(__result);
  }

private:
  mozIJSSubScriptLoader inner;

}

