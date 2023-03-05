/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMWindow2.idl
 */

module mozilla.dxpcom.nsIDOMWindow2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMWindow2;


public import mozilla.dxpcom.nsIDOMWindow2D;

public import mozilla.xpcom.nsIDOMWindow;
public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIDOMWindow2 */
class nsIDOMWindow2D : public nsIDOMWindowD {

  static const nsIID IID = NS_IDOMWINDOW2_IID;


  alias nsIDOMWindow2 InnerType;

  this(nsIDOMWindow2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMWindow2 opCast() {
    return inner;
  }

  void opAssign(nsIDOMWindow2 value) {
    inner = value;
  }

  /**
   * Get the window root for this window. This is useful for hooking
   * up event listeners to this window and every other window nested
   * in the window root.
   */
  /* [noscript] readonly attribute nsIDOMEventTarget windowRoot; */
  nsIDOMEventTargetD  WindowRoot(){
    nsIDOMEventTarget value;
    nsresult __result = inner.GetWindowRoot(&value);
    CheckException(__result);
    return new nsIDOMEventTargetD(value);
  }

private:
  nsIDOMWindow2 inner;

}

