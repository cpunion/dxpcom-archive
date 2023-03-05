/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInlineSpellChecker.idl
 */

module mozilla.dxpcom.nsIInlineSpellCheckerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInlineSpellChecker;


public import mozilla.dxpcom.nsIInlineSpellCheckerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
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


public import mozilla.xpcom.nsISelection;

public import mozilla.dxpcom.nsISelectionD;

public import mozilla.xpcom.nsIEditor;

public import mozilla.dxpcom.nsIEditorD;

public import mozilla.xpcom.nsIEditorSpellCheck;

public import mozilla.dxpcom.nsIEditorSpellCheckD;


/* starting wrapper class:    nsIInlineSpellChecker */
class nsIInlineSpellCheckerD : public nsISupportsD {

  static const nsIID IID = NS_IINLINESPELLCHECKER_IID;


  alias nsIInlineSpellChecker InnerType;

  this(nsIInlineSpellChecker intr){
    super(intr);
    this.inner = intr;
  }

  nsIInlineSpellChecker opCast() {
    return inner;
  }

  void opAssign(nsIInlineSpellChecker value) {
    inner = value;
  }

  /* readonly attribute nsIEditorSpellCheck spellChecker; */
  nsIEditorSpellCheckD  SpellChecker(){
    nsIEditorSpellCheck value;
    nsresult __result = inner.GetSpellChecker(&value);
    CheckException(__result);
    return new nsIEditorSpellCheckD(value);
  }

  /* [noscript] void init (in nsIEditor aEditor); */
  void Init(nsIEditorD aEditor){
    nsresult __result = inner.Init(aEditor ? cast(nsIEditor)aEditor : null);
    CheckException(__result);
  }

  /* [noscript] void cleanup (); */
  void Cleanup(){
    nsresult __result = inner.Cleanup();
    CheckException(__result);
  }

  /* attribute boolean enableRealTimeSpell; */
  PRBool EnableRealTimeSpell(){
    PRBool value;
    nsresult __result = inner.GetEnableRealTimeSpell(&value);
    CheckException(__result);
    return value;
  }
  void EnableRealTimeSpell(PRBool aEnableRealTimeSpell){
    nsresult __result = inner.SetEnableRealTimeSpell(aEnableRealTimeSpell);
    CheckException(__result);
  }

  /* void spellCheckAfterEditorChange (in long aAction, in nsISelection aSelection, in nsIDOMNode aPreviousSelectedNode, in long aPreviousSelectedOffset, in nsIDOMNode aStartNode, in long aStartOffset, in nsIDOMNode aEndNode, in long aEndOffset); */
  void SpellCheckAfterEditorChange(PRInt32 aAction, nsISelectionD aSelection, nsIDOMNodeD aPreviousSelectedNode, PRInt32 aPreviousSelectedOffset, nsIDOMNodeD aStartNode, PRInt32 aStartOffset, nsIDOMNodeD aEndNode, PRInt32 aEndOffset){
    nsresult __result = inner.SpellCheckAfterEditorChange(aAction, aSelection ? cast(nsISelection)aSelection : null, aPreviousSelectedNode ? cast(nsIDOMNode)aPreviousSelectedNode : null, aPreviousSelectedOffset, aStartNode ? cast(nsIDOMNode)aStartNode : null, aStartOffset, aEndNode ? cast(nsIDOMNode)aEndNode : null, aEndOffset);
    CheckException(__result);
  }

  /* void spellCheckRange (in nsIDOMRange aSelection); */
  void SpellCheckRange(nsIDOMRangeD aSelection){
    nsresult __result = inner.SpellCheckRange(aSelection ? cast(nsIDOMRange)aSelection : null);
    CheckException(__result);
  }

  /* nsIDOMRange getMispelledWord (in nsIDOMNode aNode, in long aOffset); */
  nsIDOMRangeD  GetMispelledWord(nsIDOMNodeD aNode, PRInt32 aOffset){
    nsIDOMRange _retval;
    nsresult __result = inner.GetMispelledWord(aNode ? cast(nsIDOMNode)aNode : null, aOffset, &_retval);
    CheckException(__result);
    return new nsIDOMRangeD(_retval);
  }

  /* void replaceWord (in nsIDOMNode aNode, in long aOffset, in AString aNewword); */
  void ReplaceWord(nsIDOMNodeD aNode, PRInt32 aOffset, wchar[] aNewword){
    scope auto _aNewword = new AString(aNewword);
    nsresult __result = inner.ReplaceWord(aNode ? cast(nsIDOMNode)aNode : null, aOffset, cast(nsAString*)_aNewword);
    CheckException(__result);
  }

  /* void addWordToDictionary (in AString aWord); */
  void AddWordToDictionary(wchar[] aWord){
    scope auto _aWord = new AString(aWord);
    nsresult __result = inner.AddWordToDictionary(cast(nsAString*)_aWord);
    CheckException(__result);
  }

  /* void ignoreWord (in AString aWord); */
  void IgnoreWord(wchar[] aWord){
    scope auto _aWord = new AString(aWord);
    nsresult __result = inner.IgnoreWord(cast(nsAString*)_aWord);
    CheckException(__result);
  }

  /* void ignoreWords ([array, size_is (aCount)] in wstring aWordsToIgnore, in unsigned long aCount); */
  void IgnoreWords(PRUnichar**aWordsToIgnore, PRUint32 aCount){
    nsresult __result = inner.IgnoreWords(aWordsToIgnore, aCount);
    CheckException(__result);
  }

private:
  nsIInlineSpellChecker inner;

}

