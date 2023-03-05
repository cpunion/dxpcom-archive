/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICmdLineHandler.idl
 */

module mozilla.dxpcom.nsICmdLineHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICmdLineHandler;


public import mozilla.dxpcom.nsICmdLineHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICmdLineHandler */
class nsICmdLineHandlerD : public nsISupportsD {

  static const nsIID IID = NS_ICMDLINEHANDLER_IID;


  alias nsICmdLineHandler InnerType;

  this(nsICmdLineHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsICmdLineHandler opCast() {
    return inner;
  }

  void opAssign(nsICmdLineHandler value) {
    inner = value;
  }

  /* readonly attribute string commandLineArgument; */
  char* CommandLineArgument(){
    char* value;
    nsresult __result = inner.GetCommandLineArgument(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string prefNameForStartup; */
  char* PrefNameForStartup(){
    char* value;
    nsresult __result = inner.GetPrefNameForStartup(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string chromeUrlForTask; */
  char* ChromeUrlForTask(){
    char* value;
    nsresult __result = inner.GetChromeUrlForTask(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string helpText; */
  char* HelpText(){
    char* value;
    nsresult __result = inner.GetHelpText(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean handlesArgs; */
  PRBool HandlesArgs(){
    PRBool value;
    nsresult __result = inner.GetHandlesArgs(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring defaultArgs; */
  PRUnichar* DefaultArgs(){
    PRUnichar* value;
    nsresult __result = inner.GetDefaultArgs(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean openWindowWithArgs; */
  PRBool OpenWindowWithArgs(){
    PRBool value;
    nsresult __result = inner.GetOpenWindowWithArgs(&value);
    CheckException(__result);
    return value;
  }

private:
  nsICmdLineHandler inner;

}

