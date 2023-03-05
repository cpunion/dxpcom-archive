/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSendListener.idl
 */

module mozilla.xpcom.nsIMsgSendListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsIMsgSendListener */
const char[] NS_IMSGSENDLISTENER_IID_STR = "ed3d3227-2803-11d3-82b7-444553540002";

const nsIID NS_IMSGSENDLISTENER_IID= 
  {0xed3d3227, 0x2803, 0x11d3, 
    [ 0x82, 0xb7, 0x44, 0x45, 0x53, 0x54, 0x00, 0x02 ]};

extern(Windows)
interface nsIMsgSendListener : nsISupports {
  static const char[] IID_STR = NS_IMSGSENDLISTENER_IID_STR;
  static const nsIID IID = NS_IMSGSENDLISTENER_IID;

  /**
     * Notify the observer that the message has started to be delivered. This method is
     * called only once, at the beginning of a message send operation.
     *
     * @return The return value is currently ignored.  In the future it may be
     * used to cancel the URL load..
     */
  /* void onStartSending (in string aMsgID, in PRUint32 aMsgSize); */
  nsresult OnStartSending(char *aMsgID, PRUint32 aMsgSize);

  /**
     * Notify the observer that progress as occurred for the message send
     */
  /* void onProgress (in string aMsgID, in PRUint32 aProgress, in PRUint32 aProgressMax); */
  nsresult OnProgress(char *aMsgID, PRUint32 aProgress, PRUint32 aProgressMax);

  /**
     * Notify the observer with a status message for the message send
     */
  /* void onStatus (in string aMsgID, in wstring aMsg); */
  nsresult OnStatus(char *aMsgID, PRUnichar *aMsg);

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
  /* void onStopSending (in string aMsgID, in nsresult aStatus, in wstring aMsg, in nsIFileSpec returnFileSpec); */
  nsresult OnStopSending(char *aMsgID, nsresult aStatus, PRUnichar *aMsg, nsIFileSpec returnFileSpec);

  /**
     * Notify the observer with the folder uri before the draft is copied.
     */
  /* void onGetDraftFolderURI (in string aFolderURI); */
  nsresult OnGetDraftFolderURI(char *aFolderURI);

  /**
     * Notify the observer when the user aborts the send without actually doing the send
     * eg : by closing the compose window without Send.
     */
  /* void onSendNotPerformed (in string aMsgID, in nsresult aStatus); */
  nsresult OnSendNotPerformed(char *aMsgID, nsresult aStatus);

}

