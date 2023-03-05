/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGlobalHistory3.idl
 */

module mozilla.xpcom.nsIGlobalHistory3;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIGlobalHistory2;

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsIGlobalHistory3 */
const char[] NS_IGLOBALHISTORY3_IID_STR = "24306852-c60e-49c3-a455-90f6747118ba";

const nsIID NS_IGLOBALHISTORY3_IID= 
  {0x24306852, 0xc60e, 0x49c3, 
    [ 0xa4, 0x55, 0x90, 0xf6, 0x74, 0x71, 0x18, 0xba ]};

/**
 * Provides information about global history to gecko, extending GlobalHistory2
 */
extern(Windows)
interface nsIGlobalHistory3 : nsIGlobalHistory2 {
  static const char[] IID_STR = NS_IGLOBALHISTORY3_IID_STR;
  static const nsIID IID = NS_IGLOBALHISTORY3_IID;

  /**
   * Notifies the history system that the page loading via aOldChannel
   * redirected to aNewChannel. Implementations should generally add the URI for
   * aOldChannel to history for link coloring, but are advised not to expose it
   * in the history user interface. This function is preferred if
   * nsIGlobalHistory3 is available. Otherwise, nsIGlobalHistory2.addURI should
   * be called with redirect=true.
   *
   * This function is preferred to nsIGlobalHistory2.addURI because it provides
   * more information (including the redirect destination, channels involved,
   * and redirect flags) to the history implementation.
   *
   * For implementors of nsIGlobalHistory3: The history implementation is
   * responsible for sending NS_LINK_VISITED_EVENT_TOPIC to observers for
   * redirect pages. This notification must be sent for history consumers for
   * all non-redirect pages.
   *
   * @param aToplevel whether the URI is loaded in a top-level window.  If
   *        false, the load is in a subframe.
   *
   * The other params to this function are the same as those for
   * nsIChannelEventSink::OnChannelRedirect.
   *
   * Note: Implementors who wish to implement this interface but rely on
   * nsIGlobalHistory2.addURI for redirect processing may throw
   * NS_ERROR_NOT_IMPLEMENTED from this method.  If they do so, then callers
   * must call nsIGlobalHistory2.addURI upon getting the
   * NS_ERROR_NOT_IMPLEMENTED result.
   */
  /* void addDocumentRedirect (in nsIChannel aOldChannel, in nsIChannel aNewChannel, in PRInt32 aFlags, in boolean aTopLevel); */
  nsresult AddDocumentRedirect(nsIChannel aOldChannel, nsIChannel aNewChannel, PRInt32 aFlags, PRBool aTopLevel);

}

