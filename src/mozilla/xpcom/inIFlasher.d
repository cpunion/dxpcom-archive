/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIFlasher.idl
 */

module mozilla.xpcom.inIFlasher;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */


/* starting interface:    inIFlasher */
const char[] INIFLASHER_IID_STR = "7b4a099f-6f6e-4565-977b-fb622adbff49";

const nsIID INIFLASHER_IID= 
  {0x7b4a099f, 0x6f6e, 0x4565, 
    [ 0x97, 0x7b, 0xfb, 0x62, 0x2a, 0xdb, 0xff, 0x49 ]};

extern(Windows)
interface inIFlasher : nsISupports {
  static const char[] IID_STR = INIFLASHER_IID_STR;
  static const nsIID IID = INIFLASHER_IID;

  /* attribute DOMString color; */
  nsresult GetColor(nsAString * aColor);
  nsresult SetColor(nsAString * aColor);

  /* attribute boolean invert; */
  nsresult GetInvert(PRBool *aInvert);
  nsresult SetInvert(PRBool aInvert);

  /* attribute unsigned short thickness; */
  nsresult GetThickness(PRUint16 *aThickness);
  nsresult SetThickness(PRUint16 aThickness);

  /* void drawElementOutline (in nsIDOMElement aElement); */
  nsresult DrawElementOutline(nsIDOMElement aElement);

  /* void repaintElement (in nsIDOMElement aElement); */
  nsresult RepaintElement(nsIDOMElement aElement);

  /* void scrollElementIntoView (in nsIDOMElement aElement); */
  nsresult ScrollElementIntoView(nsIDOMElement aElement);

}

