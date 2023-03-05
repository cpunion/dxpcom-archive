/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionImageService.idl
 */

module mozilla.dxpcom.nsISelectionImageServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISelectionImageService;


public import mozilla.dxpcom.nsISelectionImageServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISelectionImageService */
class nsISelectionImageServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISELECTIONIMAGESERVICE_IID;


  alias nsISelectionImageService InnerType;

  this(nsISelectionImageService intr){
    super(intr);
    this.inner = intr;
  }

  nsISelectionImageService opCast() {
    return inner;
  }

  void opAssign(nsISelectionImageService value) {
    inner = value;
  }

  /**
	* the current image is marked as invalid
	*/
  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

  /**
	* retrieve the image for alpha blending
	*/
  /* void getImage (in short selectionValue, out imgIContainer container); */
  void GetImage(PRInt16 selectionValue, out imgIContainer * container){
    nsresult __result = inner.GetImage(selectionValue, &container);
    CheckException(__result);
  }

private:
  nsISelectionImageService inner;

}

