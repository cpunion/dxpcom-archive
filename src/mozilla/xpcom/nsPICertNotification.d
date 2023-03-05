/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPICertNotification.idl
 */

module mozilla.xpcom.nsPICertNotification;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIPrincipal; /* forward declaration */


/* starting interface:    nsPICertNotification */
const char[] NS_PICERTNOTIFICATION_IID_STR = "42cd7162-ea4a-4088-9888-63ea5095869e";

const nsIID NS_PICERTNOTIFICATION_IID= 
  {0x42cd7162, 0xea4a, 0x4088, 
    [ 0x98, 0x88, 0x63, 0xea, 0x50, 0x95, 0x86, 0x9e ]};

extern(Windows)
interface nsPICertNotification : nsISupports {
  static const char[] IID_STR = NS_PICERTNOTIFICATION_IID_STR;
  static const nsIID IID = NS_PICERTNOTIFICATION_IID;

  /* void onCertAvailable (in nsIURI aURI, in nsISupports aContext, in PRUint32 aStatus, in nsIPrincipal aPrincipal); */
  nsresult OnCertAvailable(nsIURI aURI, nsISupports aContext, PRUint32 aStatus, nsIPrincipal aPrincipal);

}

