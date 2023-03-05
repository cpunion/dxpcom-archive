/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBoxObject.idl
 */

module mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBoxObject;


public import mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIBoxLayoutManager;
public import mozilla.dxpcom.nsIBoxLayoutManagerD;
public import mozilla.xpcom.nsIBoxPaintManager;
public import mozilla.dxpcom.nsIBoxPaintManagerD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIBoxObject */
class nsIBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_IBOXOBJECT_IID;


  alias nsIBoxObject InnerType;

  this(nsIBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIBoxObject opCast() {
    return inner;
  }

  void opAssign(nsIBoxObject value) {
    inner = value;
  }

  /* readonly attribute nsIDOMElement element; */
  nsIDOMElementD  Element(){
    nsIDOMElement value;
    nsresult __result = inner.GetElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* attribute nsIBoxLayoutManager layoutManager; */
  nsIBoxLayoutManagerD  LayoutManager(){
    nsIBoxLayoutManager value;
    nsresult __result = inner.GetLayoutManager(&value);
    CheckException(__result);
    return new nsIBoxLayoutManagerD(value);
  }
  void LayoutManager(nsIBoxLayoutManagerD  aLayoutManager){
    nsIBoxLayoutManager value;
    nsresult __result = inner.SetLayoutManager(value);
    CheckException(__result);
  }

  /* attribute nsIBoxPaintManager paintManager; */
  nsIBoxPaintManagerD  PaintManager(){
    nsIBoxPaintManager value;
    nsresult __result = inner.GetPaintManager(&value);
    CheckException(__result);
    return new nsIBoxPaintManagerD(value);
  }
  void PaintManager(nsIBoxPaintManagerD  aPaintManager){
    nsIBoxPaintManager value;
    nsresult __result = inner.SetPaintManager(value);
    CheckException(__result);
  }

  /* readonly attribute long x; */
  PRInt32 X(){
    PRInt32 value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long y; */
  PRInt32 Y(){
    PRInt32 value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long screenX; */
  PRInt32 ScreenX(){
    PRInt32 value;
    nsresult __result = inner.GetScreenX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long screenY; */
  PRInt32 ScreenY(){
    PRInt32 value;
    nsresult __result = inner.GetScreenY(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long height; */
  PRInt32 Height(){
    PRInt32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }

  /* nsISupports getPropertyAsSupports (in wstring propertyName); */
  nsISupportsD  GetPropertyAsSupports(PRUnichar*propertyName){
    nsISupports _retval;
    nsresult __result = inner.GetPropertyAsSupports(propertyName, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* void setPropertyAsSupports (in wstring propertyName, in nsISupports value); */
  void SetPropertyAsSupports(PRUnichar*propertyName, nsISupportsD value){
    nsresult __result = inner.SetPropertyAsSupports(propertyName, value ? cast(nsISupports)value : null);
    CheckException(__result);
  }

  /* wstring getProperty (in wstring propertyName); */
  PRUnichar* GetProperty(PRUnichar*propertyName){
    PRUnichar* _retval;
    nsresult __result = inner.GetProperty(propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setProperty (in wstring propertyName, in wstring propertyValue); */
  void SetProperty(PRUnichar*propertyName, PRUnichar*propertyValue){
    nsresult __result = inner.SetProperty(propertyName, propertyValue);
    CheckException(__result);
  }

  /* void removeProperty (in wstring propertyName); */
  void RemoveProperty(PRUnichar*propertyName){
    nsresult __result = inner.RemoveProperty(propertyName);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMElement parentBox; */
  nsIDOMElementD  ParentBox(){
    nsIDOMElement value;
    nsresult __result = inner.GetParentBox(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIDOMElement firstChild; */
  nsIDOMElementD  FirstChild(){
    nsIDOMElement value;
    nsresult __result = inner.GetFirstChild(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIDOMElement lastChild; */
  nsIDOMElementD  LastChild(){
    nsIDOMElement value;
    nsresult __result = inner.GetLastChild(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIDOMElement nextSibling; */
  nsIDOMElementD  NextSibling(){
    nsIDOMElement value;
    nsresult __result = inner.GetNextSibling(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIDOMElement previousSibling; */
  nsIDOMElementD  PreviousSibling(){
    nsIDOMElement value;
    nsresult __result = inner.GetPreviousSibling(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* wstring getLookAndFeelMetric (in wstring propertyName); */
  PRUnichar* GetLookAndFeelMetric(PRUnichar*propertyName){
    PRUnichar* _retval;
    nsresult __result = inner.GetLookAndFeelMetric(propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIBoxObject inner;

}

