/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLSelectElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLSelectElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLSelectElement;


public import mozilla.dxpcom.nsIDOMHTMLSelectElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;
public import mozilla.xpcom.nsIDOMHTMLOptionsCollection;
public import mozilla.dxpcom.nsIDOMHTMLOptionsCollectionD;


/* starting wrapper class:    nsIDOMHTMLSelectElement */
/**
 * The nsIDOMHTMLSelectElement interface is the interface to a [X]HTML
 * select element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLSelectElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLSELECTELEMENT_IID;


  alias nsIDOMHTMLSelectElement InnerType;

  this(nsIDOMHTMLSelectElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLSelectElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLSelectElement value) {
    inner = value;
  }

  /* readonly attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* attribute long selectedIndex; */
  PRInt32 SelectedIndex(){
    PRInt32 value;
    nsresult __result = inner.GetSelectedIndex(&value);
    CheckException(__result);
    return value;
  }
  void SelectedIndex(PRInt32 aSelectedIndex){
    nsresult __result = inner.SetSelectedIndex(aSelectedIndex);
    CheckException(__result);
  }

  /* attribute DOMString value; */
  wchar[] Value(){
    scope auto value = new AString();
    nsresult __result = inner.GetValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Value(wchar[] aValue){
    scope auto value = new AString(aValue);
    nsresult __result = inner.SetValue(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute unsigned long length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }
  void Length(PRUint32 aLength){
    nsresult __result = inner.SetLength(aLength);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsIDOMHTMLFormElementD  Form(){
    nsIDOMHTMLFormElement value;
    nsresult __result = inner.GetForm(&value);
    CheckException(__result);
    return new nsIDOMHTMLFormElementD(value);
  }

  /* readonly attribute nsIDOMHTMLOptionsCollection options; */
  nsIDOMHTMLOptionsCollectionD  Options(){
    nsIDOMHTMLOptionsCollection value;
    nsresult __result = inner.GetOptions(&value);
    CheckException(__result);
    return new nsIDOMHTMLOptionsCollectionD(value);
  }

  /* attribute boolean disabled; */
  PRBool Disabled(){
    PRBool value;
    nsresult __result = inner.GetDisabled(&value);
    CheckException(__result);
    return value;
  }
  void Disabled(PRBool aDisabled){
    nsresult __result = inner.SetDisabled(aDisabled);
    CheckException(__result);
  }

  /* attribute boolean multiple; */
  PRBool Multiple(){
    PRBool value;
    nsresult __result = inner.GetMultiple(&value);
    CheckException(__result);
    return value;
  }
  void Multiple(PRBool aMultiple){
    nsresult __result = inner.SetMultiple(aMultiple);
    CheckException(__result);
  }

  /* attribute DOMString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long size; */
  PRInt32 Size(){
    PRInt32 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }
  void Size(PRInt32 aSize){
    nsresult __result = inner.SetSize(aSize);
    CheckException(__result);
  }

  /* attribute long tabIndex; */
  PRInt32 TabIndex(){
    PRInt32 value;
    nsresult __result = inner.GetTabIndex(&value);
    CheckException(__result);
    return value;
  }
  void TabIndex(PRInt32 aTabIndex){
    nsresult __result = inner.SetTabIndex(aTabIndex);
    CheckException(__result);
  }

  /* void add (in nsIDOMHTMLElement element, in nsIDOMHTMLElement before)  raises (DOMException); */
  void Add(nsIDOMHTMLElementD element, nsIDOMHTMLElementD before){
    nsresult __result = inner.Add(element ? cast(nsIDOMHTMLElement)element : null, before ? cast(nsIDOMHTMLElement)before : null);
    CheckException(__result);
  }

  /* void remove (in long index); */
  void Remove(PRInt32 index){
    nsresult __result = inner.Remove(index);
    CheckException(__result);
  }

  /* void blur (); */
  void Blur(){
    nsresult __result = inner.Blur();
    CheckException(__result);
  }

  /* void focus (); */
  void Focus(){
    nsresult __result = inner.Focus();
    CheckException(__result);
  }

private:
  nsIDOMHTMLSelectElement inner;

}

