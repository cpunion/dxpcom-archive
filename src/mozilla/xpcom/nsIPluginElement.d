/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginElement.idl
 */

module mozilla.xpcom.nsIPluginElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPluginElement */
const char[] NS_IPLUGINELEMENT_IID_STR = "41be252d-c47b-40f3-94bc-bffe51762d68";

const nsIID NS_IPLUGINELEMENT_IID= 
  {0x41be252d, 0xc47b, 0x40f3, 
    [ 0x94, 0xbc, 0xbf, 0xfe, 0x51, 0x76, 0x2d, 0x68 ]};

/**
 * Interface which plugin elements (e.g. embed and object) implement
 * (but don't automatically expose to JS) in addition to their dom
 * specific interface.
 */
extern(Windows)
interface nsIPluginElement : nsISupports {
  static const char[] IID_STR = NS_IPLUGINELEMENT_IID_STR;
  static const nsIID IID = NS_IPLUGINELEMENT_IID;

  /**
   * The actual mime type (the one we got back from the network
   * request) for the plugin element.
   */
  /* readonly attribute ACString actualType; */
  nsresult GetActualType(nsACString * aActualType);

  /**
   * Non-scriptable setter for the actual mime type (the one we got
   * back from the network request).
   */
  /* [noscript] void setActualType (in ACString actualType); */
  nsresult SetActualType(nsACString * actualType);

}

