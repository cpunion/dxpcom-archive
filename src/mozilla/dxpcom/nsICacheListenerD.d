/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICacheListener.idl
 */

module mozilla.dxpcom.nsICacheListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICacheListener;


public import mozilla.dxpcom.nsICacheListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsICache;
public import mozilla.dxpcom.nsICacheD;

public import mozilla.xpcom.nsICacheEntryDescriptor;

public import mozilla.dxpcom.nsICacheEntryDescriptorD;


/* starting wrapper class:    nsICacheListener */
class nsICacheListenerD : public nsISupportsD {

  static const nsIID IID = NS_ICACHELISTENER_IID;


  alias nsICacheListener InnerType;

  this(nsICacheListener intr){
    super(intr);
    this.inner = intr;
  }

  nsICacheListener opCast() {
    return inner;
  }

  void opAssign(nsICacheListener value) {
    inner = value;
  }

  /**
     * Called when the requested access (or appropriate subset) is
     * acquired.  The status parameter equals NS_OK on success.
     * See nsICacheService.idl for accessGranted values.
     */
  /* void onCacheEntryAvailable (in nsICacheEntryDescriptor descriptor, in nsCacheAccessMode accessGranted, in nsresult status); */
  void OnCacheEntryAvailable(nsICacheEntryDescriptorD descriptor, nsCacheAccessMode accessGranted, nsresult status){
    nsresult __result = inner.OnCacheEntryAvailable(descriptor ? cast(nsICacheEntryDescriptor)descriptor : null, accessGranted, status);
    CheckException(__result);
  }

private:
  nsICacheListener inner;

}

