/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecureBrowserUI.idl
 */

module mozilla.dxpcom.nsISecureBrowserUID;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISecureBrowserUI;


public import mozilla.dxpcom.nsISecureBrowserUID;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsISecureBrowserUI */
class nsISecureBrowserUID : public nsISupportsD {

  static const nsIID IID = NS_ISECUREBROWSERUI_IID;


  alias nsISecureBrowserUI InnerType;

  this(nsISecureBrowserUI intr){
    super(intr);
    this.inner = intr;
  }

  nsISecureBrowserUI opCast() {
    return inner;
  }

  void opAssign(nsISecureBrowserUI value) {
    inner = value;
  }

  /* void init (in nsIDOMWindow window); */
  void Init(nsIDOMWindowD window){
    nsresult __result = inner.Init(window ? cast(nsIDOMWindow)window : null);
    CheckException(__result);
  }

  /* readonly attribute unsigned long state; */
  PRUint32 State(){
    PRUint32 value;
    nsresult __result = inner.GetState(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString tooltipText; */
  wchar[] TooltipText(){
    scope auto value = new AString();
    nsresult __result = inner.GetTooltipText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsISecureBrowserUI inner;

}

