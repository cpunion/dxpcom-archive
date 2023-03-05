/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptLoaderObserver.idl
 */

module mozilla.xpcom.nsIScriptLoaderObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIScriptLoaderObserver */
const char[] NS_ISCRIPTLOADEROBSERVER_IID_STR = "501209d3-7edf-437d-9948-3c6d1c08ef7f";

const nsIID NS_ISCRIPTLOADEROBSERVER_IID= 
  {0x501209d3, 0x7edf, 0x437d, 
    [ 0x99, 0x48, 0x3c, 0x6d, 0x1c, 0x08, 0xef, 0x7f ]};

extern(Windows)
interface nsIScriptLoaderObserver : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTLOADEROBSERVER_IID_STR;
  static const nsIID IID = NS_ISCRIPTLOADEROBSERVER_IID;

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
  nsresult ScriptAvailable(nsresult aResult, nsIScriptElement aElement, PRBool aIsInline, PRBool aWasPending, nsIURI aURI, PRInt32 aLineNo, nsAString * aScript);

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
  nsresult ScriptEvaluated(nsresult aResult, nsIScriptElement aElement, PRBool aIsInline, PRBool aWasPending);

}

