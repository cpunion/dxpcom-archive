/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULTreeElement.idl
 */

module mozilla.dxpcom.nsIDOMXULTreeElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULTreeElement;


public import mozilla.dxpcom.nsIDOMXULTreeElementD;

public import mozilla.xpcom.nsIDOMXULElement;
public import mozilla.dxpcom.nsIDOMXULElementD;
public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsITreeColumns;

public import mozilla.dxpcom.nsITreeColumnsD;

public import mozilla.xpcom.nsITreeView;

public import mozilla.dxpcom.nsITreeViewD;

public import mozilla.xpcom.nsIDOMXULTextboxElement;

import mozilla.dxpcom.nsIDOMXULTextboxElementD;


/* starting wrapper class:    nsIDOMXULTreeElement */
/**
 * @status UNDER_DEVELOPMENT
 */
class nsIDOMXULTreeElementD : public nsIDOMXULElementD {

  static const nsIID IID = NS_IDOMXULTREEELEMENT_IID;


  alias nsIDOMXULTreeElement InnerType;

  this(nsIDOMXULTreeElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULTreeElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULTreeElement value) {
    inner = value;
  }

  /* readonly attribute nsITreeColumns columns; */
  nsITreeColumnsD  Columns(){
    nsITreeColumns value;
    nsresult __result = inner.GetColumns(&value);
    CheckException(__result);
    return new nsITreeColumnsD(value);
  }

  /* attribute nsITreeView view; */
  nsITreeViewD  View(){
    nsITreeView value;
    nsresult __result = inner.GetView(&value);
    CheckException(__result);
    return new nsITreeViewD(value);
  }
  void View(nsITreeViewD  aView){
    nsITreeView value;
    nsresult __result = inner.SetView(value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMElement body; */
  nsIDOMElementD  Body(){
    nsIDOMElement value;
    nsresult __result = inner.GetBody(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* attribute boolean editable; */
  PRBool Editable(){
    PRBool value;
    nsresult __result = inner.GetEditable(&value);
    CheckException(__result);
    return value;
  }
  void Editable(PRBool aEditable){
    nsresult __result = inner.SetEditable(aEditable);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMXULTextBoxElement inputField; */
  nsIDOMXULTextBoxElementD  InputField(){
    nsIDOMXULTextBoxElement value;
    nsresult __result = inner.GetInputField(&value);
    CheckException(__result);
    return new nsIDOMXULTextBoxElementD(value);
  }

private:
  nsIDOMXULTreeElement inner;

}

