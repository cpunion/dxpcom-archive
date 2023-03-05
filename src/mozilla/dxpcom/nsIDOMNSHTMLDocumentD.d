/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLDocument.idl
 */

module mozilla.dxpcom.nsIDOMNSHTMLDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNSHTMLDocument;


public import mozilla.dxpcom.nsIDOMNSHTMLDocumentD;

public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr;

public import mozilla.xpcom.nsIDOMCDATASection;

public import mozilla.xpcom.nsIDOMCharacterData;

public import mozilla.xpcom.nsIDOMComment;

public import mozilla.xpcom.nsIDOMDOMImplementation;
    
public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.xpcom.nsIDOMDocumentFragment;

public import mozilla.xpcom.nsIDOMDocumentType;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsIDOMEntity;

public import mozilla.xpcom.nsIDOMEntityReference;

public import mozilla.xpcom.nsIDOMNSDocument;

public import mozilla.xpcom.nsIDOMNamedNodeMap;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.xpcom.nsIDOMNodeList;

public import mozilla.xpcom.nsIDOMNotation;

public import mozilla.xpcom.nsIDOMProcessingInstruction;

public import mozilla.xpcom.nsIDOMText;

public import mozilla.xpcom.nsIDOMDOMStringList;

public import mozilla.xpcom.nsIDOMNameList;

//public import mozilla.xpcom.DOMException;

//public import mozilla.xpcom.RangeException;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMEventListener;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.xpcom.nsIDOMHTMLFormElement;

public import mozilla.xpcom.nsIDOMBarProp;

public import mozilla.xpcom.nsIDOMWindowCollection;

public import mozilla.xpcom.nsIDOMHTMLCollection;

public import mozilla.xpcom.nsIDOMNavigator;

public import mozilla.xpcom.nsIDOMScreen;

public import mozilla.xpcom.nsIDOMHistory;

public import mozilla.xpcom.nsIDOMPkcs11;

public import mozilla.xpcom.nsIDOMMimeTypeArray;

public import mozilla.xpcom.nsIDOMPluginArray;

public import mozilla.xpcom.nsIDOMCrypto;

public import mozilla.xpcom.nsIDOMCRMFObject;

public import mozilla.xpcom.nsIDOMPlugin;

public import mozilla.xpcom.nsIDOMMimeType;

public import mozilla.xpcom.nsIDOMCSSRule;

public import mozilla.xpcom.nsIDOMCSSRuleList;

public import mozilla.xpcom.nsIDOMStyleSheet;

public import mozilla.xpcom.nsIDOMCSSValue;

public import mozilla.xpcom.nsIDOMMediaList;

public import mozilla.xpcom.nsIDOMCSSStyleSheet;

public import mozilla.xpcom.nsIDOMCSSStyleDeclaration;

public import mozilla.xpcom.nsIDOMAbstractView;

public import mozilla.xpcom.nsIDOMDocumentView;

public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;

public import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;

public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;

public import mozilla.xpcom.nsIDOMStyleSheetList;

public import mozilla.xpcom.nsIDOMKeyEvent;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMRect;

public import mozilla.xpcom.nsIDOMRGBColor;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMCSSPrimitiveValue;

public import mozilla.xpcom.nsIDOMEventGroup;

public import mozilla.dxpcom.nsrootidlD;

public import mozilla.dxpcom.nsISupportsD;

alias PRUint64 DOMTimeStampD;

public import mozilla.dxpcom.nsIDOMAttrD;

public import mozilla.dxpcom.nsIDOMCDATASectionD;

public import mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.dxpcom.nsIDOMCommentD;

public import mozilla.dxpcom.nsIDOMDOMImplementationD;
    
public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.dxpcom.nsIDOMDocumentTypeD;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.dxpcom.nsIDOMEntityD;

public import mozilla.dxpcom.nsIDOMEntityReferenceD;

public import mozilla.dxpcom.nsIDOMNSDocumentD;

public import mozilla.dxpcom.nsIDOMNamedNodeMapD;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.dxpcom.nsIDOMNodeListD;

public import mozilla.dxpcom.nsIDOMNotationD;

public import mozilla.dxpcom.nsIDOMProcessingInstructionD;

public import mozilla.dxpcom.nsIDOMTextD;

public import mozilla.dxpcom.nsIDOMDOMStringListD;

public import mozilla.dxpcom.nsIDOMNameListD;

//public import mozilla.dxpcom.DOMExceptionD;

