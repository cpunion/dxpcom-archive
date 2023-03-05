/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPService.idl
 */

module mozilla.dxpcom.nsISOAPServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPService;


public import mozilla.dxpcom.nsISOAPServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISOAPMessage;

public import mozilla.dxpcom.nsISOAPMessageD;

public import mozilla.xpcom.nsISOAPResponseListener;

public import mozilla.dxpcom.nsISOAPResponseListenerD;


/* starting wrapper class:    nsISOAPService */
/**
 * This interface describes a service which may be
 *   applied to incoming messages.  The service is
 *   responsible for determining whether the message
 *   is one that it should process and rejecting it
 *   if it is not.  Services may be chained.
 */
class nsISOAPServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPSERVICE_IID;


  alias nsISOAPService InnerType;

  this(nsISOAPService intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPService opCast() {
    return inner;
  }

  void opAssign(nsISOAPService value) {
    inner = value;
  }

  /**
   * Configuration object that may contain more info on the service
   */
  /* attribute nsISupports configuration; */
  nsISupportsD  Configuration(){
    nsISupports value;
    nsresult __result = inner.GetConfiguration(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void Configuration(nsISupportsD  aConfiguration){
    nsISupports value;
    nsresult __result = inner.SetConfiguration(value);
    CheckException(__result);
  }

  /**
   * Process an incoming message.
   *
   * @param aMessage message to be processed
   *
   * @param aListener listener to which to report results
   *
   * @return True if the message will be handled, false if
   *   it should be given to some other service or fail.
   *   In case of failure, a more detailed status will be
   *   recorded in the message.
   */
  /* boolean process (in nsISOAPMessage aMessage, in nsISOAPResponseListener aListener); */
  PRBool Process(nsISOAPMessageD aMessage, nsISOAPResponseListenerD aListener){
    PRBool _retval;
    nsresult __result = inner.Process(aMessage ? cast(nsISOAPMessage)aMessage : null, aListener ? cast(nsISOAPResponseListener)aListener : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISOAPService inner;

}

