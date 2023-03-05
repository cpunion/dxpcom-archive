/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheListener.idl
 */

module mozilla.xpcom.nsICacheListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsICache;

public import mozilla.xpcom.nsICacheEntryDescriptor; /* forward declaration */


/* starting interface:    nsICacheListener */
const char[] NS_ICACHELISTENER_IID_STR = "638c3848-778b-4851-8ff3-9400f65b8773";

const nsIID NS_ICACHELISTENER_IID= 
  {0x638c3848, 0x778b, 0x4851, 
    [ 0x8f, 0xf3, 0x94, 0x00, 0xf6, 0x5b, 0x87, 0x73 ]};

extern(Windows)
interface nsICacheListener : nsISupports {
  static const char[] IID_STR = NS_ICACHELISTENER_IID_STR;
  static const nsIID IID = NS_ICACHELISTENER_IID;

  /**
     * Called when the requested access (or appropriate subset) is
     * acquired.  The status parameter equals NS_OK on success.
     * See nsICacheService.idl for accessGranted values.
     */
  /* void onCacheEntryAvailable (in nsICacheEntryDescriptor descriptor, in nsCacheAccessMode accessGranted, in nsresult status); */
  nsresult OnCacheEntryAvailable(nsICacheEntryDescriptor descriptor, nsCacheAccessMode accessGranted, nsresult status);

}

