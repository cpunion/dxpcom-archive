/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTMLInlineTableEditor.idl
 */

module mozilla.xpcom.nsIHTMLInlineTableEditor;


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



/* starting interface:    nsIHTMLInlineTableEditor */
const char[] NS_IHTMLINLINETABLEEDITOR_IID_STR = "eda2e65c-a758-451f-9b05-77cb8de74ed2";

const nsIID NS_IHTMLINLINETABLEEDITOR_IID= 
  {0xeda2e65c, 0xa758, 0x451f, 
    [ 0x9b, 0x05, 0x77, 0xcb, 0x8d, 0xe7, 0x4e, 0xd2 ]};

extern(Windows)
interface nsIHTMLInlineTableEditor : nsISupports {
  static const char[] IID_STR = NS_IHTMLINLINETABLEEDITOR_IID_STR;
  static const nsIID IID = NS_IHTMLINLINETABLEEDITOR_IID;

  /**
   * boolean indicating if inline table editing is enabled in the editor.
   * When inline table editing is enabled, and when the selection is
   * contained in a table cell, special buttons allowing to add/remove
   * a line/column are available on the cell's border.
   */
  /* attribute boolean inlineTableEditingEnabled; */
  nsresult GetInlineTableEditingEnabled(PRBool *aInlineTableEditingEnabled);
  nsresult SetInlineTableEditingEnabled(PRBool aInlineTableEditingEnabled);

  /**
   * Shows inline table editing UI around a table cell
   * @param aCell [IN] a DOM Element being a table cell, td or th
   */
  /* void showInlineTableEditingUI (in nsIDOMElement aCell); */
  nsresult ShowInlineTableEditingUI(nsIDOMElement aCell);

  /**
   * Hide all inline table editing UI
   */
  /* void hideInlineTableEditingUI (); */
  nsresult HideInlineTableEditingUI();

  /**
   * Modifies the table containing the selection according to the
   * activation of an inline table editing UI element
   * @param aUIAnonymousElement [IN] the inline table editing UI element
   */
  /* void doInlineTableEditingAction (in nsIDOMElement aUIAnonymousElement); */
  nsresult DoInlineTableEditingAction(nsIDOMElement aUIAnonymousElement);

  /**
   * Refresh already visible inline table editing UI
   */
  /* void refreshInlineTableEditingUI (); */
  nsresult RefreshInlineTableEditingUI();

}

