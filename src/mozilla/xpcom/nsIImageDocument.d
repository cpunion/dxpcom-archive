/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImageDocument.idl
 */

module mozilla.xpcom.nsIImageDocument;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.imgIRequest; /* forward declaration */


/* starting interface:    nsIImageDocument */
const char[] NS_IIMAGEDOCUMENT_IID_STR = "7b80eebc-c98e-4461-8bdb-6e3b6e828890";

const nsIID NS_IIMAGEDOCUMENT_IID= 
  {0x7b80eebc, 0xc98e, 0x4461, 
    [ 0x8b, 0xdb, 0x6e, 0x3b, 0x6e, 0x82, 0x88, 0x90 ]};

extern(Windows)
interface nsIImageDocument : nsISupports {
  static const char[] IID_STR = NS_IIMAGEDOCUMENT_IID_STR;
  static const nsIID IID = NS_IIMAGEDOCUMENT_IID;

  /* readonly attribute boolean imageResizingEnabled; */
  nsresult GetImageResizingEnabled(PRBool *aImageResizingEnabled);

  /* readonly attribute boolean imageIsOverflowing; */
  nsresult GetImageIsOverflowing(PRBool *aImageIsOverflowing);

  /* readonly attribute boolean imageIsResized; */
  nsresult GetImageIsResized(PRBool *aImageIsResized);

  /* readonly attribute imgIRequest imageRequest; */
  nsresult GetImageRequest(imgIRequest  *aImageRequest);

  /* void shrinkToFit (); */
  nsresult ShrinkToFit();

  /* void restoreImage (); */
  nsresult RestoreImage();

  /* void restoreImageTo (in long x, in long y); */
  nsresult RestoreImageTo(PRInt32 x, PRInt32 y);

  /* void toggleImageSize (); */
  nsresult ToggleImageSize();

}

