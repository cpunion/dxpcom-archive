/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecurityWarningDialogs.idl
 */

module mozilla.xpcom.nsISecurityWarningDialogs;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */


/* starting interface:    nsISecurityWarningDialogs */
const char[] NS_ISECURITYWARNINGDIALOGS_IID_STR = "1c399d06-1dd2-11b2-bc58-c87cbcacdb78";

const nsIID NS_ISECURITYWARNINGDIALOGS_IID= 
  {0x1c399d06, 0x1dd2, 0x11b2, 
    [ 0xbc, 0x58, 0xc8, 0x7c, 0xbc, 0xac, 0xdb, 0x78 ]};

/**
 * Functions that display warnings for transitions between secure
 * and insecure pages, posts to insecure servers etc.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsISecurityWarningDialogs : nsISupports {
  static const char[] IID_STR = NS_ISECURITYWARNINGDIALOGS_IID_STR;
  static const nsIID IID = NS_ISECURITYWARNINGDIALOGS_IID;

  /**
   *  Inform the user that a transition 
   *    from an insecure page 
   *    to a secure page
   *  is happening.
   *
   *  @param ctx A user interface context.
   *
   *  @return true if the user confirms to continue
   */
  /* boolean confirmEnteringSecure (in nsIInterfaceRequestor ctx); */
  nsresult ConfirmEnteringSecure(nsIInterfaceRequestor ctx, PRBool *_retval);

  /**
   *  Inform the user that a transition 
   *    from an insecure page 
   *    or from a secure page
   *    to a weak security page
   *  is happening.
   *
   *  @param ctx A user interface context.
   *
   *  @return true if the user confirms to continue
   */
  /* boolean confirmEnteringWeak (in nsIInterfaceRequestor ctx); */
  nsresult ConfirmEnteringWeak(nsIInterfaceRequestor ctx, PRBool *_retval);

  /**
   *  Inform the user that a transition 
   *    from a secure page 
   *    to an insecure page
   *  is happening.
   *
   *  @param ctx A user interface context.
   *
   *  @return true if the user confirms to continue
   */
  /* boolean confirmLeavingSecure (in nsIInterfaceRequestor ctx); */
  nsresult ConfirmLeavingSecure(nsIInterfaceRequestor ctx, PRBool *_retval);

  /**
   *  Inform the user the currently displayed page
   *  contains some secure and some insecure page components.
   *
   *  @param ctx A user interface context.
   *
   *  @return true if the user decides to show insecure objects.
   */
  /* boolean confirmMixedMode (in nsIInterfaceRequestor ctx); */
  nsresult ConfirmMixedMode(nsIInterfaceRequestor ctx, PRBool *_retval);

  /**
   *  Inform the user that information is being submitted
   *  to an insecure page.
   *
   *  @param ctx A user interface context.
   *
   *  @return true if the user confirms to submit.
   */
  /* boolean confirmPostToInsecure (in nsIInterfaceRequestor ctx); */
  nsresult ConfirmPostToInsecure(nsIInterfaceRequestor ctx, PRBool *_retval);

  /**
   *  Inform the user: Although the currently displayed
   *  page was loaded using a secure connection, and the UI probably
   *  currently indicates a secure page, 
   *  that information is being submitted to an insecure page.
   *
   *  @param ctx A user interface context.
   *
   *  @return true if the user confirms to submit.
   */
  /* boolean confirmPostToInsecureFromSecure (in nsIInterfaceRequestor ctx); */
  nsresult ConfirmPostToInsecureFromSecure(nsIInterfaceRequestor ctx, PRBool *_retval);

}

