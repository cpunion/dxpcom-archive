/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPService.idl
 */

module mozilla.xpcom.nsISOAPService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISOAPMessage; /* forward declaration */

public import mozilla.xpcom.nsISOAPResponseListener; /* forward declaration */


/* starting interface:    nsISOAPService */
const char[] NS_ISOAPSERVICE_IID_STR = "9927fa40-1dd1-11b2-a8d1-857ad21b872c";

const nsIID NS_ISOAPSERVICE_IID= 
  {0x9927fa40, 0x1dd1, 0x11b2, 
    [ 0xa8, 0xd1, 0x85, 0x7a, 0xd2, 0x1b, 0x87, 0x2c ]};

/**
 * This interface describes a service which may be
 *   applied to incoming messages.  The service is
 *   responsible for determining whether the message
 *   is one that it should process and rejecting it
 *   if it is not.  Services may be chained.
 */
extern(Windows)
interface nsISOAPService : nsISupports {
  static const char[] IID_STR = NS_ISOAPSERVICE_IID_STR;
  static const nsIID IID = NS_ISOAPSERVICE_IID;

  /**
   * Configuration object that may contain more info on the service
   */
  /* attribute nsISupports configuration; */
  nsresult GetConfiguration(nsISupports  *aConfiguration);
  nsresult SetConfiguration(nsISupports  aConfiguration);

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
  nsresult Process(nsISOAPMessage aMessage, nsISOAPResponseListener aListener, PRBool *_retval);

}

