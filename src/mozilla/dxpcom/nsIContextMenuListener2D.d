/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContextMenuListener2.idl
 */

module mozilla.dxpcom.nsIContextMenuListener2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIContextMenuListener2;


public import mozilla.dxpcom.nsIContextMenuListener2D;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.imgIContainer;

public import mozilla.dxpcom.imgIContainerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIContextMenuListener2;

import mozilla.dxpcom.nsIContextMenuListener2D;


/* starting wrapper class:    nsIContextMenuListener2 */
/**
 * nsIContextMenuListener2
 *
 * This is an extended version of nsIContextMenuListener
 * It provides a helper class, nsIContextMenuInfo, to allow access to
 * background images as well as various utilities.
 *
 * @see nsIContextMenuListener
 * @see nsIContextMenuInfo
 *
 * @status UNDER_REVIEW
 */
class nsIContextMenuListener2D : public nsISupportsD {

  static const nsIID IID = NS_ICONTEXTMENULISTENER2_IID;


  alias nsIContextMenuListener2 InnerType;

  this(nsIContextMenuListener2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIContextMenuListener2 opCast() {
    return inner;
  }

  void opAssign(nsIContextMenuListener2 value) {
    inner = value;
  }

  /** Flag. No context. */
  enum { CONTEXT_NONE = 0U }

  /** Flag. Context is a link element. */
  enum { CONTEXT_LINK = 1U }

  /** Flag. Context is an image element. */
  enum { CONTEXT_IMAGE = 2U }

  /** Flag. Context is the whole document. */
  enum { CONTEXT_DOCUMENT = 4U }

  /** Flag. Context is a text area element. */
  enum { CONTEXT_TEXT = 8U }

  /** Flag. Context is an input element. */
  enum { CONTEXT_INPUT = 16U }

  /** Flag. Context is a background image. */
  enum { CONTEXT_BACKGROUND_IMAGE = 32U }

  /**
   * Called when the browser receives a context menu event (e.g. user is right-mouse
   * clicking somewhere on the document). The combination of flags, along with the
   * attributes of <CODE>aUtils</CODE>, indicate where and what was clicked on.
   *
   * The following table describes what context flags and node combinations are
   * possible.
   *
   * aContextFlags                  aUtils.targetNode
   *
   * CONTEXT_LINK                   <A>
   * CONTEXT_IMAGE                  <IMG>
   * CONTEXT_IMAGE | CONTEXT_LINK   <IMG> with <A> as an ancestor
   * CONTEXT_INPUT                  <INPUT>
   * CONTEXT_INPUT | CONTEXT_IMAGE  <INPUT> with type=image
   * CONTEXT_TEXT                   <TEXTAREA>
   * CONTEXT_DOCUMENT               <HTML>
   * CONTEXT_BACKGROUND_IMAGE       <HTML> with background image
   *
   * @param aContextFlags           Flags indicating the kind of context.
   * @param aUtils                  Context information and helper utilities.
   *
   * @see nsIContextMenuInfo
   */
  /* void onShowContextMenu (in unsigned long aContextFlags, in nsIContextMenuInfo aUtils); */
  void OnShowContextMenu(PRUint32 aContextFlags, nsIContextMenuInfoD aUtils){
    nsresult __result = inner.OnShowContextMenu(aContextFlags, aUtils ? cast(nsIContextMenuInfo)aUtils : null);
    CheckException(__result);
  }

private:
  nsIContextMenuListener2 inner;

}


/* starting wrapper class:    nsIContextMenuInfo */
class nsIContextMenuInfoD : public nsISupportsD {

  static const nsIID IID = NS_ICONTEXTMENUINFO_IID;


  alias nsIContextMenuInfo InnerType;

  this(nsIContextMenuInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIContextMenuInfo opCast() {
    return inner;
  }

  void opAssign(nsIContextMenuInfo value) {
    inner = value;
  }

  /**
 * nsIContextMenuInfo
 *
 * A helper object for implementors of nsIContextMenuListener2.
 *
 * @status UNDER_REVIEW
 */
/**
   * The DOM context menu event.
   */
  /* readonly attribute nsIDOMEvent mouseEvent; */
  nsIDOMEventD  MouseEvent(){
    nsIDOMEvent value;
    nsresult __result = inner.GetMouseEvent(&value);
    CheckException(__result);
    return new nsIDOMEventD(value);
  }

  /**
   * The DOM node most relevant to the context.
   */
  /* readonly attribute nsIDOMNode targetNode; */
  nsIDOMNodeD  TargetNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetTargetNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /**
   * Given the <CODE>CONTEXT_LINK</CODE> flag, <CODE>targetNode</CODE> may not
   * nescesarily be a link. This returns the anchor from <CODE>targetNode</CODE>
   * if it has one or that of its nearest ancestor if it does not.
   */
  /* readonly attribute AString associatedLink; */
  wchar[] AssociatedLink(){
    scope auto value = new AString();
    nsresult __result = inner.GetAssociatedLink(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Given the <CODE>CONTEXT_IMAGE</CODE> flag, these methods can be
   * used in order to get the image for viewing, saving, or for the clipboard.
   *
   * @return <CODE>NS_OK</CODE> if successful, otherwise <CODE>NS_ERROR_FAILURE</CODE> if no
   * image was found, or NS_ERROR_NULL_POINTER if an internal error occurs where we think there 
   * is an image, but for some reason it cannot be returned.
   */
  /* readonly attribute imgIContainer imageContainer; */
  imgIContainerD  ImageContainer(){
    imgIContainer value;
    nsresult __result = inner.GetImageContainer(&value);
    CheckException(__result);
    return new imgIContainerD(value);
  }

  /* readonly attribute nsIURI imageSrc; */
  nsIURID  ImageSrc(){
    nsIURI value;
    nsresult __result = inner.GetImageSrc(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
   * Given the <CODE>CONTEXT_BACKGROUND_IMAGE</CODE> flag, these methods can be
   * used in order to get the image for viewing, saving, or for the clipboard.
   *
   * @return <CODE>NS_OK</CODE> if successful, otherwise <CODE>NS_ERROR_FAILURE</CODE> if no background
   * image was found, or NS_ERROR_NULL_POINTER if an internal error occurs where we think there is a 
   * background image, but for some reason it cannot be returned.
   */
  /* readonly attribute imgIContainer backgroundImageContainer; */
  imgIContainerD  BackgroundImageContainer(){
    imgIContainer value;
    nsresult __result = inner.GetBackgroundImageContainer(&value);
    CheckException(__result);
    return new imgIContainerD(value);
  }

  /* readonly attribute nsIURI backgroundImageSrc; */
  nsIURID  BackgroundImageSrc(){
    nsIURI value;
    nsresult __result = inner.GetBackgroundImageSrc(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

private:
  nsIContextMenuInfo inner;

}

