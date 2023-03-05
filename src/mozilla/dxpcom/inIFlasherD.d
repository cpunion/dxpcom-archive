/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIFlasher.idl
 */

module mozilla.dxpcom.inIFlasherD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.inIFlasher;


public import mozilla.dxpcom.inIFlasherD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;


/* starting wrapper class:    inIFlasher */
class inIFlasherD : public nsISupportsD {

  static const nsIID IID = INIFLASHER_IID;


  alias inIFlasher InnerType;

  this(inIFlasher intr){
    super(intr);
    this.inner = intr;
  }

  inIFlasher opCast() {
    return inner;
  }

  void opAssign(inIFlasher value) {
    inner = value;
  }

  /* attribute DOMString color; */
  wchar[] Color(){
    scope auto value = new AString();
    nsresult __result = inner.GetColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Color(wchar[] aColor){
    scope auto value = new AString(aColor);
    nsresult __result = inner.SetColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean invert; */
  PRBool Invert(){
    PRBool value;
    nsresult __result = inner.GetInvert(&value);
    CheckException(__result);
    return value;
  }
  void Invert(PRBool aInvert){
    nsresult __result = inner.SetInvert(aInvert);
    CheckException(__result);
  }

  /* attribute unsigned short thickness; */
  PRUint16 Thickness(){
    PRUint16 value;
    nsresult __result = inner.GetThickness(&value);
    CheckException(__result);
    return value;
  }
  void Thickness(PRUint16 aThickness){
    nsresult __result = inner.SetThickness(aThickness);
    CheckException(__result);
  }

  /* void drawElementOutline (in nsIDOMElement aElement); */
  void DrawElementOutline(nsIDOMElementD aElement){
    nsresult __result = inner.DrawElementOutline(aElement ? cast(nsIDOMElement)aElement : null);
    CheckException(__result);
  }

  /* void repaintElement (in nsIDOMElement aElement); */
  void RepaintElement(nsIDOMElementD aElement){
    nsresult __result = inner.RepaintElement(aElement ? cast(nsIDOMElement)aElement : null);
    CheckException(__result);
  }

  /* void scrollElementIntoView (in nsIDOMElement aElement); */
  void ScrollElementIntoView(nsIDOMElementD aElement){
    nsresult __result = inner.ScrollElementIntoView(aElement ? cast(nsIDOMElement)aElement : null);
    CheckException(__result);
  }

private:
  inIFlasher inner;

}

