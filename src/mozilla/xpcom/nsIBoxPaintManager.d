/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBoxPaintManager.idl
 */

module mozilla.xpcom.nsIBoxPaintManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIBoxPaintManager */
const char[] NS_IBOXPAINTMANAGER_IID_STR = "5da1e8f0-6255-4b9c-af80-aa3dad7f2fdb";

const nsIID NS_IBOXPAINTMANAGER_IID= 
  {0x5da1e8f0, 0x6255, 0x4b9c, 
    [ 0xaf, 0x80, 0xaa, 0x3d, 0xad, 0x7f, 0x2f, 0xdb ]};

extern(Windows)
interface nsIBoxPaintManager : nsISupports {
  static const char[] IID_STR = NS_IBOXPAINTMANAGER_IID_STR;
  static const nsIID IID = NS_IBOXPAINTMANAGER_IID;

  /* void paint (); */
  nsresult Paint();

}

