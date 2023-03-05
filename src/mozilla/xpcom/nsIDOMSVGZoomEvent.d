/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGZoomEvent.idl
 */

module mozilla.xpcom.nsIDOMSVGZoomEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMUIEvent;

public import mozilla.xpcom.nsIDOMSVGRect; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGPoint; /* forward declaration */


/* starting interface:    nsIDOMSVGZoomEvent */
const char[] NS_IDOMSVGZOOMEVENT_IID_STR = "339a8c7a-552e-4cbc-8d96-8370a3939358";

const nsIID NS_IDOMSVGZOOMEVENT_IID= 
  {0x339a8c7a, 0x552e, 0x4cbc, 
    [ 0x8d, 0x96, 0x83, 0x70, 0xa3, 0x93, 0x93, 0x58 ]};

extern(Windows)
interface nsIDOMSVGZoomEvent : nsIDOMUIEvent {
  static const char[] IID_STR = NS_IDOMSVGZOOMEVENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGZOOMEVENT_IID;

  /* readonly attribute nsIDOMSVGRect zoomRectScreen; */
  nsresult GetZoomRectScreen(nsIDOMSVGRect  *aZoomRectScreen);

  /* readonly attribute float previousScale; */
  nsresult GetPreviousScale(float *aPreviousScale);

  /* readonly attribute nsIDOMSVGPoint previousTranslate; */
  nsresult GetPreviousTranslate(nsIDOMSVGPoint  *aPreviousTranslate);

  /* readonly attribute float newScale; */
  nsresult GetNewScale(float *aNewScale);

  /* readonly attribute nsIDOMSVGPoint newTranslate; */
  nsresult GetNewTranslate(nsIDOMSVGPoint  *aNewTranslate);

}

