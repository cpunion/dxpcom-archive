/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInlineSpellChecker.idl
 */

module mozilla.xpcom.nsIInlineSpellChecker;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr; /* forward declaration */

public import mozilla.xpcom.nsIDOMCDATASection; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMComment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMImplementation; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentType; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMEntity; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMEntityReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMNSDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNamedNodeMap; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNotation; /* forward declaration */

public import mozilla.xpcom.nsIDOMProcessingInstruction; /* forward declaration */

public import mozilla.xpcom.nsIDOMText; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMStringList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNameList; /* forward declaration */

//public import mozilla.xpcom.DOMException; /* forward declaration */

//public import mozilla.xpcom.RangeException; /* forward declaration */

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


public import mozilla.xpcom.nsISelection; /* forward declaration */

public import mozilla.xpcom.nsIEditor; /* forward declaration */

public import mozilla.xpcom.nsIEditorSpellCheck; /* forward declaration */


/* starting interface:    nsIInlineSpellChecker */
const char[] NS_IINLINESPELLCHECKER_IID_STR = "f5d1ec9e-4d30-11d8-8053-da0cc7df1f20";

const nsIID NS_IINLINESPELLCHECKER_IID= 
  {0xf5d1ec9e, 0x4d30, 0x11d8, 
    [ 0x80, 0x53, 0xda, 0x0c, 0xc7, 0xdf, 0x1f, 0x20 ]};

extern(Windows)
interface nsIInlineSpellChecker : nsISupports {
  static const char[] IID_STR = NS_IINLINESPELLCHECKER_IID_STR;
  static const nsIID IID = NS_IINLINESPELLCHECKER_IID;

  /* readonly attribute nsIEditorSpellCheck spellChecker; */
  nsresult GetSpellChecker(nsIEditorSpellCheck  *aSpellChecker);

  /* [noscript] void init (in nsIEditor aEditor); */
  nsresult Init(nsIEditor aEditor);

  /* [noscript] void cleanup (); */
  nsresult Cleanup();

  /* attribute boolean enableRealTimeSpell; */
  nsresult GetEnableRealTimeSpell(PRBool *aEnableRealTimeSpell);
  nsresult SetEnableRealTimeSpell(PRBool aEnableRealTimeSpell);

  /* void spellCheckAfterEditorChange (in long aAction, in nsISelection aSelection, in nsIDOMNode aPreviousSelectedNode, in long aPreviousSelectedOffset, in nsIDOMNode aStartNode, in long aStartOffset, in nsIDOMNode aEndNode, in long aEndOffset); */
  nsresult SpellCheckAfterEditorChange(PRInt32 aAction, nsISelection aSelection, nsIDOMNode aPreviousSelectedNode, PRInt32 aPreviousSelectedOffset, nsIDOMNode aStartNode, PRInt32 aStartOffset, nsIDOMNode aEndNode, PRInt32 aEndOffset);

  /* void spellCheckRange (in nsIDOMRange aSelection); */
  nsresult SpellCheckRange(nsIDOMRange aSelection);

  /* nsIDOMRange getMispelledWord (in nsIDOMNode aNode, in long aOffset); */
  nsresult GetMispelledWord(nsIDOMNode aNode, PRInt32 aOffset, nsIDOMRange *_retval);

  /* void replaceWord (in nsIDOMNode aNode, in long aOffset, in AString aNewword); */
  nsresult ReplaceWord(nsIDOMNode aNode, PRInt32 aOffset, nsAString * aNewword);

  /* void addWordToDictionary (in AString aWord); */
  nsresult AddWordToDictionary(nsAString * aWord);

  /* void ignoreWord (in AString aWord); */
  nsresult IgnoreWord(nsAString * aWord);

  /* void ignoreWords ([array, size_is (aCount)] in wstring aWordsToIgnore, in unsigned long aCount); */
  nsresult IgnoreWords(PRUnichar **aWordsToIgnore, PRUint32 aCount);

}

