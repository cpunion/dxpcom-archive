/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIJSSubScriptLoader.idl
 */

module mozilla.xpcom.mozIJSSubScriptLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    mozIJSSubScriptLoader */
const char[] MOZIJSSUBSCRIPTLOADER_IID_STR = "8792d77e-1dd2-11b2-ac7f-9bc9be4f2916";

const nsIID MOZIJSSUBSCRIPTLOADER_IID= 
  {0x8792d77e, 0x1dd2, 0x11b2, 
    [ 0xac, 0x7f, 0x9b, 0xc9, 0xbe, 0x4f, 0x29, 0x16 ]};

extern(Windows)
interface mozIJSSubScriptLoader : nsISupports {
  static const char[] IID_STR = MOZIJSSUBSCRIPTLOADER_IID_STR;
  static const nsIID IID = MOZIJSSUBSCRIPTLOADER_IID;

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
  nsresult LoadSubScript(PRUnichar *url);

}

