/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWSPInterfaceInfoService.idl
 */

module mozilla.xpcom.nsIWSPInterfaceInfoService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.xpcom.nsIInterfaceInfoManager;
public import mozilla.xpcom.nsIWSDL;


/* starting interface:    nsIWSPInterfaceInfoService */
const char[] NS_IWSPINTERFACEINFOSERVICE_IID_STR = "8c7bf4bc-d3fe-4524-b213-ce578bfe936e";

const nsIID NS_IWSPINTERFACEINFOSERVICE_IID= 
  {0x8c7bf4bc, 0xd3fe, 0x4524, 
    [ 0xb2, 0x13, 0xce, 0x57, 0x8b, 0xfe, 0x93, 0x6e ]};

extern(Windows)
interface nsIWSPInterfaceInfoService : nsISupports {
  static const char[] IID_STR = NS_IWSPINTERFACEINFOSERVICE_IID_STR;
  static const nsIID IID = NS_IWSPINTERFACEINFOSERVICE_IID;

  /* [noscript] nsIInterfaceInfo infoForPort (in nsIWSDLPort aPort, in AString aPortURL, in AString aQualifier, in PRBool aIsAsync, out nsIInterfaceInfoManager aSet); */
  nsresult InfoForPort(nsIWSDLPort aPort, nsAString * aPortURL, nsAString * aQualifier, PRBool aIsAsync, nsIInterfaceInfoManager *aSet, nsIInterfaceInfo *_retval);

}

