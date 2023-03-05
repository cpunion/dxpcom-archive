/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxyCreateInstance.idl
 */

module mozilla.xpcom.nsIProxyCreateInstance;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProxyCreateInstance */
const char[] NS_IPROXYCREATEINSTANCE_IID_STR = "948c2080-0398-11d3-915e-0000863011c4";

const nsIID NS_IPROXYCREATEINSTANCE_IID= 
  {0x948c2080, 0x0398, 0x11d3, 
    [ 0x91, 0x5e, 0x00, 0x00, 0x86, 0x30, 0x11, 0xc4 ]};

extern(Windows)
interface nsIProxyCreateInstance : nsISupports {
  static const char[] IID_STR = NS_IPROXYCREATEINSTANCE_IID_STR;
  static const nsIID IID = NS_IPROXYCREATEINSTANCE_IID;

  /* [noscript] void CreateInstanceByIID (in nsIIDRef cid, in nsISupports aOuter, in nsIIDRef iid, out voidPtr result); */
  nsresult CreateInstanceByIID(nsIID * cid, nsISupports aOuter, nsIID * iid, void * *result);

  /* [noscript] void CreateInstanceByContractID (in string aContractID, in nsISupports aOuter, in nsIIDRef iid, out voidPtr result); */
  nsresult CreateInstanceByContractID(char *aContractID, nsISupports aOuter, nsIID * iid, void * *result);

}

