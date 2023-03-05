/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICharsetResolver.idl
 */

module mozilla.xpcom.nsICharsetResolver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIWebNavigation; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsICharsetResolver */
const char[] NS_ICHARSETRESOLVER_IID_STR = "d143a084-b626-4614-845f-41f3ca43a674";

const nsIID NS_ICHARSETRESOLVER_IID= 
  {0xd143a084, 0xb626, 0x4614, 
    [ 0x84, 0x5f, 0x41, 0xf3, 0xca, 0x43, 0xa6, 0x74 ]};

extern(Windows)
interface nsICharsetResolver : nsISupports {
  static const char[] IID_STR = NS_ICHARSETRESOLVER_IID_STR;
  static const nsIID IID = NS_ICHARSETRESOLVER_IID;

  /**
     * Called to resolve the charset that should be used for parsing the
     * document being loaded from aChannel.
     *
     * If the charset cannot be resolved, but the implementation of
     * nsICharsetResolver wants to be notified of the final resolved charset
     * when one is available, it can set wantCharset to true.  If this is done,
     * the caller of requestCharset is responsible for calling
     * notifyResovedCharset and passing it the final resolved charset and the
     * closure that requestCharset set.
     * 
     * @param aWebNavigation the nsIWebNavigation the document is being loaded
     *                       in.  May be null.
     * @param aChannel the channel the document is coming in from.
     * @param aWantCharset gets set to true if notifyResolvedCharset should be
     *                     called with the given closure object.
     * @param aClosure a resulting object which should be passed
     *                 to notifyResolvedCharset if wantCharset is set to
     *                 true.
     * @returns the resolved charset, or the empty string if no
     *          charset could be determined.
     */
  /* ACString requestCharset (in nsIWebNavigation aWebNavigation, in nsIChannel aChannel, out boolean aWantCharset, out nsISupports aClosure); */
  nsresult RequestCharset(nsIWebNavigation aWebNavigation, nsIChannel aChannel, PRBool *aWantCharset, nsISupports *aClosure, nsACString * _retval);

  /**
     * notifyResolvedCharset
     *
     * some implementations may request that they be notified when the
     * charset is actually detected. 
     *
     * @param charset the detected charset
     * @param closure the closre returned by detectCharset() above
     */
  /* void notifyResolvedCharset (in ACString charset, in nsISupports closure); */
  nsresult NotifyResolvedCharset(nsACString * charset, nsISupports closure);

}

