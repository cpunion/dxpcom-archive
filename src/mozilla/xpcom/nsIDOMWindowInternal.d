/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMWindowInternal.idl
 */

module mozilla.xpcom.nsIDOMWindowInternal;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMWindow2;

public import mozilla.xpcom.nsIPrompt; /* forward declaration */

public import mozilla.xpcom.nsIControllers; /* forward declaration */

public import mozilla.xpcom.nsIDOMLocation; /* forward declaration */


/* starting interface:    nsIDOMWindowInternal */
const char[] NS_IDOMWINDOWINTERNAL_IID_STR = "f914492c-0138-4123-a634-6ef8e3f126f8";

const nsIID NS_IDOMWINDOWINTERNAL_IID= 
  {0xf914492c, 0x0138, 0x4123, 
    [ 0xa6, 0x34, 0x6e, 0xf8, 0xe3, 0xf1, 0x26, 0xf8 ]};

extern(Windows)
interface nsIDOMWindowInternal : nsIDOMWindow2 {
  static const char[] IID_STR = NS_IDOMWINDOWINTERNAL_IID_STR;
  static const nsIID IID = NS_IDOMWINDOWINTERNAL_IID;

  /* readonly attribute nsIDOMWindowInternal window; */
  nsresult GetWindow(nsIDOMWindowInternal  *aWindow);

  /* readonly attribute nsIDOMWindowInternal self; */
  nsresult GetSelf(nsIDOMWindowInternal  *aSelf);

  /* readonly attribute nsIDOMNavigator navigator; */
  nsresult GetNavigator(nsIDOMNavigator  *aNavigator);

  /* readonly attribute nsIDOMScreen screen; */
  nsresult GetScreen(nsIDOMScreen  *aScreen);

  /* readonly attribute nsIDOMHistory history; */
  nsresult GetHistory(nsIDOMHistory  *aHistory);

  /* readonly attribute nsIDOMWindow content; */
  nsresult GetContent(nsIDOMWindow  *aContent);

  /* [noscript] readonly attribute nsIPrompt prompter; */
  nsresult GetPrompter(nsIPrompt  *aPrompter);

  /* readonly attribute nsIDOMBarProp menubar; */
  nsresult GetMenubar(nsIDOMBarProp  *aMenubar);

  /* readonly attribute nsIDOMBarProp toolbar; */
  nsresult GetToolbar(nsIDOMBarProp  *aToolbar);

  /* readonly attribute nsIDOMBarProp locationbar; */
  nsresult GetLocationbar(nsIDOMBarProp  *aLocationbar);

  /* readonly attribute nsIDOMBarProp personalbar; */
  nsresult GetPersonalbar(nsIDOMBarProp  *aPersonalbar);

  /* readonly attribute nsIDOMBarProp statusbar; */
  nsresult GetStatusbar(nsIDOMBarProp  *aStatusbar);

  /* readonly attribute nsIDOMBarProp directories; */
  nsresult GetDirectories(nsIDOMBarProp  *aDirectories);

  /* readonly attribute boolean closed; */
  nsresult GetClosed(PRBool *aClosed);

  /* readonly attribute nsIDOMCrypto crypto; */
  nsresult GetCrypto(nsIDOMCrypto  *aCrypto);

  /* readonly attribute nsIDOMPkcs11 pkcs11; */
  nsresult GetPkcs11(nsIDOMPkcs11  *aPkcs11);

  /* readonly attribute nsIControllers controllers; */
  nsresult GetControllers(nsIControllers  *aControllers);

  /* attribute nsIDOMWindowInternal opener; */
  nsresult GetOpener(nsIDOMWindowInternal  *aOpener);
  nsresult SetOpener(nsIDOMWindowInternal  aOpener);

  /* attribute DOMString status; */
  nsresult GetStatus(nsAString * aStatus);
  nsresult SetStatus(nsAString * aStatus);

  /* attribute DOMString defaultStatus; */
  nsresult GetDefaultStatus(nsAString * aDefaultStatus);
  nsresult SetDefaultStatus(nsAString * aDefaultStatus);

  /* readonly attribute nsIDOMLocation location; */
  nsresult GetLocation(nsIDOMLocation  *aLocation);

  /* attribute long innerWidth; */
  nsresult GetInnerWidth(PRInt32 *aInnerWidth);
  nsresult SetInnerWidth(PRInt32 aInnerWidth);

  /* attribute long innerHeight; */
  nsresult GetInnerHeight(PRInt32 *aInnerHeight);
  nsresult SetInnerHeight(PRInt32 aInnerHeight);

