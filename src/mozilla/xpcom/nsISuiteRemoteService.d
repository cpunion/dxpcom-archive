/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISuiteRemoteService.idl
 */

module mozilla.xpcom.nsISuiteRemoteService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsISuiteRemoteService */
const char[] NS_ISUITEREMOTESERVICE_IID_STR = "52add212-2067-4575-8d26-edd5165179b1";

const nsIID NS_ISUITEREMOTESERVICE_IID= 
  {0x52add212, 0x2067, 0x4575, 
    [ 0x8d, 0x26, 0xed, 0xd5, 0x16, 0x51, 0x79, 0xb1 ]};

/**
 * Responds to incoming xremote requests for the mozilla suite.
 */
extern(Windows)
interface nsISuiteRemoteService : nsISupports {
  static const char[] IID_STR = NS_ISUITEREMOTESERVICE_IID_STR;
  static const nsIID IID = NS_ISUITEREMOTESERVICE_IID;

  /**
   * Parse the command given.
   *
   * @param aCommand The command string, e.g. "openURL(http://www.foo.com/)"
   * @param aContext The domwindow to target the command at. May be null, and
   *                 may be ignored.
   */
  /* void parseCommand (in string aCommand, in nsIDOMWindow aContext); */
  nsresult ParseCommand(char *aCommand, nsIDOMWindow aContext);

}

