/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcIMessageObserver.idl
 */

module mozilla.xpcom.ipcIMessageObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    ipcIMessageObserver */
const char[] IPCIMESSAGEOBSERVER_IID_STR = "e40a4a3c-2dc1-470e-ab7f-5675fe1f1384";

const nsIID IPCIMESSAGEOBSERVER_IID= 
  {0xe40a4a3c, 0x2dc1, 0x470e, 
    [ 0xab, 0x7f, 0x56, 0x75, 0xfe, 0x1f, 0x13, 0x84 ]};

/**
 * ipcIMessageObserver
 */
extern(Windows)
interface ipcIMessageObserver : nsISupports {
  static const char[] IID_STR = IPCIMESSAGEOBSERVER_IID_STR;
  static const nsIID IID = IPCIMESSAGEOBSERVER_IID;

  /**
     * @param aSenderID
     *        the client id of the sender of this message.  if sent by the
     *        daemon (or a deamon module), then this will have a value of 0.
     * @param aTarget
     *        the target of the message, corresponding to the target this
     *        observer was registered under.  this parameter is passed to allow
     *        an observer instance to receive messages for more than one target.
     * @param aData
     *        the data of the message.
     * @param aDataLen
     *        the data length of the message.
     */
  /* void onMessageAvailable (in unsigned long aSenderID, in nsIDRef aTarget, [array, size_is (aDataLen), const] in octet aData, in unsigned long aDataLen); */
  nsresult OnMessageAvailable(PRUint32 aSenderID, nsID * aTarget, PRUint8 *aData, PRUint32 aDataLen);

}

