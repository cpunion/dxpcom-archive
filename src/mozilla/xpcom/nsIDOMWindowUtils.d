/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMWindowUtils.idl
 */

module mozilla.xpcom.nsIDOMWindowUtils;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDOMWindowUtils */
const char[] NS_IDOMWINDOWUTILS_IID_STR = "8a157a4f-a81e-489f-baf2-bc8970d60472";

const nsIID NS_IDOMWINDOWUTILS_IID= 
  {0x8a157a4f, 0xa81e, 0x489f, 
    [ 0xba, 0xf2, 0xbc, 0x89, 0x70, 0xd6, 0x04, 0x72 ]};

/**
 * nsIDOMWindowUtils is intended for giving privileged script access to
 * additional properties and methods of nsIDOMWindow unavailable to
 * content script. Access this interface by calling getInterface on a DOMWindow.
 */
extern(Windows)
interface nsIDOMWindowUtils : nsISupports {
  static const char[] IID_STR = NS_IDOMWINDOWUTILS_IID_STR;
  static const nsIID IID = NS_IDOMWINDOWUTILS_IID;

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
  nsresult GetImageAnimationMode(PRUint16 *aImageAnimationMode);
  nsresult SetImageAnimationMode(PRUint16 aImageAnimationMode);

  /**
   * Function to get metadata associated with the window's current document
   * @param aName the name of the metadata.  This should be all lowercase.
   * @return the value of the metadata, or the empty string if it's not set
   */
  /* AString getDocumentMetadata (in AString aName); */
  nsresult GetDocumentMetadata(nsAString * aName, nsAString * _retval);

}

