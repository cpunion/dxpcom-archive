/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLDocument.idl
 */

module mozilla.xpcom.nsIDOMNSHTMLDocument;


public import mozilla.xpcom.nsrootidl;

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



/* starting interface:    nsIDOMNSHTMLDocument */
const char[] NS_IDOMNSHTMLDOCUMENT_IID_STR = "79beb289-3644-4b54-9432-9fb993945629";

const nsIID NS_IDOMNSHTMLDOCUMENT_IID= 
  {0x79beb289, 0x3644, 0x4b54, 
    [ 0x94, 0x32, 0x9f, 0xb9, 0x93, 0x94, 0x56, 0x29 ]};

extern(Windows)
interface nsIDOMNSHTMLDocument : nsISupports {
  static const char[] IID_STR = NS_IDOMNSHTMLDOCUMENT_IID_STR;
  static const nsIID IID = NS_IDOMNSHTMLDOCUMENT_IID;

  /* readonly attribute long width; */
  nsresult GetWidth(PRInt32 *aWidth);

  /* readonly attribute long height; */
  nsresult GetHeight(PRInt32 *aHeight);

  /* attribute DOMString alinkColor; */
  nsresult GetAlinkColor(nsAString * aAlinkColor);
  nsresult SetAlinkColor(nsAString * aAlinkColor);

  /* attribute DOMString linkColor; */
  nsresult GetLinkColor(nsAString * aLinkColor);
  nsresult SetLinkColor(nsAString * aLinkColor);

  /* attribute DOMString vlinkColor; */
  nsresult GetVlinkColor(nsAString * aVlinkColor);
  nsresult SetVlinkColor(nsAString * aVlinkColor);

  /* attribute DOMString bgColor; */
  nsresult GetBgColor(nsAString * aBgColor);
  nsresult SetBgColor(nsAString * aBgColor);

  /* attribute DOMString fgColor; */
  nsresult GetFgColor(nsAString * aFgColor);
  nsresult SetFgColor(nsAString * aFgColor);

  /* attribute DOMString domain; */
  nsresult GetDomain(nsAString * aDomain);
  nsresult SetDomain(nsAString * aDomain);

  /* readonly attribute nsIDOMHTMLCollection embeds; */
  nsresult GetEmbeds(nsIDOMHTMLCollection  *aEmbeds);

  /* DOMString getSelection (); */
  nsresult GetSelection(nsAString * _retval);

  /* nsIDOMDocument open (in ACString aContentType, in boolean aReplace); */
  nsresult Open(nsACString * aContentType, PRBool aReplace, nsIDOMDocument *_retval);

  /* void write (); */
  nsresult Write();

  /* void writeln (); */
  nsresult Writeln();

  /* void clear (); */
  nsresult Clear();

  /**
   * @deprecated These are old Netscape 4 methods.
   */
  /* void captureEvents (in long eventFlags); */
  nsresult CaptureEvents(PRInt32 eventFlags);

  /* void releaseEvents (in long eventFlags); */
  nsresult ReleaseEvents(PRInt32 eventFlags);

  /* void routeEvent (in nsIDOMEvent evt); */
  nsresult RouteEvent(nsIDOMEvent evt);

  /* readonly attribute DOMString compatMode; */
  nsresult GetCompatMode(nsAString * aCompatMode);

  /* readonly attribute nsIDOMHTMLCollection plugins; */
  nsresult GetPlugins(nsIDOMHTMLCollection  *aPlugins);

  /**
    * Midas additions
    */
  /* attribute DOMString designMode; */
  nsresult GetDesignMode(nsAString * aDesignMode);
  nsresult SetDesignMode(nsAString * aDesignMode);

  /* boolean execCommand (in DOMString commandID, in boolean doShowUI, in DOMString value); */
  nsresult ExecCommand(nsAString * commandID, PRBool doShowUI, nsAString * value, PRBool *_retval);

  /* boolean execCommandShowHelp (in DOMString commandID); */
  nsresult ExecCommandShowHelp(nsAString * commandID, PRBool *_retval);

  /* boolean queryCommandEnabled (in DOMString commandID); */
  nsresult QueryCommandEnabled(nsAString * commandID, PRBool *_retval);

  /* boolean queryCommandIndeterm (in DOMString commandID); */
  nsresult QueryCommandIndeterm(nsAString * commandID, PRBool *_retval);

  /* boolean queryCommandState (in DOMString commandID); */
  nsresult QueryCommandState(nsAString * commandID, PRBool *_retval);

  /* boolean queryCommandSupported (in DOMString commandID); */
  nsresult QueryCommandSupported(nsAString * commandID, PRBool *_retval);

  /* DOMString queryCommandText (in DOMString commandID); */
  nsresult QueryCommandText(nsAString * commandID, nsAString * _retval);

  /* DOMString queryCommandValue (in DOMString commandID); */
  nsresult QueryCommandValue(nsAString * commandID, nsAString * _retval);

}