//public import mozilla.dxpcom.RangeExceptionD;

public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.dxpcom.nsIDOMEventListenerD;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.dxpcom.nsIDOMHTMLFormElementD;

public import mozilla.dxpcom.nsIDOMBarPropD;

public import mozilla.dxpcom.nsIDOMWindowCollectionD;

public import mozilla.dxpcom.nsIDOMHTMLCollectionD;

public import mozilla.dxpcom.nsIDOMNavigatorD;

public import mozilla.dxpcom.nsIDOMScreenD;

public import mozilla.dxpcom.nsIDOMHistoryD;

public import mozilla.dxpcom.nsIDOMPkcs11D;

public import mozilla.dxpcom.nsIDOMMimeTypeArrayD;

public import mozilla.dxpcom.nsIDOMPluginArrayD;

public import mozilla.dxpcom.nsIDOMCryptoD;

public import mozilla.dxpcom.nsIDOMCRMFObjectD;

public import mozilla.dxpcom.nsIDOMPluginD;

public import mozilla.dxpcom.nsIDOMMimeTypeD;

public import mozilla.dxpcom.nsIDOMCSSRuleD;

public import mozilla.dxpcom.nsIDOMCSSRuleListD;

public import mozilla.dxpcom.nsIDOMStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSValueD;

public import mozilla.dxpcom.nsIDOMMediaListD;

public import mozilla.dxpcom.nsIDOMCSSStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSStyleDeclarationD;

public import mozilla.dxpcom.nsIDOMAbstractViewD;

public import mozilla.dxpcom.nsIDOMDocumentViewD;

public import mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;

public import mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;

public import mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;

public import mozilla.dxpcom.nsIDOMStyleSheetListD;

public import mozilla.dxpcom.nsIDOMKeyEventD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMRectD;

public import mozilla.dxpcom.nsIDOMRGBColorD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;

public import mozilla.dxpcom.nsIDOMEventGroupD;



