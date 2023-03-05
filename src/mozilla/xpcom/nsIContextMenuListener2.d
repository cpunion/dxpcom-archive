/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContextMenuListener2.idl
 */

module mozilla.xpcom.nsIContextMenuListener2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMEvent; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.imgIContainer; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIContextMenuListener2;


/* starting interface:    nsIContextMenuListener2 */
const char[] NS_ICONTEXTMENULISTENER2_IID_STR = "7fb719b3-d804-4964-9596-77cf924ee314";

const nsIID NS_ICONTEXTMENULISTENER2_IID= 
  {0x7fb719b3, 0xd804, 0x4964, 
    [ 0x95, 0x96, 0x77, 0xcf, 0x92, 0x4e, 0xe3, 0x14 ]};

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
extern(Windows)
interface nsIContextMenuListener2 : nsISupports {
  static const char[] IID_STR = NS_ICONTEXTMENULISTENER2_IID_STR;
  static const nsIID IID = NS_ICONTEXTMENULISTENER2_IID;

  /** Flag. No context. */
  enum { CONTEXT_NONE = 0U };

  /** Flag. Context is a link element. */
  enum { CONTEXT_LINK = 1U };

  /** Flag. Context is an image element. */
  enum { CONTEXT_IMAGE = 2U };

  /** Flag. Context is the whole document. */
  enum { CONTEXT_DOCUMENT = 4U };

  /** Flag. Context is a text area element. */
  enum { CONTEXT_TEXT = 8U };

  /** Flag. Context is an input element. */
  enum { CONTEXT_INPUT = 16U };

  /** Flag. Context is a background image. */
  enum { CONTEXT_BACKGROUND_IMAGE = 32U };

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
  nsresult OnShowContextMenu(PRUint32 aContextFlags, nsIContextMenuInfo aUtils);

}


/* starting interface:    nsIContextMenuInfo */
const char[] NS_ICONTEXTMENUINFO_IID_STR = "2f977d56-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_ICONTEXTMENUINFO_IID= 
  {0x2f977d56, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

extern(Windows)
interface nsIContextMenuInfo : nsISupports {
  static const char[] IID_STR = NS_ICONTEXTMENUINFO_IID_STR;
  static const nsIID IID = NS_ICONTEXTMENUINFO_IID;

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
  nsresult GetMouseEvent(nsIDOMEvent  *aMouseEvent);

  /**
   * The DOM node most relevant to the context.
   */
  /* readonly attribute nsIDOMNode targetNode; */
  nsresult GetTargetNode(nsIDOMNode  *aTargetNode);

  /**
   * Given the <CODE>CONTEXT_LINK</CODE> flag, <CODE>targetNode</CODE> may not
   * nescesarily be a link. This returns the anchor from <CODE>targetNode</CODE>
   * if it has one or that of its nearest ancestor if it does not.
   */
  /* readonly attribute AString associatedLink; */
  nsresult GetAssociatedLink(nsAString * aAssociatedLink);

  /**
   * Given the <CODE>CONTEXT_IMAGE</CODE> flag, these methods can be
   * used in order to get the image for viewing, saving, or for the clipboard.
   *
   * @return <CODE>NS_OK</CODE> if successful, otherwise <CODE>NS_ERROR_FAILURE</CODE> if no
   * image was found, or NS_ERROR_NULL_POINTER if an internal error occurs where we think there 
   * is an image, but for some reason it cannot be returned.
   */
  /* readonly attribute imgIContainer imageContainer; */
  nsresult GetImageContainer(imgIContainer  *aImageContainer);

  /* readonly attribute nsIURI imageSrc; */
  nsresult GetImageSrc(nsIURI  *aImageSrc);

  /**
   * Given the <CODE>CONTEXT_BACKGROUND_IMAGE</CODE> flag, these methods can be
   * used in order to get the image for viewing, saving, or for the clipboard.
   *
   * @return <CODE>NS_OK</CODE> if successful, otherwise <CODE>NS_ERROR_FAILURE</CODE> if no background
   * image was found, or NS_ERROR_NULL_POINTER if an internal error occurs where we think there is a 
   * background image, but for some reason it cannot be returned.
   */
  /* readonly attribute imgIContainer backgroundImageContainer; */
  nsresult GetBackgroundImageContainer(imgIContainer  *aBackgroundImageContainer);

  /* readonly attribute nsIURI backgroundImageSrc; */
  nsresult GetBackgroundImageSrc(nsIURI  *aBackgroundImageSrc);

}

