/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWyciwygChannel.idl
 */

module mozilla.dxpcom.nsIWyciwygChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWyciwygChannel;


public import mozilla.dxpcom.nsIWyciwygChannelD;

public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIWyciwygChannel */
/**
 * A channel to  manage all cache-related interactions for layout
 * when it is dealing with dynamic pages created through 
 * document.write(). This interface provides methods that will
 * help layout save dynamic pages in cache for future retrievals.
 */
class nsIWyciwygChannelD : public nsIChannelD {

  static const nsIID IID = NS_IWYCIWYGCHANNEL_IID;


  alias nsIWyciwygChannel InnerType;

  this(nsIWyciwygChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIWyciwygChannel opCast() {
    return inner;
  }

  void opAssign(nsIWyciwygChannel value) {
    inner = value;
  }

  /**
   * Append data to the cache entry; opens the cache entry if necessary.
   */
  /* void writeToCacheEntry (in AString aData); */
  void WriteToCacheEntry(wchar[] aData){
    scope auto _aData = new AString(aData);
    nsresult __result = inner.WriteToCacheEntry(cast(nsAString*)_aData);
    CheckException(__result);
  }

  /**
   * Close the cache entry; subsequent writes have undefined behavior.
   */
  /* void closeCacheEntry (in nsresult reason); */
  void CloseCacheEntry(nsresult reason){
    nsresult __result = inner.CloseCacheEntry(reason);
    CheckException(__result);
  }

  /**
   * Set the wyciwyg channels security info
   */
  /* void setSecurityInfo (in nsISupports aSecurityInfo); */
  void SetSecurityInfo(nsISupportsD aSecurityInfo){
    nsresult __result = inner.SetSecurityInfo(aSecurityInfo ? cast(nsISupports)aSecurityInfo : null);
    CheckException(__result);
  }

private:
  nsIWyciwygChannel inner;

}

