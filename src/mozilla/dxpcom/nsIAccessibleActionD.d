/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleAction.idl
 */

module mozilla.dxpcom.nsIAccessibleActionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleAction;


public import mozilla.dxpcom.nsIAccessibleActionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAccessibleAction */
class nsIAccessibleActionD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEACTION_IID;


  alias nsIAccessibleAction InnerType;

  this(nsIAccessibleAction intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleAction opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleAction value) {
    inner = value;
  }

  /* readonly attribute long actions; */
  PRInt32 Actions(){
    PRInt32 value;
    nsresult __result = inner.GetActions(&value);
    CheckException(__result);
    return value;
  }

  /* boolean doAction (in long index); */
  PRBool DoAction(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.DoAction(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString getDescription (in long index); */
  wchar[] GetDescription(PRInt32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetDescription(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void getDescriptionConst (in long index, [shared, retval] out string description); */
  void GetDescriptionConst(PRInt32 index, out char*description){
    nsresult __result = inner.GetDescriptionConst(index, &description);
    CheckException(__result);
  }

  /* AString getKeyBinding (in long index); */
  wchar[] GetKeyBinding(PRInt32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetKeyBinding(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void getKeyBindingConst (in long index, [shared, retval] out string keyBinding); */
  void GetKeyBindingConst(PRInt32 index, out char*keyBinding){
    nsresult __result = inner.GetKeyBindingConst(index, &keyBinding);
    CheckException(__result);
  }

private:
  nsIAccessibleAction inner;

}

