/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRunnable.idl
 */

module mozilla.dxpcom.nsIRunnableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRunnable;


public import mozilla.dxpcom.nsIRunnableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIRunnable */
class nsIRunnableD : public nsISupportsD {

  static const nsIID IID = NS_IRUNNABLE_IID;


  alias nsIRunnable InnerType;

  this(nsIRunnable intr){
    super(intr);
    this.inner = intr;
  }

  nsIRunnable opCast() {
    return inner;
  }

  void opAssign(nsIRunnable value) {
    inner = value;
  }

  /* void run (); */
  void Run(){
    nsresult __result = inner.Run();
    CheckException(__result);
  }

private:
  nsIRunnable inner;

}