/* starting wrapper class:    nsIDOMNSHTMLDocument */
class nsIDOMNSHTMLDocumentD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNSHTMLDOCUMENT_IID;


  alias nsIDOMNSHTMLDocument InnerType;

  this(nsIDOMNSHTMLDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSHTMLDocument opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSHTMLDocument value) {
    inner = value;
  }

  /* readonly attribute long width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long height; */
  PRInt32 Height(){
    PRInt32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }

  /* attribute DOMString alinkColor; */
  wchar[] AlinkColor(){
    scope auto value = new AString();
    nsresult __result = inner.GetAlinkColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void AlinkColor(wchar[] aAlinkColor){
    scope auto value = new AString(aAlinkColor);
    nsresult __result = inner.SetAlinkColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString linkColor; */
  wchar[] LinkColor(){
    scope auto value = new AString();
    nsresult __result = inner.GetLinkColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void LinkColor(wchar[] aLinkColor){
    scope auto value = new AString(aLinkColor);
    nsresult __result = inner.SetLinkColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString vlinkColor; */
  wchar[] VlinkColor(){
    scope auto value = new AString();
    nsresult __result = inner.GetVlinkColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void VlinkColor(wchar[] aVlinkColor){
    scope auto value = new AString(aVlinkColor);
    nsresult __result = inner.SetVlinkColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString bgColor; */
  wchar[] BgColor(){
    scope auto value = new AString();
    nsresult __result = inner.GetBgColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void BgColor(wchar[] aBgColor){
    scope auto value = new AString(aBgColor);
    nsresult __result = inner.SetBgColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString fgColor; */
  wchar[] FgColor(){
    scope auto value = new AString();
    nsresult __result = inner.GetFgColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void FgColor(wchar[] aFgColor){
    scope auto value = new AString(aFgColor);
    nsresult __result = inner.SetFgColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString domain; */
  wchar[] Domain(){
    scope auto value = new AString();
    nsresult __result = inner.GetDomain(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Domain(wchar[] aDomain){
    scope auto value = new AString(aDomain);
    nsresult __result = inner.SetDomain(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMHTMLCollection embeds; */
  nsIDOMHTMLCollectionD  Embeds(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetEmbeds(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* DOMString getSelection (); */
  wchar[] GetSelection(){
    scope auto _retval = new AString;
    nsresult __result = inner.GetSelection(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* nsIDOMDocument open (in ACString aContentType, in boolean aReplace); */
  nsIDOMDocumentD  Open(char[] aContentType, PRBool aReplace){
    scope auto _aContentType = new ACString(aContentType);
    nsIDOMDocument _retval;
    nsresult __result = inner.Open(cast(nsACString*)_aContentType, aReplace, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

  /* void write (); */
  void Write(){
    nsresult __result = inner.Write();
    CheckException(__result);
  }

  /* void writeln (); */
  void Writeln(){
    nsresult __result = inner.Writeln();
    CheckException(__result);
  }

  /* void clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

  /**
   * @deprecated These are old Netscape 4 methods.
   */
  /* void captureEvents (in long eventFlags); */
  void CaptureEvents(PRInt32 eventFlags){
    nsresult __result = inner.CaptureEvents(eventFlags);
    CheckException(__result);
  }

  /* void releaseEvents (in long eventFlags); */
  void ReleaseEvents(PRInt32 eventFlags){
    nsresult __result = inner.ReleaseEvents(eventFlags);
    CheckException(__result);
  }

  /* void routeEvent (in nsIDOMEvent evt); */
  void RouteEvent(nsIDOMEventD evt){
    nsresult __result = inner.RouteEvent(evt ? cast(nsIDOMEvent)evt : null);
    CheckException(__result);
  }

  /* readonly attribute DOMString compatMode; */
  wchar[] CompatMode(){
    scope auto value = new AString();
    nsresult __result = inner.GetCompatMode(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIDOMHTMLCollection plugins; */
  nsIDOMHTMLCollectionD  Plugins(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetPlugins(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /**
    * Midas additions
    */
  /* attribute DOMString designMode; */
  wchar[] DesignMode(){
    scope auto value = new AString();
    nsresult __result = inner.GetDesignMode(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DesignMode(wchar[] aDesignMode){
    scope auto value = new AString(aDesignMode);
    nsresult __result = inner.SetDesignMode(cast(nsAString*)value);
    CheckException(__result);
  }

  /* boolean execCommand (in DOMString commandID, in boolean doShowUI, in DOMString value); */
  PRBool ExecCommand(wchar[] commandID, PRBool doShowUI, wchar[] value){
    scope auto _commandID = new AString(commandID);
    scope auto _value = new AString(value);
    PRBool _retval;
    nsresult __result = inner.ExecCommand(cast(nsAString*)_commandID, doShowUI, cast(nsAString*)_value, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean execCommandShowHelp (in DOMString commandID); */
  PRBool ExecCommandShowHelp(wchar[] commandID){
    scope auto _commandID = new AString(commandID);
    PRBool _retval;
    nsresult __result = inner.ExecCommandShowHelp(cast(nsAString*)_commandID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean queryCommandEnabled (in DOMString commandID); */
  PRBool QueryCommandEnabled(wchar[] commandID){
    scope auto _commandID = new AString(commandID);
    PRBool _retval;
    nsresult __result = inner.QueryCommandEnabled(cast(nsAString*)_commandID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean queryCommandIndeterm (in DOMString commandID); */
  PRBool QueryCommandIndeterm(wchar[] commandID){
    scope auto _commandID = new AString(commandID);
    PRBool _retval;
    nsresult __result = inner.QueryCommandIndeterm(cast(nsAString*)_commandID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean queryCommandState (in DOMString commandID); */
  PRBool QueryCommandState(wchar[] commandID){
    scope auto _commandID = new AString(commandID);
    PRBool _retval;
    nsresult __result = inner.QueryCommandState(cast(nsAString*)_commandID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean queryCommandSupported (in DOMString commandID); */
  PRBool QueryCommandSupported(wchar[] commandID){
    scope auto _commandID = new AString(commandID);
    PRBool _retval;
    nsresult __result = inner.QueryCommandSupported(cast(nsAString*)_commandID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* DOMString queryCommandText (in DOMString commandID); */
  wchar[] QueryCommandText(wchar[] commandID){
    scope auto _commandID = new AString(commandID);
    scope auto _retval = new AString;
    nsresult __result = inner.QueryCommandText(cast(nsAString*)_commandID, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* DOMString queryCommandValue (in DOMString commandID); */
  wchar[] QueryCommandValue(wchar[] commandID){
    scope auto _commandID = new AString(commandID);
    scope auto _retval = new AString;
    nsresult __result = inner.QueryCommandValue(cast(nsAString*)_commandID, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIDOMNSHTMLDocument inner;

}

