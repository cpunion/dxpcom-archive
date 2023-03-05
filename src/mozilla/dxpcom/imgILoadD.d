/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgILoad.idl
 */

module mozilla.dxpcom.imgILoadD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgILoad;


public import mozilla.dxpcom.imgILoadD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.imgIContainer;

public import mozilla.dxpcom.imgIContainerD;


/* starting wrapper class:    imgILoad */
/**
 * imgILoad interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see imagelib2
 */
class imgILoadD : public nsISupportsD {

  static const nsIID IID = IMGILOAD_IID;


  alias imgILoad InnerType;

  this(imgILoad intr){
    super(intr);
    this.inner = intr;
  }

  imgILoad opCast() {
    return inner;
  }

  void opAssign(imgILoad value) {
    inner = value;
  }

  /**
   * the image container...
   * @return the image object associated with the request.
   * @attention NEED DOCS
   */
  /* attribute imgIContainer image; */
  imgIContainerD  Image(){
    imgIContainer value;
    nsresult __result = inner.GetImage(&value);
    CheckException(__result);
    return new imgIContainerD(value);
  }
  void Image(imgIContainerD  aImage){
    imgIContainer value;
    nsresult __result = inner.SetImage(value);
    CheckException(__result);
  }

  /* readonly attribute PRBool isMultiPartChannel; */
  PRBool IsMultiPartChannel(){
    PRBool value;
    nsresult __result = inner.GetIsMultiPartChannel(&value);
    CheckException(__result);
    return value;
  }

private:
  imgILoad inner;

}

