/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImageDocument.idl
 */

module mozilla.dxpcom.nsIImageDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImageDocument;


public import mozilla.dxpcom.nsIImageDocumentD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.imgIRequest;

public import mozilla.dxpcom.imgIRequestD;


/* starting wrapper class:    nsIImageDocument */
class nsIImageDocumentD : public nsISupportsD {

  static const nsIID IID = NS_IIMAGEDOCUMENT_IID;


  alias nsIImageDocument InnerType;

  this(nsIImageDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIImageDocument opCast() {
    return inner;
  }

  void opAssign(nsIImageDocument value) {
    inner = value;
  }

  /* readonly attribute boolean imageResizingEnabled; */
  PRBool ImageResizingEnabled(){
    PRBool value;
    nsresult __result = inner.GetImageResizingEnabled(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean imageIsOverflowing; */
  PRBool ImageIsOverflowing(){
    PRBool value;
    nsresult __result = inner.GetImageIsOverflowing(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean imageIsResized; */
  PRBool ImageIsResized(){
    PRBool value;
    nsresult __result = inner.GetImageIsResized(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute imgIRequest imageRequest; */
  imgIRequestD  ImageRequest(){
    imgIRequest value;
    nsresult __result = inner.GetImageRequest(&value);
    CheckException(__result);
    return new imgIRequestD(value);
  }

  /* void shrinkToFit (); */
  void ShrinkToFit(){
    nsresult __result = inner.ShrinkToFit();
    CheckException(__result);
  }

  /* void restoreImage (); */
  void RestoreImage(){
    nsresult __result = inner.RestoreImage();
    CheckException(__result);
  }

  /* void restoreImageTo (in long x, in long y); */
  void RestoreImageTo(PRInt32 x, PRInt32 y){
    nsresult __result = inner.RestoreImageTo(x, y);
    CheckException(__result);
  }

  /* void toggleImageSize (); */
  void ToggleImageSize(){
    nsresult __result = inner.ToggleImageSize();
    CheckException(__result);
  }

private:
  nsIImageDocument inner;

}

