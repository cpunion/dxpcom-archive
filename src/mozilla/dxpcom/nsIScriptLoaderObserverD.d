/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptLoaderObserver.idl
 */

module mozilla.dxpcom.nsIScriptLoaderObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptLoaderObserver;


public import mozilla.dxpcom.nsIScriptLoaderObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIScriptLoaderObserver */
class nsIScriptLoaderObserverD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTLOADEROBSERVER_IID;


  alias nsIScriptLoaderObserver InnerType;

  this(nsIScriptLoaderObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptLoaderObserver opCast() {
    return inner;
  }

  void opAssign(nsIScriptLoaderObserver value) {
    inner = value;
  }

  /**
   * The script is available for evaluation. For inline scripts, this
   * method will be called synchronously. For externally loaded scripts,
   * this method will be called when the load completes.
   *
   * @param aResult A result code representing the result of loading
   *        a script. If this is a failure code, script evaluation
   *        will not occur.
   * @param aElement The element being processed.
   * @param aIsInline Is this an inline script or externally loaded?
   * @param aWasPending Did script processing have to be delayed,
   *                    either for loading of an external script or
   *                    because processing of an earlier scheduled
   *                    script was delayed?
   * @param aURI What is the URI of the script (the document URI if
   *        it is inline).
   * @param aLineNo At what line does the script appear (generally 1
   *        if it is a loaded script).
   * @param aScript String representation of the string to be evaluated.
   */
  /* void scriptAvailable (in nsresult aResult, in nsIScriptElement aElement, in boolean aIsInline, in boolean aWasPending, in nsIURI aURI, in PRInt32 aLineNo, in AString aScript); */
  void ScriptAvailable(nsresult aResult, nsIScriptElementD aElement, PRBool aIsInline, PRBool aWasPending, nsIURID aURI, PRInt32 aLineNo, wchar[] aScript){
    scope auto _aScript = new AString(aScript);
    nsresult __result = inner.ScriptAvailable(aResult, aElement ? cast(nsIScriptElement)aElement : null, aIsInline, aWasPending, aURI ? cast(nsIURI)aURI : null, aLineNo, cast(nsAString*)_aScript);
    CheckException(__result);
  }

  /**
   * The script has been evaluated.
   *
   * @param aResult A result code representing the success or failure of
   *        the script evaluation.
   * @param aElement The element being processed.
   * @param aIsInline Is this an inline script or externally loaded?
   * @param aWasPending Did script processing have to be delayed,
   *                    either for loading of an external script or
   *                    because processing of an earlier scheduled
   *                    script was delayed?
   */
  /* void scriptEvaluated (in nsresult aResult, in nsIScriptElement aElement, in boolean aIsInline, in boolean aWasPending); */
  void ScriptEvaluated(nsresult aResult, nsIScriptElementD aElement, PRBool aIsInline, PRBool aWasPending){
    nsresult __result = inner.ScriptEvaluated(aResult, aElement ? cast(nsIScriptElement)aElement : null, aIsInline, aWasPending);
    CheckException(__result);
  }

private:
  nsIScriptLoaderObserver inner;

}

