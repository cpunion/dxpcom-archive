/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLObjectElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLObjectElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLObjectElement;


public import mozilla.dxpcom.nsIDOMHTMLObjectElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLObjectElement */
/**
 * The nsIDOMHTMLObjectElement interface is the interface to a [X]HTML
 * object element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLObjectElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLOBJECTELEMENT_IID;


  alias nsIDOMHTMLObjectElement InnerType;

  this(nsIDOMHTMLObjectElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLObjectElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLObjectElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsIDOMHTMLFormElementD  Form(){
    nsIDOMHTMLFormElement value;
    nsresult __result = inner.GetForm(&value);
    CheckException(__result);
    return new nsIDOMHTMLFormElementD(value);
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

  /* attribute DOMString border; */
  wchar[] Border(){
    scope auto value = new AString();
    nsresult __result = inner.GetBorder(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Border(wchar[] aBorder){
    scope auto value = new AString(aBorder);
    nsresult __result = inner.SetBorder(cast(nsAString*)value);
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

  /* attribute DOMString codeType; */
  wchar[] CodeType(){
    scope auto value = new AString();
    nsresult __result = inner.GetCodeType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void CodeType(wchar[] aCodeType){
    scope auto value = new AString(aCodeType);
    nsresult __result = inner.SetCodeType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString data; */
  wchar[] Data(){
    scope auto value = new AString();
    nsresult __result = inner.GetData(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Data(wchar[] aData){
    scope auto value = new AString(aData);
    nsresult __result = inner.SetData(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean declare; */
  PRBool Declare(){
    PRBool value;
    nsresult __result = inner.GetDeclare(&value);
    CheckException(__result);
    return value;
  }
  void Declare(PRBool aDeclare){
    nsresult __result = inner.SetDeclare(aDeclare);
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

  /* attribute DOMString standby; */
  wchar[] Standby(){
    scope auto value = new AString();
    nsresult __result = inner.GetStandby(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Standby(wchar[] aStandby){
    scope auto value = new AString(aStandby);
    nsresult __result = inner.SetStandby(cast(nsAString*)value);
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

  /* attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString useMap; */
  wchar[] UseMap(){
    scope auto value = new AString();
    nsresult __result = inner.GetUseMap(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void UseMap(wchar[] aUseMap){
    scope auto value = new AString(aUseMap);
    nsresult __result = inner.SetUseMap(cast(nsAString*)value);
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

  /* readonly attribute nsIDOMDocument contentDocument; */
  nsIDOMDocumentD  ContentDocument(){
    nsIDOMDocument value;
    nsresult __result = inner.GetContentDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

private:
  nsIDOMHTMLObjectElement inner;

}

