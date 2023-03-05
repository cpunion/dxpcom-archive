/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgProgress.idl
 */

module mozilla.xpcom.nsIMsgProgress;


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

public import mozilla.xpcom.nsIPrompt;
public import mozilla.xpcom.nsIWebProgressListener;

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsIMsgProgress */
const char[] NS_IMSGPROGRESS_IID_STR = "9f4dd200-3b1f-11d5-9daa-c345c9453d3c";

const nsIID NS_IMSGPROGRESS_IID= 
  {0x9f4dd200, 0x3b1f, 0x11d5, 
    [ 0x9d, 0xaa, 0xc3, 0x45, 0xc9, 0x45, 0x3d, 0x3c ]};

extern(Windows)
interface nsIMsgProgress : nsIWebProgressListener {
  static const char[] IID_STR = NS_IMSGPROGRESS_IID_STR;
  static const nsIID IID = NS_IMSGPROGRESS_IID;

  /* void openProgressDialog (in nsIDOMWindowInternal parent, in nsIMsgWindow aMsgWindow, in string dialogURL, in nsISupports parameters); */
  nsresult OpenProgressDialog(nsIDOMWindowInternal parent, nsIMsgWindow aMsgWindow, char *dialogURL, nsISupports parameters);

  /* void closeProgressDialog (in boolean forceClose); */
  nsresult CloseProgressDialog(PRBool forceClose);

  /* void registerListener (in nsIWebProgressListener listener); */
  nsresult RegisterListener(nsIWebProgressListener listener);

  /* void unregisterListener (in nsIWebProgressListener listener); */
  nsresult UnregisterListener(nsIWebProgressListener listener);

  /* nsIPrompt getPrompter (); */
  nsresult GetPrompter(nsIPrompt *_retval);

  /* attribute boolean processCanceledByUser; */
  nsresult GetProcessCanceledByUser(PRBool *aProcessCanceledByUser);
  nsresult SetProcessCanceledByUser(PRBool aProcessCanceledByUser);

  /* attribute nsIMsgWindow msgWindow; */
  nsresult GetMsgWindow(nsIMsgWindow  *aMsgWindow);
  nsresult SetMsgWindow(nsIMsgWindow  aMsgWindow);

}

