/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGPresAspectRatio.idl
 */

module mozilla.xpcom.nsIDOMSVGPresAspectRatio;


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



/* starting interface:    nsIDOMSVGPreserveAspectRatio */
const char[] NS_IDOMSVGPRESERVEASPECTRATIO_IID_STR = "7ae42f27-4799-4e7c-86c6-e1dae6ad5157";

const nsIID NS_IDOMSVGPRESERVEASPECTRATIO_IID= 
  {0x7ae42f27, 0x4799, 0x4e7c, 
    [ 0x86, 0xc6, 0xe1, 0xda, 0xe6, 0xad, 0x51, 0x57 ]};

extern(Windows)
interface nsIDOMSVGPreserveAspectRatio : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGPRESERVEASPECTRATIO_IID_STR;
  static const nsIID IID = NS_IDOMSVGPRESERVEASPECTRATIO_IID;

  enum { SVG_PRESERVEASPECTRATIO_UNKNOWN = 0U };

  enum { SVG_PRESERVEASPECTRATIO_NONE = 1U };

  enum { SVG_PRESERVEASPECTRATIO_XMINYMIN = 2U };

  enum { SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3U };

  enum { SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4U };

  enum { SVG_PRESERVEASPECTRATIO_XMINYMID = 5U };

  enum { SVG_PRESERVEASPECTRATIO_XMIDYMID = 6U };

  enum { SVG_PRESERVEASPECTRATIO_XMAXYMID = 7U };

  enum { SVG_PRESERVEASPECTRATIO_XMINYMAX = 8U };

  enum { SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9U };

  enum { SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10U };

  enum { SVG_MEETORSLICE_UNKNOWN = 0U };

  enum { SVG_MEETORSLICE_MEET = 1U };

  enum { SVG_MEETORSLICE_SLICE = 2U };

  /* attribute unsigned short align; */
  nsresult GetAlign(PRUint16 *aAlign);
  nsresult SetAlign(PRUint16 aAlign);

  /* attribute unsigned short meetOrSlice; */
  nsresult GetMeetOrSlice(PRUint16 *aMeetOrSlice);
  nsresult SetMeetOrSlice(PRUint16 aMeetOrSlice);

}

