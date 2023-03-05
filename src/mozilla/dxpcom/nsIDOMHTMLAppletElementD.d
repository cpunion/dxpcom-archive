/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLAppletElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLAppletElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLAppletElement;


public import mozilla.dxpcom.nsIDOMHTMLAppletElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLAppletElement */
/**
 * The nsIDOMHTMLAppletElement interface is the interface to a [X]HTML
 * applet element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLAppletElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLAPPLETELEMENT_IID;


  alias nsIDOMHTMLAppletElement InnerType;

  this(nsIDOMHTMLAppletElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLAppletElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLAppletElement value) {
    inner = value;
  }

  /* attribute DOMString align; */
  wchar[] Align(){
    scope auto value = new AString();
    nsresult __result = inner.GetAlign(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Align(wchar[] aAlign){
    scope auto value = new AString(aAlign);
    nsresult __result = inner.SetAlign(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString alt; */
  wchar[] Alt(){
    scope auto value = new AString();
    nsresult __result = inner.GetAlt(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Alt(wchar[] aAlt){
    scope auto value = new AString(aAlt);
    nsresult __result = inner.SetAlt(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString archive; */
  wchar[] Archive(){
    scope auto value = new AString();
    nsresult __result = inner.GetArchive(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Archive(wchar[] aArchive){
    scope auto value = new AString(aArchive);
    nsresult __result = inner.SetArchive(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString code; */
  wchar[] Code(){
    scope auto value = new AString();
    nsresult __result = inner.GetCode(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Code(wchar[] aCode){
    scope auto value = new AString(aCode);
    nsresult __result = inner.SetCode(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString codeBase; */
  wchar[] CodeBase(){
    scope auto value = new AString();
    nsresult __result = inner.GetCodeBase(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void CodeBase(wchar[] aCodeBase){
    scope auto value = new AString(aCodeBase);
    nsresult __result = inner.SetCodeBase(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString height; */
  wchar[] Height(){
    scope auto value = new AString();
    nsresult __result = inner.GetHeight(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Height(wchar[] aHeight){
    scope auto value = new AString(aHeight);
    nsresult __result = inner.SetHeight(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long hspace; */
  PRInt32 Hspace(){
    PRInt32 value;
    nsresult __result = inner.GetHspace(&value);
    CheckException(__result);
    return value;
  }
  void Hspace(PRInt32 aHspace){
    nsresult __result = inner.SetHspace(aHspace);
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

  /* attribute DOMString object; */
  wchar[] Object(){
    scope auto value = new AString();
    nsresult __result = inner.GetObject(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Object(wchar[] aObject){
    scope auto value = new AString(aObject);
    nsresult __result = inner.SetObject(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long vspace; */
  PRInt32 Vspace(){
    PRInt32 value;
    nsresult __result = inner.GetVspace(&value);
    CheckException(__result);
    return value;
  }
  void Vspace(PRInt32 aVspace){
    nsresult __result = inner.SetVspace(aVspace);
    CheckException(__result);
  }

  /* attribute DOMString width; */
  wchar[] Width(){
    scope auto value = new AString();
    nsresult __result = inner.GetWidth(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Width(wchar[] aWidth){
    scope auto value = new AString(aWidth);
    nsresult __result = inner.SetWidth(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLAppletElement inner;

}

