/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSEditableElement.idl
 */

module mozilla.dxpcom.nsIDOMNSEditableElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNSEditableElement;


public import mozilla.dxpcom.nsIDOMNSEditableElementD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIEditor;

public import mozilla.dxpcom.nsIEditorD;


/* starting wrapper class:    nsIDOMNSEditableElement */
/**
 * This interface is implemented by elements which have inner editable content,
 * such as HTML input and textarea. 
*/
class nsIDOMNSEditableElementD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNSEDITABLEELEMENT_IID;


  alias nsIDOMNSEditableElement InnerType;

  this(nsIDOMNSEditableElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSEditableElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSEditableElement value) {
    inner = value;
  }

  /* readonly attribute nsIEditor editor; */
  nsIEditorD  Editor(){
    nsIEditor value;
    nsresult __result = inner.GetEditor(&value);
    CheckException(__result);
    return new nsIEditorD(value);
  }

private:
  nsIDOMNSEditableElement inner;

}

