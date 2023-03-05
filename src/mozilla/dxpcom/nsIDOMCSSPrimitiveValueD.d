/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSPrimitiveValue.idl
 */

module mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCSSPrimitiveValue;


public import mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;

public import mozilla.xpcom.nsIDOMCSSValue;
public import mozilla.dxpcom.nsIDOMCSSValueD;


/* starting wrapper class:    nsIDOMCSSPrimitiveValue */
class nsIDOMCSSPrimitiveValueD : public nsIDOMCSSValueD {

  static const nsIID IID = NS_IDOMCSSPRIMITIVEVALUE_IID;


  alias nsIDOMCSSPrimitiveValue InnerType;

  this(nsIDOMCSSPrimitiveValue intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCSSPrimitiveValue opCast() {
    return inner;
  }

  void opAssign(nsIDOMCSSPrimitiveValue value) {
    inner = value;
  }

  /**
 * The nsIDOMCSSPrimitiveValue interface is a datatype for a primitive
 * CSS value in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Style
 *
 * @status FROZEN
 */
  enum { CSS_UNKNOWN = 0U }

  enum { CSS_NUMBER = 1U }

  enum { CSS_PERCENTAGE = 2U }

  enum { CSS_EMS = 3U }

  enum { CSS_EXS = 4U }

  enum { CSS_PX = 5U }

  enum { CSS_CM = 6U }

  enum { CSS_MM = 7U }

  enum { CSS_IN = 8U }

  enum { CSS_PT = 9U }

  enum { CSS_PC = 10U }

  enum { CSS_DEG = 11U }

  enum { CSS_RAD = 12U }

  enum { CSS_GRAD = 13U }

  enum { CSS_MS = 14U }

  enum { CSS_S = 15U }

  enum { CSS_HZ = 16U }

  enum { CSS_KHZ = 17U }

  enum { CSS_DIMENSION = 18U }

  enum { CSS_STRING = 19U }

  enum { CSS_URI = 20U }

  enum { CSS_IDENT = 21U }

  enum { CSS_ATTR = 22U }

  enum { CSS_COUNTER = 23U }

  enum { CSS_RECT = 24U }

  enum { CSS_RGBCOLOR = 25U }

  /* readonly attribute unsigned short primitiveType; */
  PRUint16 PrimitiveType(){
    PRUint16 value;
    nsresult __result = inner.GetPrimitiveType(&value);
    CheckException(__result);
    return value;
  }

  /* void setFloatValue (in unsigned short unitType, in float floatValue)  raises (DOMException); */
  void SetFloatValue(PRUint16 unitType, float floatValue){
    nsresult __result = inner.SetFloatValue(unitType, floatValue);
    CheckException(__result);
  }

  /* float getFloatValue (in unsigned short unitType)  raises (DOMException); */
  float GetFloatValue(PRUint16 unitType){
    float _retval;
    nsresult __result = inner.GetFloatValue(unitType, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setStringValue (in unsigned short stringType, in DOMString stringValue)  raises (DOMException); */
  void SetStringValue(PRUint16 stringType, wchar[] stringValue){
    scope auto _stringValue = new AString(stringValue);
    nsresult __result = inner.SetStringValue(stringType, cast(nsAString*)_stringValue);
    CheckException(__result);
  }

  /* DOMString getStringValue ()  raises (DOMException); */
  wchar[] GetStringValue(){
    scope auto _retval = new AString;
    nsresult __result = inner.GetStringValue(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* nsIDOMCounter getCounterValue ()  raises (DOMException); */
  nsIDOMCounterD  GetCounterValue(){
    nsIDOMCounter _retval;
    nsresult __result = inner.GetCounterValue(&_retval);
    CheckException(__result);
    return new nsIDOMCounterD(_retval);
  }

  /* nsIDOMRect getRectValue ()  raises (DOMException); */
  nsIDOMRectD  GetRectValue(){
    nsIDOMRect _retval;
    nsresult __result = inner.GetRectValue(&_retval);
    CheckException(__result);
    return new nsIDOMRectD(_retval);
  }

  /* nsIDOMRGBColor getRGBColorValue ()  raises (DOMException); */
  nsIDOMRGBColorD  GetRGBColorValue(){
    nsIDOMRGBColor _retval;
    nsresult __result = inner.GetRGBColorValue(&_retval);
    CheckException(__result);
    return new nsIDOMRGBColorD(_retval);
  }

private:
  nsIDOMCSSPrimitiveValue inner;

}

