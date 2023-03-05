/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserInstance.idl
 */

module mozilla.dxpcom.nsIBrowserInstanceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBrowserInstance;


public import mozilla.dxpcom.nsIBrowserInstanceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;


/* starting wrapper class:    nsIBrowserInstance */
class nsIBrowserInstanceD : public nsISupportsD {

  static const nsIID IID = NS_IBROWSERINSTANCE_IID;


  alias nsIBrowserInstance InnerType;

  this(nsIBrowserInstance intr){
    super(intr);
    this.inner = intr;
  }

  nsIBrowserInstance opCast() {
    return inner;
  }

  void opAssign(nsIBrowserInstance value) {
    inner = value;
  }

  /* boolean startPageCycler (); */
  PRBool StartPageCycler(){
    PRBool _retval;
    nsresult __result = inner.StartPageCycler(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute boolean cmdLineURLUsed; */
  PRBool CmdLineURLUsed(){
    PRBool value;
    nsresult __result = inner.GetCmdLineURLUsed(&value);
    CheckException(__result);
    return value;
  }
  void CmdLineURLUsed(PRBool aCmdLineURLUsed){
    nsresult __result = inner.SetCmdLineURLUsed(aCmdLineURLUsed);
    CheckException(__result);
  }

  /* void setWebShellWindow (in nsIDOMWindowInternal aWindow); */
  void SetWebShellWindow(nsIDOMWindowInternalD aWindow){
    nsresult __result = inner.SetWebShellWindow(aWindow ? cast(nsIDOMWindowInternal)aWindow : null);
    CheckException(__result);
  }

  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

private:
  nsIBrowserInstance inner;

}

