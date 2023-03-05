/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCrypto.idl
 */

module mozilla.dxpcom.nsIDOMCryptoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCrypto;


public import mozilla.dxpcom.nsIDOMCryptoD;

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



/* starting wrapper class:    nsIDOMCrypto */
class nsIDOMCryptoD : public nsISupportsD {

  static const nsIID IID = NS_IDOMCRYPTO_IID;


  alias nsIDOMCrypto InnerType;

  this(nsIDOMCrypto intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCrypto opCast() {
    return inner;
  }

  void opAssign(nsIDOMCrypto value) {
    inner = value;
  }

  /* readonly attribute DOMString version; */
  wchar[] Version(){
    scope auto value = new AString();
    nsresult __result = inner.GetVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* attribute boolean enableSmartCardEvents; */
  PRBool EnableSmartCardEvents(){
    PRBool value;
    nsresult __result = inner.GetEnableSmartCardEvents(&value);
    CheckException(__result);
    return value;
  }
  void EnableSmartCardEvents(PRBool aEnableSmartCardEvents){
    nsresult __result = inner.SetEnableSmartCardEvents(aEnableSmartCardEvents);
    CheckException(__result);
  }

  /* nsIDOMCRMFObject generateCRMFRequest (); */
  nsIDOMCRMFObjectD  GenerateCRMFRequest(){
    nsIDOMCRMFObject _retval;
    nsresult __result = inner.GenerateCRMFRequest(&_retval);
    CheckException(__result);
    return new nsIDOMCRMFObjectD(_retval);
  }

  /* DOMString importUserCertificates (in DOMString nickname, in DOMString cmmfResponse, in boolean doForcedBackup); */
  wchar[] ImportUserCertificates(wchar[] nickname, wchar[] cmmfResponse, PRBool doForcedBackup){
    scope auto _nickname = new AString(nickname);
    scope auto _cmmfResponse = new AString(cmmfResponse);
    scope auto _retval = new AString;
    nsresult __result = inner.ImportUserCertificates(cast(nsAString*)_nickname, cast(nsAString*)_cmmfResponse, doForcedBackup, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* DOMString popChallengeResponse (in DOMString challenge); */
  wchar[] PopChallengeResponse(wchar[] challenge){
    scope auto _challenge = new AString(challenge);
    scope auto _retval = new AString;
    nsresult __result = inner.PopChallengeResponse(cast(nsAString*)_challenge, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* DOMString random (in long numBytes); */
  wchar[] Random(PRInt32 numBytes){
    scope auto _retval = new AString;
    nsresult __result = inner.Random(numBytes, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* DOMString signText (in DOMString stringToSign, in DOMString caOption); */
  wchar[] SignText(wchar[] stringToSign, wchar[] caOption){
    scope auto _stringToSign = new AString(stringToSign);
    scope auto _caOption = new AString(caOption);
    scope auto _retval = new AString;
    nsresult __result = inner.SignText(cast(nsAString*)_stringToSign, cast(nsAString*)_caOption, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void alert (in DOMString message); */
  void Alert(wchar[] message){
    scope auto _message = new AString(message);
    nsresult __result = inner.Alert(cast(nsAString*)_message);
    CheckException(__result);
  }

  /* void logout (); */
  void Logout(){
    nsresult __result = inner.Logout();
    CheckException(__result);
  }

  /* void disableRightClick (); */
  void DisableRightClick(){
    nsresult __result = inner.DisableRightClick();
    CheckException(__result);
  }

private:
  nsIDOMCrypto inner;

}

