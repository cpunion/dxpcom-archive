/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSendLaterListener.idl
 */

module mozilla.xpcom.nsIMsgSendLaterListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsIMsgSendLaterListener */
const char[] NS_IMSGSENDLATERLISTENER_IID_STR = "607da5a8-289d-11d3-82b7-444553540002";

const nsIID NS_IMSGSENDLATERLISTENER_IID= 
  {0x607da5a8, 0x289d, 0x11d3, 
    [ 0x82, 0xb7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x02 ]};

extern(Windows)
interface nsIMsgSendLaterListener : nsISupports {
  static const char[] IID_STR = NS_IMSGSENDLATERLISTENER_IID_STR;
  static const nsIID IID = NS_IMSGSENDLATERLISTENER_IID;

  /**
     * Notify the observer that the operation of sending all unset messages has
     * started
     */
  /* void OnStartSending (in PRUint32 aTotalMessageCount); */
  nsresult OnStartSending(PRUint32 aTotalMessageCount);

  /**
     * Notify the observer that progress as occurred for send operation
     */
  /* void OnProgress (in PRUint32 aCurrentMessage, in PRUint32 aTotalMessage); */
  nsresult OnProgress(PRUint32 aCurrentMessage, PRUint32 aTotalMessage);

  /**
     * Notify the observer with a status message for the send later operation
     */
  /* void OnStatus (in wstring aMsg); */
  nsresult OnStatus(PRUnichar *aMsg);

  /**
     * Notify the observer that the message has been sent.  This method is 
     * called once when the networking library has finished processing the 
     * message.
     * 
     * This method is called regardless of whether the the operation was successful.
     * aMsgID   The message id for the mail message
     * status   Status code for the message send.
     * msg      A text string describing the error.
     * returnFileSpec The returned file spec for save to file operations.
     */
  /* void OnStopSending (in nsresult aStatus, in wstring aMsg, in PRUint32 aTotalTried, in PRUint32 aSuccessful); */
  nsresult OnStopSending(nsresult aStatus, PRUnichar *aMsg, PRUint32 aTotalTried, PRUint32 aSuccessful);

}

