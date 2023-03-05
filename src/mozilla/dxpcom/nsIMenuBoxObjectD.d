/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMenuBoxObject.idl
 */

module mozilla.dxpcom.nsIMenuBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMenuBoxObject;


public import mozilla.dxpcom.nsIMenuBoxObjectD;

public import mozilla.xpcom.nsIBoxObject;
public import mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMKeyEvent;

public import mozilla.dxpcom.nsIDOMKeyEventD;


/* starting wrapper class:    nsIMenuBoxObject */
class nsIMenuBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_IMENUBOXOBJECT_IID;


  alias nsIMenuBoxObject InnerType;

  this(nsIMenuBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIMenuBoxObject opCast() {
    return inner;
  }

  void opAssign(nsIMenuBoxObject value) {
    inner = value;
  }

  /* void openMenu (in boolean openFlag); */
  void OpenMenu(PRBool openFlag){
    nsresult __result = inner.OpenMenu(openFlag);
    CheckException(__result);
  }

  /* attribute nsIDOMElement activeChild; */
  nsIDOMElementD  ActiveChild(){
    nsIDOMElement value;
    nsresult __result = inner.GetActiveChild(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }
  void ActiveChild(nsIDOMElementD  aActiveChild){
    nsIDOMElement value;
    nsresult __result = inner.SetActiveChild(value);
    CheckException(__result);
  }

  /* boolean handleKeyPress (in nsIDOMKeyEvent keyEvent); */
  PRBool HandleKeyPress(nsIDOMKeyEventD keyEvent){
    PRBool _retval;
    nsresult __result = inner.HandleKeyPress(keyEvent ? cast(nsIDOMKeyEvent)keyEvent : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMenuBoxObject inner;

}

