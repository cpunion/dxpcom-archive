/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICharsetResolver.idl
 */

module mozilla.dxpcom.nsICharsetResolverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICharsetResolver;


public import mozilla.dxpcom.nsICharsetResolverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIWebNavigation;

public import mozilla.dxpcom.nsIWebNavigationD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsICharsetResolver */
class nsICharsetResolverD : public nsISupportsD {

  static const nsIID IID = NS_ICHARSETRESOLVER_IID;


  alias nsICharsetResolver InnerType;

  this(nsICharsetResolver intr){
    super(intr);
    this.inner = intr;
  }

  nsICharsetResolver opCast() {
    return inner;
  }

  void opAssign(nsICharsetResolver value) {
    inner = value;
  }

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
  char[] RequestCharset(nsIWebNavigationD aWebNavigation, nsIChannelD aChannel, out PRBool aWantCharset, out nsISupportsD aClosure){
    nsISupports _aClosure;
    scope auto _retval = new ACString;
    nsresult __result = inner.RequestCharset(aWebNavigation ? cast(nsIWebNavigation)aWebNavigation : null, aChannel ? cast(nsIChannel)aChannel : null, &aWantCharset, &_aClosure, cast(nsACString*)_retval);
    CheckException(__result);
    aClosure = _aClosure ? new nsISupportsD(_aClosure) : null;
    return _retval.GetString();
  }

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
  void NotifyResolvedCharset(char[] charset, nsISupportsD closure){
    scope auto _charset = new ACString(charset);
    nsresult __result = inner.NotifyResolvedCharset(cast(nsACString*)_charset, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

private:
  nsICharsetResolver inner;

}

