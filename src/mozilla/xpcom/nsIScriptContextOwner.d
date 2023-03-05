/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptContextOwner.idl
 */

module mozilla.xpcom.nsIScriptContextOwner;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIScriptContextOwner */
const char[] NS_ISCRIPTCONTEXTOWNER_IID_STR = "a94ec640-0bba-11d2-b326-00805f8a3859";

const nsIID NS_ISCRIPTCONTEXTOWNER_IID= 
  {0xa94ec640, 0x0bba, 0x11d2, 
    [ 0xb3, 0x26, 0x00, 0x80, 0x5f, 0x8a, 0x38, 0x59 ]};

extern(Windows)
interface nsIScriptContextOwner : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTCONTEXTOWNER_IID_STR;
  static const nsIID IID = NS_ISCRIPTCONTEXTOWNER_IID;

  /**
   * Returns a script context. The assumption is that the
   * script context has an associated script global object and
   * is ready for script evaluation.
   */
  /* nsIScriptContext getScriptContext (); */
  nsresult GetScriptContext(nsIScriptContext *_retval);

  /**
   * Returns the script global object
   */
  /* nsIScriptGlobalObject getScriptGlobalObject (); */
  nsresult GetScriptGlobalObject(nsIScriptGlobalObject *_retval);

  /**
   * Called to indicate that the script context is no longer needed.
   * The caller should <B>not</B> also call the context's Release()
   * method.
   */
  /* void releaseScriptContext (in nsIScriptContext aContext); */
  nsresult ReleaseScriptContext(nsIScriptContext aContext);

  /**
   * Error notification method. Informs the owner that an error 
   * occurred while a script was being evaluted.
   */
  /* void reportScriptError (in string aErrorString, in string aFileName, in long aLineNo, in string aLineBuf); */
  nsresult ReportScriptError(char *aErrorString, char *aFileName, PRInt32 aLineNo, char *aLineBuf);

}

