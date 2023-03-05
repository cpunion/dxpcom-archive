/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecureBrowserUI.idl
 */

module mozilla.xpcom.nsISecureBrowserUI;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsISecureBrowserUI */
const char[] NS_ISECUREBROWSERUI_IID_STR = "081e31e0-a144-11d3-8c7c-00609792278c";

const nsIID NS_ISECUREBROWSERUI_IID= 
  {0x081e31e0, 0xa144, 0x11d3, 
    [ 0x8c, 0x7c, 0x00, 0x60, 0x97, 0x92, 0x27, 0x8c ]};

extern(Windows)
interface nsISecureBrowserUI : nsISupports {
  static const char[] IID_STR = NS_ISECUREBROWSERUI_IID_STR;
  static const nsIID IID = NS_ISECUREBROWSERUI_IID;

  /* void init (in nsIDOMWindow window); */
  nsresult Init(nsIDOMWindow window);

  /* readonly attribute unsigned long state; */
  nsresult GetState(PRUint32 *aState);

  /* readonly attribute AString tooltipText; */
  nsresult GetTooltipText(nsAString * aTooltipText);

}

