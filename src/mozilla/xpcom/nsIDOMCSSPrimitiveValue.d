/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSPrimitiveValue.idl
 */

module mozilla.xpcom.nsIDOMCSSPrimitiveValue;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMCSSValue;


/* starting interface:    nsIDOMCSSPrimitiveValue */
const char[] NS_IDOMCSSPRIMITIVEVALUE_IID_STR = "e249031f-8df9-4e7a-b644-18946dce0019";

const nsIID NS_IDOMCSSPRIMITIVEVALUE_IID= 
  {0xe249031f, 0x8df9, 0x4e7a, 
    [ 0xb6, 0x44, 0x18, 0x94, 0x6d, 0xce, 0x00, 0x19 ]};

extern(Windows)
interface nsIDOMCSSPrimitiveValue : nsIDOMCSSValue {
  static const char[] IID_STR = NS_IDOMCSSPRIMITIVEVALUE_IID_STR;
  static const nsIID IID = NS_IDOMCSSPRIMITIVEVALUE_IID;

  /**
 * The nsIDOMCSSPrimitiveValue interface is a datatype for a primitive
 * CSS value in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Style
 *
 * @status FROZEN
 */
  enum { CSS_UNKNOWN = 0U };

  enum { CSS_NUMBER = 1U };

  enum { CSS_PERCENTAGE = 2U };

  enum { CSS_EMS = 3U };

  enum { CSS_EXS = 4U };

  enum { CSS_PX = 5U };

  enum { CSS_CM = 6U };

  enum { CSS_MM = 7U };

  enum { CSS_IN = 8U };

  enum { CSS_PT = 9U };

  enum { CSS_PC = 10U };

  enum { CSS_DEG = 11U };

  enum { CSS_RAD = 12U };

  enum { CSS_GRAD = 13U };

  enum { CSS_MS = 14U };

  enum { CSS_S = 15U };

  enum { CSS_HZ = 16U };

  enum { CSS_KHZ = 17U };

  enum { CSS_DIMENSION = 18U };

  enum { CSS_STRING = 19U };

  enum { CSS_URI = 20U };

  enum { CSS_IDENT = 21U };

  enum { CSS_ATTR = 22U };

  enum { CSS_COUNTER = 23U };

  enum { CSS_RECT = 24U };

  enum { CSS_RGBCOLOR = 25U };

  /* readonly attribute unsigned short primitiveType; */
  nsresult GetPrimitiveType(PRUint16 *aPrimitiveType);

  /* void setFloatValue (in unsigned short unitType, in float floatValue)  raises (DOMException); */
  nsresult SetFloatValue(PRUint16 unitType, float floatValue);

  /* float getFloatValue (in unsigned short unitType)  raises (DOMException); */
  nsresult GetFloatValue(PRUint16 unitType, float *_retval);

  /* void setStringValue (in unsigned short stringType, in DOMString stringValue)  raises (DOMException); */
  nsresult SetStringValue(PRUint16 stringType, nsAString * stringValue);

  /* DOMString getStringValue ()  raises (DOMException); */
  nsresult GetStringValue(nsAString * _retval);

  /* nsIDOMCounter getCounterValue ()  raises (DOMException); */
  nsresult GetCounterValue(nsIDOMCounter *_retval);

  /* nsIDOMRect getRectValue ()  raises (DOMException); */
  nsresult GetRectValue(nsIDOMRect *_retval);

  /* nsIDOMRGBColor getRGBColorValue ()  raises (DOMException); */
  nsresult GetRGBColorValue(nsIDOMRGBColor *_retval);

}

