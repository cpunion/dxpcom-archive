/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGURIReference.idl
 */

module mozilla.xpcom.nsIDOMSVGURIReference;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMSVGAnimatedString; /* forward declaration */


/* starting interface:    nsIDOMSVGURIReference */
const char[] NS_IDOMSVGURIREFERENCE_IID_STR = "8092b5f3-dc8a-459c-94f1-92f8011f2438";

const nsIID NS_IDOMSVGURIREFERENCE_IID= 
  {0x8092b5f3, 0xdc8a, 0x459c, 
    [ 0x94, 0xf1, 0x92, 0xf8, 0x01, 0x1f, 0x24, 0x38 ]};

extern(Windows)
interface nsIDOMSVGURIReference : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGURIREFERENCE_IID_STR;
  static const nsIID IID = NS_IDOMSVGURIREFERENCE_IID;

  /* readonly attribute nsIDOMSVGAnimatedString href; */
  nsresult GetHref(nsIDOMSVGAnimatedString  *aHref);

}

