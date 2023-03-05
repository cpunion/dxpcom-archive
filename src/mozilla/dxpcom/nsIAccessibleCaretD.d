/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleCaret.idl
 */

module mozilla.dxpcom.nsIAccessibleCaretD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleCaret;


public import mozilla.dxpcom.nsIAccessibleCaretD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIAccessibleCaret */
class nsIAccessibleCaretD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLECARET_IID;


  alias nsIAccessibleCaret InnerType;

  this(nsIAccessibleCaret intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleCaret opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleCaret value) {
    inner = value;
  }

  /* void attachNewSelectionListener (in nsIDOMNode aFocusedNode); */
  void AttachNewSelectionListener(nsIDOMNodeD aFocusedNode){
    nsresult __result = inner.AttachNewSelectionListener(aFocusedNode ? cast(nsIDOMNode)aFocusedNode : null);
    CheckException(__result);
  }

  /* void removeSelectionListener (); */
  void RemoveSelectionListener(){
    nsresult __result = inner.RemoveSelectionListener();
    CheckException(__result);
  }

private:
  nsIAccessibleCaret inner;

}

