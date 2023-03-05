/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIPromptService.idl
 */

module mozilla.xpcom.nsPIPromptService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIDialogParamBlock; /* forward declaration */


/* starting interface:    nsPIPromptService */
const char[] NS_PIPROMPTSERVICE_IID_STR = "d16e906d-bab3-49e0-8688-7f49a6f4293a";

const nsIID NS_PIPROMPTSERVICE_IID= 
  {0xd16e906d, 0xbab3, 0x49e0, 
    [ 0x86, 0x88, 0x7f, 0x49, 0xa6, 0xf4, 0x29, 0x3a ]};

extern(Windows)
interface nsPIPromptService : nsISupports {
  static const char[] IID_STR = NS_PIPROMPTSERVICE_IID_STR;
  static const nsIID IID = NS_PIPROMPTSERVICE_IID;

  /* void doDialog (in nsIDOMWindow aParent, in nsIDialogParamBlock aParamBlock, in string aChromeURL); */
  nsresult DoDialog(nsIDOMWindow aParent, nsIDialogParamBlock aParamBlock, char *aChromeURL);

}

