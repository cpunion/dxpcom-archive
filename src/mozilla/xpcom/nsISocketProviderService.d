/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISocketProviderService.idl
 */

module mozilla.xpcom.nsISocketProviderService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISocketProvider; /* forward declaration */


/* starting interface:    nsISocketProviderService */
const char[] NS_ISOCKETPROVIDERSERVICE_IID_STR = "8f8a23d0-5472-11d3-bbc8-0000861d1237";

const nsIID NS_ISOCKETPROVIDERSERVICE_IID= 
  {0x8f8a23d0, 0x5472, 0x11d3, 
    [ 0xbb, 0xc8, 0x00, 0x00, 0x86, 0x1d, 0x12, 0x37 ]};

/**
 * nsISocketProviderService
 *
 * Provides a mapping between a socket type and its associated socket provider
 * instance.  One could also use the service manager directly.
 */
extern(Windows)
interface nsISocketProviderService : nsISupports {
  static const char[] IID_STR = NS_ISOCKETPROVIDERSERVICE_IID_STR;
  static const nsIID IID = NS_ISOCKETPROVIDERSERVICE_IID;

  /* nsISocketProvider getSocketProvider (in string socketType); */
  nsresult GetSocketProvider(char *socketType, nsISocketProvider *_retval);

}