  /* attribute long outerWidth; */
  nsresult GetOuterWidth(PRInt32 *aOuterWidth);
  nsresult SetOuterWidth(PRInt32 aOuterWidth);

  /* attribute long outerHeight; */
  nsresult GetOuterHeight(PRInt32 *aOuterHeight);
  nsresult SetOuterHeight(PRInt32 aOuterHeight);

  /* attribute long screenX; */
  nsresult GetScreenX(PRInt32 *aScreenX);
  nsresult SetScreenX(PRInt32 aScreenX);

  /* attribute long screenY; */
  nsresult GetScreenY(PRInt32 *aScreenY);
  nsresult SetScreenY(PRInt32 aScreenY);

  /* readonly attribute long pageXOffset; */
  nsresult GetPageXOffset(PRInt32 *aPageXOffset);

  /* readonly attribute long pageYOffset; */
  nsresult GetPageYOffset(PRInt32 *aPageYOffset);

  /* readonly attribute long scrollMaxX; */
  nsresult GetScrollMaxX(PRInt32 *aScrollMaxX);

  /* readonly attribute long scrollMaxY; */
  nsresult GetScrollMaxY(PRInt32 *aScrollMaxY);

  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

  /* attribute boolean fullScreen; */
  nsresult GetFullScreen(PRBool *aFullScreen);
  nsresult SetFullScreen(PRBool aFullScreen);

  /* void alert (in DOMString text); */
  nsresult Alert(nsAString * text);

  /* boolean confirm (in DOMString text); */
  nsresult Confirm(nsAString * text, PRBool *_retval);

  /* DOMString prompt (in DOMString aMessage, in DOMString aInitial, in DOMString aTitle, in unsigned long aSavePassword); */
  nsresult Prompt(nsAString * aMessage, nsAString * aInitial, nsAString * aTitle, PRUint32 aSavePassword, nsAString * _retval);

  /* void focus (); */
  nsresult Focus();

  /* void blur (); */
  nsresult Blur();

  /* void back (); */
  nsresult Back();

  /* void forward (); */
  nsresult Forward();

  /* void home (); */
  nsresult Home();

  /* void stop (); */
  nsresult Stop();

  /* void print (); */
  nsresult Print();

  /* void moveTo (in long xPos, in long yPos); */
  nsresult MoveTo(PRInt32 xPos, PRInt32 yPos);

  /* void moveBy (in long xDif, in long yDif); */
  nsresult MoveBy(PRInt32 xDif, PRInt32 yDif);

  /* void resizeTo (in long width, in long height); */
  nsresult ResizeTo(PRInt32 width, PRInt32 height);

  /* void resizeBy (in long widthDif, in long heightDif); */
  nsresult ResizeBy(PRInt32 widthDif, PRInt32 heightDif);

  /* void scroll (in long xScroll, in long yScroll); */
  nsresult Scroll(PRInt32 xScroll, PRInt32 yScroll);

  /**
   * Open a new window with this one as the parent.  This method will
   * NOT examine the JS stack for purposes of determining a caller.
   * This window will be used for security checks during the search by
   * name and the default character set on the newly opened window
   * will just be the default character set of this window.
   */
  /* [noscript] nsIDOMWindow open (in DOMString url, in DOMString name, in DOMString options); */
  nsresult Open(nsAString * url, nsAString * name, nsAString * options, nsIDOMWindow *_retval);

  /* [noscript] nsIDOMWindow openDialog (in DOMString url, in DOMString name, in DOMString options, in nsISupports aExtraArgument); */
  nsresult OpenDialog(nsAString * url, nsAString * name, nsAString * options, nsISupports aExtraArgument, nsIDOMWindow *_retval);

  /* void close (); */
  nsresult Close();

  /* void updateCommands (in DOMString action); */
  nsresult UpdateCommands(nsAString * action);

  /* [noscript] boolean find (in DOMString str, in boolean caseSensitive, in boolean backwards, in boolean wrapAround, in boolean wholeWord, in boolean searchInFrames, in boolean showDialog); */
  nsresult Find(nsAString * str, PRBool caseSensitive, PRBool backwards, PRBool wrapAround, PRBool wholeWord, PRBool searchInFrames, PRBool showDialog, PRBool *_retval);

  /* DOMString atob (in DOMString aAsciiString); */
  nsresult Atob(nsAString * aAsciiString, nsAString * _retval);

  /* DOMString btoa (in DOMString aBase64Data); */
  nsresult Btoa(nsAString * aBase64Data, nsAString * _retval);

  /* readonly attribute nsIDOMElement frameElement; */
  nsresult GetFrameElement(nsIDOMElement  *aFrameElement);

}

