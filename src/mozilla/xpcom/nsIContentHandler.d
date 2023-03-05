/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentHandler.idl
 */

module mozilla.xpcom.nsIContentHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsIContentHandler */
const char[] NS_ICONTENTHANDLER_IID_STR = "49439df2-b3d2-441c-bf62-866bdaf56fd2";

const nsIID NS_ICONTENTHANDLER_IID= 
  {0x49439df2, 0xb3d2, 0x441c, 
    [ 0xbf, 0x62, 0x86, 0x6b, 0xda, 0xf5, 0x6f, 0xd2 ]};

extern(Windows)
interface nsIContentHandler : nsISupports {
  static const char[] IID_STR = NS_ICONTENTHANDLER_IID_STR;
  static const nsIID IID = NS_ICONTENTHANDLER_IID;

  /**
   * Tells the content handler to take over handling the content. If this
   * function succeeds, the URI Loader will leave this request alone, ignoring
   * progress notifications. Failure of this method will cause the request to be
   * cancelled, unless the error code is NS_ERROR_WONT_HANDLE_CONTENT (see
   * below).
   *
   * @param aWindowContext
   *        Window context, used to get things like the current nsIDOMWindow
   *        for this request. May be null.
   * @param aContentType
   *        The content type of aRequest
   * @param aRequest
   *        A request whose content type is already known.
   *
   * @throw NS_ERROR_WONT_HANDLE_CONTENT Indicates that this handler does not
   *        want to handle this content. A different way for handling this
   *        content should be tried.
   */
  /* void handleContent (in string aContentType, in nsIInterfaceRequestor aWindowContext, in nsIRequest aRequest); */
  nsresult HandleContent(char *aContentType, nsIInterfaceRequestor aWindowContext, nsIRequest aRequest);

}

