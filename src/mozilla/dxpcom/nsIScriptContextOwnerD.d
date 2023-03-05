/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptContextOwner.idl
 */

module mozilla.dxpcom.nsIScriptContextOwnerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptContextOwner;


public import mozilla.dxpcom.nsIScriptContextOwnerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIScriptContextOwner */
class nsIScriptContextOwnerD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTCONTEXTOWNER_IID;


  alias nsIScriptContextOwner InnerType;

  this(nsIScriptContextOwner intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptContextOwner opCast() {
    return inner;
  }

  void opAssign(nsIScriptContextOwner value) {
    inner = value;
  }

  /**
   * Returns a script context. The assumption is that the
   * script context has an associated script global object and
   * is ready for script evaluation.
   */
  /* nsIScriptContext getScriptContext (); */
  nsIScriptContextD  GetScriptContext(){
    nsIScriptContext _retval;
    nsresult __result = inner.GetScriptContext(&_retval);
    CheckException(__result);
    return new nsIScriptContextD(_retval);
  }

  /**
   * Returns the script global object
   */
  /* nsIScriptGlobalObject getScriptGlobalObject (); */
  nsIScriptGlobalObjectD  GetScriptGlobalObject(){
    nsIScriptGlobalObject _retval;
    nsresult __result = inner.GetScriptGlobalObject(&_retval);
    CheckException(__result);
    return new nsIScriptGlobalObjectD(_retval);
  }

  /**
   * Called to indicate that the script context is no longer needed.
   * The caller should <B>not</B> also call the context's Release()
   * method.
   */
  /* void releaseScriptContext (in nsIScriptContext aContext); */
  void ReleaseScriptContext(nsIScriptContextD aContext){
    nsresult __result = inner.ReleaseScriptContext(aContext ? cast(nsIScriptContext)aContext : null);
    CheckException(__result);
  }

  /**
   * Error notification method. Informs the owner that an error 
   * occurred while a script was being evaluted.
   */
  /* void reportScriptError (in string aErrorString, in string aFileName, in long aLineNo, in string aLineBuf); */
  void ReportScriptError(char*aErrorString, char*aFileName, PRInt32 aLineNo, char*aLineBuf){
    nsresult __result = inner.ReportScriptError(aErrorString, aFileName, aLineNo, aLineBuf);
    CheckException(__result);
  }

private:
  nsIScriptContextOwner inner;

}

