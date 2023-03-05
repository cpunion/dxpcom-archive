/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLImageElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLImageElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLImageElement;


public import mozilla.dxpcom.nsIDOMHTMLImageElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLImageElement */
/**
 * The nsIDOMHTMLImageElement interface is the interface to a [X]HTML
 * img element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLImageElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLIMAGEELEMENT_IID;


  alias nsIDOMHTMLImageElement InnerType;

  this(nsIDOMHTMLImageElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLImageElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLImageElement value) {
    inner = value;
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

  /* attribute long height; */
  PRInt32 Height(){
    PRInt32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }
  void Height(PRInt32 aHeight){
    nsresult __result = inner.SetHeight(aHeight);
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

  /* attribute boolean isMap; */
  PRBool IsMap(){
    PRBool value;
    nsresult __result = inner.GetIsMap(&value);
    CheckException(__result);
    return value;
  }
  void IsMap(PRBool aIsMap){
    nsresult __result = inner.SetIsMap(aIsMap);
    CheckException(__result);
  }

  /* attribute DOMString longDesc; */
  wchar[] LongDesc(){
    scope auto value = new AString();
    nsresult __result = inner.GetLongDesc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void LongDesc(wchar[] aLongDesc){
    scope auto value = new AString(aLongDesc);
    nsresult __result = inner.SetLongDesc(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString src; */
  wchar[] Src(){
    scope auto value = new AString();
    nsresult __result = inner.GetSrc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Src(wchar[] aSrc){
    scope auto value = new AString(aSrc);
    nsresult __result = inner.SetSrc(cast(nsAString*)value);
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

  /* attribute long width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }
  void Width(PRInt32 aWidth){
    nsresult __result = inner.SetWidth(aWidth);
    CheckException(__result);
  }

private:
  nsIDOMHTMLImageElement inner;

}

