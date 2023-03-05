/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIDOMUtils.idl
 */

module mozilla.xpcom.inIDOMUtils;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIArray; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMCSSStyleRule; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    inIDOMUtils */
const char[] INIDOMUTILS_IID_STR = "78fd16c2-bdfb-4b1d-8738-d536d0a8f430";

const nsIID INIDOMUTILS_IID= 
  {0x78fd16c2, 0xbdfb, 0x4b1d, 
    [ 0x87, 0x38, 0xd5, 0x36, 0xd0, 0xa8, 0xf4, 0x30 ]};

extern(Windows)
interface inIDOMUtils : nsISupports {
  static const char[] IID_STR = INIDOMUTILS_IID_STR;
  static const nsIID IID = INIDOMUTILS_IID;

  /* nsISupportsArray getCSSStyleRules (in nsIDOMElement aElement); */
  nsresult GetCSSStyleRules(nsIDOMElement aElement, nsISupportsArray *_retval);

  /* unsigned long getRuleLine (in nsIDOMCSSStyleRule aRule); */
  nsresult GetRuleLine(nsIDOMCSSStyleRule aRule, PRUint32 *_retval);

  /* boolean isIgnorableWhitespace (in nsIDOMCharacterData aDataNode); */
  nsresult IsIgnorableWhitespace(nsIDOMCharacterData aDataNode, PRBool *_retval);

  /* nsIDOMNode getParentForNode (in nsIDOMNode aNode, in boolean aShowingAnonymousContent); */
  nsresult GetParentForNode(nsIDOMNode aNode, PRBool aShowingAnonymousContent, nsIDOMNode *_retval);

  /* nsIArray getBindingURLs (in nsIDOMElement aElement); */
  nsresult GetBindingURLs(nsIDOMElement aElement, nsIArray *_retval);

  /* long getContentState (in nsIDOMElement aElement); */
  nsresult GetContentState(nsIDOMElement aElement, PRInt32 *_retval);

  /* void setContentState (in nsIDOMElement aElement, in long aState); */
  nsresult SetContentState(nsIDOMElement aElement, PRInt32 aState);

}

