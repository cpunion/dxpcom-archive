/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICanvasBoxObject.idl
 */

module mozilla.xpcom.nsICanvasBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICanvasBoxObject */
const char[] NS_ICANVASBOXOBJECT_IID_STR = "6990a6e4-1c9d-4790-a7cb-2e32c8407a66";

const nsIID NS_ICANVASBOXOBJECT_IID= 
  {0x6990a6e4, 0x1c9d, 0x4790, 
    [ 0xa7, 0xcb, 0x2e, 0x32, 0xc8, 0x40, 0x7a, 0x66 ]};

extern(Windows)
interface nsICanvasBoxObject : nsISupports {
  static const char[] IID_STR = NS_ICANVASBOXOBJECT_IID_STR;
  static const nsIID IID = NS_ICANVASBOXOBJECT_IID;

  /* nsISupports getContext (in string aContext); */
  nsresult GetContext(char *aContext, nsISupports *_retval);

}


/* starting interface:    nsICanvasFrame */
const char[] NS_ICANVASFRAME_IID_STR = "1d6f084b-cb1d-4068-a20f-df11f7955017";

const nsIID NS_ICANVASFRAME_IID= 
  {0x1d6f084b, 0xcb1d, 0x4068, 
    [ 0xa2, 0x0f, 0xdf, 0x11, 0xf7, 0x95, 0x50, 0x17 ]};

extern(Windows)
interface nsICanvasFrame : nsISupports {
  static const char[] IID_STR = NS_ICANVASFRAME_IID_STR;
  static const nsIID IID = NS_ICANVASFRAME_IID;

  /* nsISupports getContext (in string aContext); */
  nsresult GetContext(char *aContext, nsISupports *_retval);

}

