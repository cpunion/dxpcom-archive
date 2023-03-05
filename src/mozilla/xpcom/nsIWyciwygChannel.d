/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWyciwygChannel.idl
 */

module mozilla.xpcom.nsIWyciwygChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIChannel;


/* starting interface:    nsIWyciwygChannel */
const char[] NS_IWYCIWYGCHANNEL_IID_STR = "280da566-6f19-4487-a8ca-70c5ba1602c1";

const nsIID NS_IWYCIWYGCHANNEL_IID= 
  {0x280da566, 0x6f19, 0x4487, 
    [ 0xa8, 0xca, 0x70, 0xc5, 0xba, 0x16, 0x02, 0xc1 ]};

/**
 * A channel to  manage all cache-related interactions for layout
 * when it is dealing with dynamic pages created through 
 * document.write(). This interface provides methods that will
 * help layout save dynamic pages in cache for future retrievals.
 */
extern(Windows)
interface nsIWyciwygChannel : nsIChannel {
  static const char[] IID_STR = NS_IWYCIWYGCHANNEL_IID_STR;
  static const nsIID IID = NS_IWYCIWYGCHANNEL_IID;

  /**
   * Append data to the cache entry; opens the cache entry if necessary.
   */
  /* void writeToCacheEntry (in AString aData); */
  nsresult WriteToCacheEntry(nsAString * aData);

  /**
   * Close the cache entry; subsequent writes have undefined behavior.
   */
  /* void closeCacheEntry (in nsresult reason); */
  nsresult CloseCacheEntry(nsresult reason);

  /**
   * Set the wyciwyg channels security info
   */
  /* void setSecurityInfo (in nsISupports aSecurityInfo); */
  nsresult SetSecurityInfo(nsISupports aSecurityInfo);

}

