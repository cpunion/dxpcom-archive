/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMWindowInternal.idl
 */

module mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMWindowInternal;


public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIDOMWindow2;
public import mozilla.dxpcom.nsIDOMWindow2D;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;

public import mozilla.xpcom.nsIControllers;

public import mozilla.dxpcom.nsIControllersD;

public import mozilla.xpcom.nsIDOMLocation;

public import mozilla.dxpcom.nsIDOMLocationD;


/* starting wrapper class:    nsIDOMWindowInternal */
class nsIDOMWindowInternalD : public nsIDOMWindow2D {

  static const nsIID IID = NS_IDOMWINDOWINTERNAL_IID;


  alias nsIDOMWindowInternal InnerType;

  this(nsIDOMWindowInternal intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMWindowInternal opCast() {
    return inner;
  }

  void opAssign(nsIDOMWindowInternal value) {
    inner = value;
  }

  /* readonly attribute nsIDOMWindowInternal window; */
  nsIDOMWindowInternalD  Window(){
    nsIDOMWindowInternal value;
    nsresult __result = inner.GetWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowInternalD(value);
  }

  /* readonly attribute nsIDOMWindowInternal self; */
  nsIDOMWindowInternalD  Self(){
    nsIDOMWindowInternal value;
    nsresult __result = inner.GetSelf(&value);
    CheckException(__result);
    return new nsIDOMWindowInternalD(value);
  }

  /* readonly attribute nsIDOMNavigator navigator; */
  nsIDOMNavigatorD  Navigator(){
    nsIDOMNavigator value;
    nsresult __result = inner.GetNavigator(&value);
    CheckException(__result);
    return new nsIDOMNavigatorD(value);
  }

  /* readonly attribute nsIDOMScreen screen; */
  nsIDOMScreenD  Screen(){
    nsIDOMScreen value;
    nsresult __result = inner.GetScreen(&value);
    CheckException(__result);
    return new nsIDOMScreenD(value);
  }

  /* readonly attribute nsIDOMHistory history; */
  nsIDOMHistoryD  History(){
    nsIDOMHistory value;
    nsresult __result = inner.GetHistory(&value);
    CheckException(__result);
    return new nsIDOMHistoryD(value);
  }

  /* readonly attribute nsIDOMWindow content; */
  nsIDOMWindowD  Content(){
    nsIDOMWindow value;
    nsresult __result = inner.GetContent(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

  /* [noscript] readonly attribute nsIPrompt prompter; */
  nsIPromptD  Prompter(){
    nsIPrompt value;
    nsresult __result = inner.GetPrompter(&value);
    CheckException(__result);
    return new nsIPromptD(value);
  }

  /* readonly attribute nsIDOMBarProp menubar; */
  nsIDOMBarPropD  Menubar(){
    nsIDOMBarProp value;
    nsresult __result = inner.GetMenubar(&value);
    CheckException(__result);
    return new nsIDOMBarPropD(value);
  }

  /* readonly attribute nsIDOMBarProp toolbar; */
  nsIDOMBarPropD  Toolbar(){
    nsIDOMBarProp value;
    nsresult __result = inner.GetToolbar(&value);
    CheckException(__result);
    return new nsIDOMBarPropD(value);
  }

  /* readonly attribute nsIDOMBarProp locationbar; */
  nsIDOMBarPropD  Locationbar(){
    nsIDOMBarProp value;
    nsresult __result = inner.GetLocationbar(&value);
    CheckException(__result);
    return new nsIDOMBarPropD(value);
  }

  /* readonly attribute nsIDOMBarProp personalbar; */
  nsIDOMBarPropD  Personalbar(){
    nsIDOMBarProp value;
    nsresult __result = inner.GetPersonalbar(&value);
    CheckException(__result);
    return new nsIDOMBarPropD(value);
  }

  /* readonly attribute nsIDOMBarProp statusbar; */
  nsIDOMBarPropD  Statusbar(){
    nsIDOMBarProp value;
    nsresult __result = inner.GetStatusbar(&value);
    CheckException(__result);
    return new nsIDOMBarPropD(value);
  }

  /* readonly attribute nsIDOMBarProp directories; */
  nsIDOMBarPropD  Directories(){
    nsIDOMBarProp value;
    nsresult __result = inner.GetDirectories(&value);
    CheckException(__result);
    return new nsIDOMBarPropD(value);
  }

  /* readonly attribute boolean closed; */
  PRBool Closed(){
    PRBool value;
    nsresult __result = inner.GetClosed(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMCrypto crypto; */
  nsIDOMCryptoD  Crypto(){
    nsIDOMCrypto value;
    nsresult __result = inner.GetCrypto(&value);
    CheckException(__result);
    return new nsIDOMCryptoD(value);
  }

  /* readonly attribute nsIDOMPkcs11 pkcs11; */
  nsIDOMPkcs11D  Pkcs11(){
    nsIDOMPkcs11 value;
    nsresult __result = inner.GetPkcs11(&value);
    CheckException(__result);
    return new nsIDOMPkcs11D(value);
  }

  /* readonly attribute nsIControllers controllers; */
  nsIControllersD  Controllers(){
    nsIControllers value;
    nsresult __result = inner.GetControllers(&value);
    CheckException(__result);
    return new nsIControllersD(value);
  }

  /* attribute nsIDOMWindowInternal opener; */
  nsIDOMWindowInternalD  Opener(){
    nsIDOMWindowInternal value;
    nsresult __result = inner.GetOpener(&value);
    CheckException(__result);
    return new nsIDOMWindowInternalD(value);
  }
  void Opener(nsIDOMWindowInternalD  aOpener){
    nsIDOMWindowInternal value;
    nsresult __result = inner.SetOpener(value);
    CheckException(__result);
  }

  /* attribute DOMString status; */
  wchar[] Status(){
    scope auto value = new AString();
    nsresult __result = inner.GetStatus(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Status(wchar[] aStatus){
    scope auto value = new AString(aStatus);
    nsresult __result = inner.SetStatus(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString defaultStatus; */
  wchar[] DefaultStatus(){
    scope auto value = new AString();
    nsresult __result = inner.GetDefaultStatus(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DefaultStatus(wchar[] aDefaultStatus){
    scope auto value = new AString(aDefaultStatus);
    nsresult __result = inner.SetDefaultStatus(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMLocation location; */
  nsIDOMLocationD  Location(){
    nsIDOMLocation value;
    nsresult __result = inner.GetLocation(&value);
    CheckException(__result);
    return new nsIDOMLocationD(value);
  }

  /* attribute long innerWidth; */
  PRInt32 InnerWidth(){
    PRInt32 value;
    nsresult __result = inner.GetInnerWidth(&value);
    CheckException(__result);
    return value;
  }
  void InnerWidth(PRInt32 aInnerWidth){
    nsresult __result = inner.SetInnerWidth(aInnerWidth);
    CheckException(__result);
  }

  /* attribute long innerHeight; */
  PRInt32 InnerHeight(){
    PRInt32 value;
    nsresult __result = inner.GetInnerHeight(&value);
    CheckException(__result);
    return value;
  }
  void InnerHeight(PRInt32 aInnerHeight){
    nsresult __result = inner.SetInnerHeight(aInnerHeight);
    CheckException(__result);
  }

  /* attribute long outerWidth; */
  PRInt32 OuterWidth(){
    PRInt32 value;
    nsresult __result = inner.GetOuterWidth(&value);
    CheckException(__result);
    return value;
  }
  void OuterWidth(PRInt32 aOuterWidth){
    nsresult __result = inner.SetOuterWidth(aOuterWidth);
    CheckException(__result);
  }

  /* attribute long outerHeight; */
  PRInt32 OuterHeight(){
    PRInt32 value;
    nsresult __result = inner.GetOuterHeight(&value);
    CheckException(__result);
    return value;
  }
  void OuterHeight(PRInt32 aOuterHeight){
    nsresult __result = inner.SetOuterHeight(aOuterHeight);
    CheckException(__result);
  }

  /* attribute long screenX; */
  PRInt32 ScreenX(){
    PRInt32 value;
    nsresult __result = inner.GetScreenX(&value);
    CheckException(__result);
    return value;
  }
  void ScreenX(PRInt32 aScreenX){
    nsresult __result = inner.SetScreenX(aScreenX);
    CheckException(__result);
  }

  /* attribute long screenY; */
  PRInt32 ScreenY(){
    PRInt32 value;
    nsresult __result = inner.GetScreenY(&value);
    CheckException(__result);
    return value;
  }
  void ScreenY(PRInt32 aScreenY){
    nsresult __result = inner.SetScreenY(aScreenY);
    CheckException(__result);
  }

  /* readonly attribute long pageXOffset; */
  PRInt32 PageXOffset(){
    PRInt32 value;
    nsresult __result = inner.GetPageXOffset(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long pageYOffset; */
  PRInt32 PageYOffset(){
    PRInt32 value;
    nsresult __result = inner.GetPageYOffset(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long scrollMaxX; */
  PRInt32 ScrollMaxX(){
    PRInt32 value;
    nsresult __result = inner.GetScrollMaxX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long scrollMaxY; */
  PRInt32 ScrollMaxY(){
    PRInt32 value;
    nsresult __result = inner.GetScrollMaxY(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean fullScreen; */
  PRBool FullScreen(){
    PRBool value;
    nsresult __result = inner.GetFullScreen(&value);
    CheckException(__result);
    return value;
  }
  void FullScreen(PRBool aFullScreen){
    nsresult __result = inner.SetFullScreen(aFullScreen);
    CheckException(__result);
  }

  /* void alert (in DOMString text); */
  void Alert(wchar[] text){
    scope auto _text = new AString(text);
    nsresult __result = inner.Alert(cast(nsAString*)_text);
    CheckException(__result);
  }

  /* boolean confirm (in DOMString text); */
  PRBool Confirm(wchar[] text){
    scope auto _text = new AString(text);
    PRBool _retval;
    nsresult __result = inner.Confirm(cast(nsAString*)_text, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* DOMString prompt (in DOMString aMessage, in DOMString aInitial, in DOMString aTitle, in unsigned long aSavePassword); */
  wchar[] Prompt(wchar[] aMessage, wchar[] aInitial, wchar[] aTitle, PRUint32 aSavePassword){
    scope auto _aMessage = new AString(aMessage);
    scope auto _aInitial = new AString(aInitial);
    scope auto _aTitle = new AString(aTitle);
    scope auto _retval = new AString;
    nsresult __result = inner.Prompt(cast(nsAString*)_aMessage, cast(nsAString*)_aInitial, cast(nsAString*)_aTitle, aSavePassword, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void focus (); */
  void Focus(){
    nsresult __result = inner.Focus();
    CheckException(__result);
  }

  /* void blur (); */
  void Blur(){
    nsresult __result = inner.Blur();
    CheckException(__result);
  }

  /* void back (); */
  void Back(){
    nsresult __result = inner.Back();
    CheckException(__result);
  }

  /* void forward (); */
  void Forward(){
    nsresult __result = inner.Forward();
    CheckException(__result);
  }

  /* void home (); */
  void Home(){
    nsresult __result = inner.Home();
    CheckException(__result);
  }

  /* void stop (); */
  void Stop(){
    nsresult __result = inner.Stop();
    CheckException(__result);
  }

  /* void print (); */
  void Print(){
    nsresult __result = inner.Print();
    CheckException(__result);
  }

  /* void moveTo (in long xPos, in long yPos); */
  void MoveTo(PRInt32 xPos, PRInt32 yPos){
    nsresult __result = inner.MoveTo(xPos, yPos);
    CheckException(__result);
  }

  /* void moveBy (in long xDif, in long yDif); */
  void MoveBy(PRInt32 xDif, PRInt32 yDif){
    nsresult __result = inner.MoveBy(xDif, yDif);
    CheckException(__result);
  }

  /* void resizeTo (in long width, in long height); */
  void ResizeTo(PRInt32 width, PRInt32 height){
    nsresult __result = inner.ResizeTo(width, height);
    CheckException(__result);
  }

  /* void resizeBy (in long widthDif, in long heightDif); */
  void ResizeBy(PRInt32 widthDif, PRInt32 heightDif){
    nsresult __result = inner.ResizeBy(widthDif, heightDif);
    CheckException(__result);
  }

  /* void scroll (in long xScroll, in long yScroll); */
  void Scroll(PRInt32 xScroll, PRInt32 yScroll){
    nsresult __result = inner.Scroll(xScroll, yScroll);
    CheckException(__result);
  }

  /**
   * Open a new window with this one as the parent.  This method will
   * NOT examine the JS stack for purposes of determining a caller.
   * This window will be used for security checks during the search by
   * name and the default character set on the newly opened window
   * will just be the default character set of this window.
   */
  /* [noscript] nsIDOMWindow open (in DOMString url, in DOMString name, in DOMString options); */
  nsIDOMWindowD  Open(wchar[] url, wchar[] name, wchar[] options){
    scope auto _url = new AString(url);
    scope auto _name = new AString(name);
    scope auto _options = new AString(options);
    nsIDOMWindow _retval;
    nsresult __result = inner.Open(cast(nsAString*)_url, cast(nsAString*)_name, cast(nsAString*)_options, &_retval);
    CheckException(__result);
    return new nsIDOMWindowD(_retval);
  }

  /* [noscript] nsIDOMWindow openDialog (in DOMString url, in DOMString name, in DOMString options, in nsISupports aExtraArgument); */
  nsIDOMWindowD  OpenDialog(wchar[] url, wchar[] name, wchar[] options, nsISupportsD aExtraArgument){
    scope auto _url = new AString(url);
    scope auto _name = new AString(name);
    scope auto _options = new AString(options);
    nsIDOMWindow _retval;
    nsresult __result = inner.OpenDialog(cast(nsAString*)_url, cast(nsAString*)_name, cast(nsAString*)_options, aExtraArgument ? cast(nsISupports)aExtraArgument : null, &_retval);
    CheckException(__result);
    return new nsIDOMWindowD(_retval);
  }

  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /* void updateCommands (in DOMString action); */
  void UpdateCommands(wchar[] action){
    scope auto _action = new AString(action);
    nsresult __result = inner.UpdateCommands(cast(nsAString*)_action);
    CheckException(__result);
  }

  /* [noscript] boolean find (in DOMString str, in boolean caseSensitive, in boolean backwards, in boolean wrapAround, in boolean wholeWord, in boolean searchInFrames, in boolean showDialog); */
  PRBool Find(wchar[] str, PRBool caseSensitive, PRBool backwards, PRBool wrapAround, PRBool wholeWord, PRBool searchInFrames, PRBool showDialog){
    scope auto _str = new AString(str);
    PRBool _retval;
    nsresult __result = inner.Find(cast(nsAString*)_str, caseSensitive, backwards, wrapAround, wholeWord, searchInFrames, showDialog, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* DOMString atob (in DOMString aAsciiString); */
  wchar[] Atob(wchar[] aAsciiString){
    scope auto _aAsciiString = new AString(aAsciiString);
    scope auto _retval = new AString;
    nsresult __result = inner.Atob(cast(nsAString*)_aAsciiString, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* DOMString btoa (in DOMString aBase64Data); */
  wchar[] Btoa(wchar[] aBase64Data){
    scope auto _aBase64Data = new AString(aBase64Data);
    scope auto _retval = new AString;
    nsresult __result = inner.Btoa(cast(nsAString*)_aBase64Data, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* readonly attribute nsIDOMElement frameElement; */
  nsIDOMElementD  FrameElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetFrameElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

private:
  nsIDOMWindowInternal inner;

}

