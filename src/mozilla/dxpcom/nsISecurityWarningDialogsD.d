/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecurityWarningDialogs.idl
 */

module mozilla.dxpcom.nsISecurityWarningDialogsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISecurityWarningDialogs;


public import mozilla.dxpcom.nsISecurityWarningDialogsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;


/* starting wrapper class:    nsISecurityWarningDialogs */
/**
 * Functions that display warnings for transitions between secure
 * and insecure pages, posts to insecure servers etc.
 *
 * @status FROZEN
 */
class nsISecurityWarningDialogsD : public nsISupportsD {

  static const nsIID IID = NS_ISECURITYWARNINGDIALOGS_IID;


  alias nsISecurityWarningDialogs InnerType;

  this(nsISecurityWarningDialogs intr){
    super(intr);
    this.inner = intr;
  }

  nsISecurityWarningDialogs opCast() {
    return inner;
  }

  void opAssign(nsISecurityWarningDialogs value) {
    inner = value;
  }

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
  PRBool ConfirmEnteringSecure(nsIInterfaceRequestorD ctx){
    PRBool _retval;
    nsresult __result = inner.ConfirmEnteringSecure(ctx ? cast(nsIInterfaceRequestor)ctx : null, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  PRBool ConfirmEnteringWeak(nsIInterfaceRequestorD ctx){
    PRBool _retval;
    nsresult __result = inner.ConfirmEnteringWeak(ctx ? cast(nsIInterfaceRequestor)ctx : null, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  PRBool ConfirmLeavingSecure(nsIInterfaceRequestorD ctx){
    PRBool _retval;
    nsresult __result = inner.ConfirmLeavingSecure(ctx ? cast(nsIInterfaceRequestor)ctx : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *  Inform the user the currently displayed page
   *  contains some secure and some insecure page components.
   *
   *  @param ctx A user interface context.
   *
   *  @return true if the user decides to show insecure objects.
   */
  /* boolean confirmMixedMode (in nsIInterfaceRequestor ctx); */
  PRBool ConfirmMixedMode(nsIInterfaceRequestorD ctx){
    PRBool _retval;
    nsresult __result = inner.ConfirmMixedMode(ctx ? cast(nsIInterfaceRequestor)ctx : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *  Inform the user that information is being submitted
   *  to an insecure page.
   *
   *  @param ctx A user interface context.
   *
   *  @return true if the user confirms to submit.
   */
  /* boolean confirmPostToInsecure (in nsIInterfaceRequestor ctx); */
  PRBool ConfirmPostToInsecure(nsIInterfaceRequestorD ctx){
    PRBool _retval;
    nsresult __result = inner.ConfirmPostToInsecure(ctx ? cast(nsIInterfaceRequestor)ctx : null, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  PRBool ConfirmPostToInsecureFromSecure(nsIInterfaceRequestorD ctx){
    PRBool _retval;
    nsresult __result = inner.ConfirmPostToInsecureFromSecure(ctx ? cast(nsIInterfaceRequestor)ctx : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISecurityWarningDialogs inner;

}

