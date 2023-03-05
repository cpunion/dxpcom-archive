/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTextContentElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGTextContentElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGTextContentElement;


public import mozilla.dxpcom.nsIDOMSVGTextContentElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;

import mozilla.dxpcom.nsIDOMSVGAnimatedEnumD;

public import mozilla.xpcom.nsIDOMSVGPoint;

public import mozilla.dxpcom.nsIDOMSVGPointD;

public import mozilla.xpcom.nsIDOMSVGRect;

public import mozilla.dxpcom.nsIDOMSVGRectD;


/* starting wrapper class:    nsIDOMSVGTextContentElement */
class nsIDOMSVGTextContentElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGTEXTCONTENTELEMENT_IID;


  alias nsIDOMSVGTextContentElement InnerType;

  this(nsIDOMSVGTextContentElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGTextContentElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGTextContentElement value) {
    inner = value;
  }

  enum { LENGTHADJUST_UNKNOWN = 0U }

  enum { LENGTHADJUST_SPACING = 1U }

  enum { LENGTHADJUST_SPACINGANDGLYPHS = 2U }

  /* readonly attribute nsIDOMSVGAnimatedLength textLength; */
  nsIDOMSVGAnimatedLengthD  TextLength(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetTextLength(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedEnumeration lengthAdjust; */
  nsIDOMSVGAnimatedEnumerationD  LengthAdjust(){
    nsIDOMSVGAnimatedEnumeration value;
    nsresult __result = inner.GetLengthAdjust(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedEnumerationD(value);
  }

  /* long getNumberOfChars (); */
  PRInt32 GetNumberOfChars(){
    PRInt32 _retval;
    nsresult __result = inner.GetNumberOfChars(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* float getComputedTextLength (); */
  float GetComputedTextLength(){
    float _retval;
    nsresult __result = inner.GetComputedTextLength(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* float getSubStringLength (in unsigned long charnum, in unsigned long nchars); */
  float GetSubStringLength(PRUint32 charnum, PRUint32 nchars){
    float _retval;
    nsresult __result = inner.GetSubStringLength(charnum, nchars, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIDOMSVGPoint getStartPositionOfChar (in unsigned long charnum); */
  nsIDOMSVGPointD  GetStartPositionOfChar(PRUint32 charnum){
    nsIDOMSVGPoint _retval;
    nsresult __result = inner.GetStartPositionOfChar(charnum, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPointD(_retval);
  }

  /* nsIDOMSVGPoint getEndPositionOfChar (in unsigned long charnum); */
  nsIDOMSVGPointD  GetEndPositionOfChar(PRUint32 charnum){
    nsIDOMSVGPoint _retval;
    nsresult __result = inner.GetEndPositionOfChar(charnum, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPointD(_retval);
  }

  /* nsIDOMSVGRect getExtentOfChar (in unsigned long charnum); */
  nsIDOMSVGRectD  GetExtentOfChar(PRUint32 charnum){
    nsIDOMSVGRect _retval;
    nsresult __result = inner.GetExtentOfChar(charnum, &_retval);
    CheckException(__result);
    return new nsIDOMSVGRectD(_retval);
  }

  /* float getRotationOfChar (in unsigned long charnum); */
  float GetRotationOfChar(PRUint32 charnum){
    float _retval;
    nsresult __result = inner.GetRotationOfChar(charnum, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getCharNumAtPosition (in nsIDOMSVGPoint point); */
  PRInt32 GetCharNumAtPosition(nsIDOMSVGPointD point){
    PRInt32 _retval;
    nsresult __result = inner.GetCharNumAtPosition(point ? cast(nsIDOMSVGPoint)point : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void selectSubString (in unsigned long charnum, in unsigned long nchars); */
  void SelectSubString(PRUint32 charnum, PRUint32 nchars){
    nsresult __result = inner.SelectSubString(charnum, nchars);
    CheckException(__result);
  }

private:
  nsIDOMSVGTextContentElement inner;

}

