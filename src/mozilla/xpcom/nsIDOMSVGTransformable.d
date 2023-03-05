/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTransformable.idl
 */

module mozilla.xpcom.nsIDOMSVGTransformable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGLocatable;

public import mozilla.xpcom.nsIDOMSVGAnimTransformList;


/* starting interface:    nsIDOMSVGTransformable */
const char[] NS_IDOMSVGTRANSFORMABLE_IID_STR = "b81f6e37-1842-4534-a546-1ab86e59a3c6";

const nsIID NS_IDOMSVGTRANSFORMABLE_IID= 
  {0xb81f6e37, 0x1842, 0x4534, 
    [ 0xa5, 0x46, 0x1a, 0xb8, 0x6e, 0x59, 0xa3, 0xc6 ]};

extern(Windows)
interface nsIDOMSVGTransformable : nsIDOMSVGLocatable {
  static const char[] IID_STR = NS_IDOMSVGTRANSFORMABLE_IID_STR;
  static const nsIID IID = NS_IDOMSVGTRANSFORMABLE_IID;

  /* readonly attribute nsIDOMSVGAnimatedTransformList transform; */
  nsresult GetTransform(nsIDOMSVGAnimatedTransformList  *aTransform);

}

