/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMJSWindow.idl
 */

module mozilla.dxpcom.nsIDOMJSWindowD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMJSWindow;


public import mozilla.dxpcom.nsIDOMJSWindowD;

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



/* starting wrapper class:    nsIDOMJSWindow */
class nsIDOMJSWindowD : public nsISupportsD {

  static const nsIID IID = NS_IDOMJSWINDOW_IID;


  alias nsIDOMJSWindow InnerType;

  this(nsIDOMJSWindow intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMJSWindow opCast() {
    return inner;
  }

  void opAssign(nsIDOMJSWindow value) {
    inner = value;
  }

  /* void dump (in DOMString str); */
  void Dump(wchar[] str){
    scope auto _str = new AString(str);
    nsresult __result = inner.Dump(cast(nsAString*)_str);
    CheckException(__result);
  }

  /**
   * These methods take typeless arguments and optional arguments, the
   * first argument is either a function or a string, the second
   * argument must be a number (ms) and the rest of the arguments (2
   * ... n) are passed to the callback function
   */
  /* long setTimeout (); */
  PRInt32 SetTimeout(){
    PRInt32 _retval;
    nsresult __result = inner.SetTimeout(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* long setInterval (); */
  PRInt32 SetInterval(){
    PRInt32 _retval;
    nsresult __result = inner.SetInterval(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * These methods take one optional argument that's the timer ID to
   * clear. Often in existing code these methods are passed undefined,
   * which is a nop so we need to support that as well.
   */
  /* void clearTimeout (); */
  void ClearTimeout(){
    nsresult __result = inner.ClearTimeout();
    CheckException(__result);
  }

  /* void clearInterval (); */
  void ClearInterval(){
    nsresult __result = inner.ClearInterval();
    CheckException(__result);
  }

  /* void setResizable (in boolean resizable); */
  void SetResizable(PRBool resizable){
    nsresult __result = inner.SetResizable(resizable);
    CheckException(__result);
  }

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

  /* void enableExternalCapture (); */
  void EnableExternalCapture(){
    nsresult __result = inner.EnableExternalCapture();
    CheckException(__result);
  }

  /* void disableExternalCapture (); */
  void DisableExternalCapture(){
    nsresult __result = inner.DisableExternalCapture();
    CheckException(__result);
  }

  /**
   * The prompt method takes up to four arguments, the arguments are
   * message, initial prompt value, title and a save password flag
   */
  /* DOMString prompt (); */
  wchar[] Prompt(){
    scope auto _retval = new AString;
    nsresult __result = inner.Prompt(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * These are the scriptable versions of nsIDOMWindowInternal::open() and
   * nsIDOMWindowInternal::openDialog() that take 3 optional arguments.  Unlike
   * the nsIDOMWindowInternal methods, these methods assume that they are
   * called from JavaScript and hence will look on the JS context stack to
   * determine the caller and hence correct security context for doing their
   * search for an existing named window.  Also, these methods will set the
   * default charset on the newly opened window based on the current document
   * charset in the caller.
   */
  /* nsIDOMWindow open (); */
  nsIDOMWindowD  Open(){
    nsIDOMWindow _retval;
    nsresult __result = inner.Open(&_retval);
    CheckException(__result);
    return new nsIDOMWindowD(_retval);
  }

  /* nsIDOMWindow openDialog (); */
  nsIDOMWindowD  OpenDialog(){
    nsIDOMWindow _retval;
    nsresult __result = inner.OpenDialog(&_retval);
    CheckException(__result);
    return new nsIDOMWindowD(_retval);
  }

  /**
   * window.frames in Netscape 4.x and IE is just a reference to the
   * window itself (i.e. window.frames === window), but this doesn't
   * make sense from a generic API point of view so that's why this is
   * JS specific.
   *
   * This property is "replaceable" in JavaScript.
   */
  /* readonly attribute nsIDOMWindow frames; */
  nsIDOMWindowD  Frames(){
    nsIDOMWindow value;
    nsresult __result = inner.GetFrames(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

  /* boolean find (); */
  PRBool Find(){
    PRBool _retval;
    nsresult __result = inner.Find(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIDOMJSWindow inner;

}

