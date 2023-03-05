/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMWindowUtils.idl
 */

module mozilla.dxpcom.nsIDOMWindowUtilsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMWindowUtils;


public import mozilla.dxpcom.nsIDOMWindowUtilsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDOMWindowUtils */
/**
 * nsIDOMWindowUtils is intended for giving privileged script access to
 * additional properties and methods of nsIDOMWindow unavailable to
 * content script. Access this interface by calling getInterface on a DOMWindow.
 */
class nsIDOMWindowUtilsD : public nsISupportsD {

  static const nsIID IID = NS_IDOMWINDOWUTILS_IID;


  alias nsIDOMWindowUtils InnerType;

  this(nsIDOMWindowUtils intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMWindowUtils opCast() {
    return inner;
  }

  void opAssign(nsIDOMWindowUtils value) {
    inner = value;
  }

  /**
   * Image animation mode of the window. When this attribute's value
   * is changed, the implementation should set all images in the window
   * to the given value. That is, when set to kDontAnimMode, all images
   * will stop animating. The attribute's value must be one of the
   * animationMode values from imgIContainer.
   * @note Images may individually override the window's setting after
   *       the window's mode is set. Therefore images given different modes
   *       since the last setting of the window's mode may behave
   *       out of line with the window's overall mode.
   * @note The attribute's value is the window's overall mode. It may
   *       for example continue to report kDontAnimMode after all images
   *       have subsequently been individually animated.
   * @note Only images immediately in this window are affected;
   *       this is not recursive to subwindows.
   * @see imgIContainer
   */
  /* attribute unsigned short imageAnimationMode; */
  PRUint16 ImageAnimationMode(){
    PRUint16 value;
    nsresult __result = inner.GetImageAnimationMode(&value);
    CheckException(__result);
    return value;
  }
  void ImageAnimationMode(PRUint16 aImageAnimationMode){
    nsresult __result = inner.SetImageAnimationMode(aImageAnimationMode);
    CheckException(__result);
  }

  /**
   * Function to get metadata associated with the window's current document
   * @param aName the name of the metadata.  This should be all lowercase.
   * @return the value of the metadata, or the empty string if it's not set
   */
  /* AString getDocumentMetadata (in AString aName); */
  wchar[] GetDocumentMetadata(wchar[] aName){
    scope auto _aName = new AString(aName);
    scope auto _retval = new AString;
    nsresult __result = inner.GetDocumentMetadata(cast(nsAString*)_aName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIDOMWindowUtils inner;

}

