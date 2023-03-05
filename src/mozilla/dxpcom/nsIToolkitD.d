/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIToolkit.idl
 */

module mozilla.dxpcom.nsIToolkitD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIToolkit;


public import mozilla.dxpcom.nsIToolkitD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIToolkit */
class nsIToolkitD : public nsISupportsD {

  static const nsIID IID = NS_ITOOLKIT_IID;


  alias nsIToolkit InnerType;

  this(nsIToolkit intr){
    super(intr);
    this.inner = intr;
  }

  nsIToolkit opCast() {
    return inner;
  }

  void opAssign(nsIToolkit value) {
    inner = value;
  }

  /**
   * Initialize this toolkit with aThread. 
   * @param aThread The thread passed in runs the message pump.
   *  NULL can be passed in, in which case a new thread gets created
   *  and a message pump will run in that thread
   *
   */
  /* void Init (in PRThread aThread); */
  void Init(PRThread * aThread){
    nsresult __result = inner.Init(aThread);
    CheckException(__result);
  }

private:
  nsIToolkit inner;

}

