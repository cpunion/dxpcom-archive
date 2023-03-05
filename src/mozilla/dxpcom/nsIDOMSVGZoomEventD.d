/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGZoomEvent.idl
 */

module mozilla.dxpcom.nsIDOMSVGZoomEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGZoomEvent;


public import mozilla.dxpcom.nsIDOMSVGZoomEventD;

public import mozilla.xpcom.nsIDOMUIEvent;
public import mozilla.dxpcom.nsIDOMUIEventD;

public import mozilla.xpcom.nsIDOMSVGRect;

public import mozilla.dxpcom.nsIDOMSVGRectD;

public import mozilla.xpcom.nsIDOMSVGPoint;

public import mozilla.dxpcom.nsIDOMSVGPointD;


/* starting wrapper class:    nsIDOMSVGZoomEvent */
class nsIDOMSVGZoomEventD : public nsIDOMUIEventD {

  static const nsIID IID = NS_IDOMSVGZOOMEVENT_IID;


  alias nsIDOMSVGZoomEvent InnerType;

  this(nsIDOMSVGZoomEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGZoomEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGZoomEvent value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGRect zoomRectScreen; */
  nsIDOMSVGRectD  ZoomRectScreen(){
    nsIDOMSVGRect value;
    nsresult __result = inner.GetZoomRectScreen(&value);
    CheckException(__result);
    return new nsIDOMSVGRectD(value);
  }

  /* readonly attribute float previousScale; */
  float PreviousScale(){
    float value;
    nsresult __result = inner.GetPreviousScale(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMSVGPoint previousTranslate; */
  nsIDOMSVGPointD  PreviousTranslate(){
    nsIDOMSVGPoint value;
    nsresult __result = inner.GetPreviousTranslate(&value);
    CheckException(__result);
    return new nsIDOMSVGPointD(value);
  }

  /* readonly attribute float newScale; */
  float NewScale(){
    float value;
    nsresult __result = inner.GetNewScale(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMSVGPoint newTranslate; */
  nsIDOMSVGPointD  NewTranslate(){
    nsIDOMSVGPoint value;
    nsresult __result = inner.GetNewTranslate(&value);
    CheckException(__result);
    return new nsIDOMSVGPointD(value);
  }

private:
  nsIDOMSVGZoomEvent inner;

}

