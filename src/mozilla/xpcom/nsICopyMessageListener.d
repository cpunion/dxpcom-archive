/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICopyMessageListener.idl
 */

module mozilla.xpcom.nsICopyMessageListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsICopyMessageListener */
const char[] NS_ICOPYMESSAGELISTENER_IID_STR = "53ca78fe-e231-11d2-8a4d-0060b0fc04d2";

const nsIID NS_ICOPYMESSAGELISTENER_IID= 
  {0x53ca78fe, 0xe231, 0x11d2, 
    [ 0x8a, 0x4d, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xd2 ]};

extern(Windows)
interface nsICopyMessageListener : nsISupports {
  static const char[] IID_STR = NS_ICOPYMESSAGELISTENER_IID_STR;
  static const nsIID IID = NS_ICOPYMESSAGELISTENER_IID;

  /* void beginCopy (in nsIMsgDBHdr message); */
  nsresult BeginCopy(nsIMsgDBHdr message);

  /* void startMessage (); */
  nsresult StartMessage();

  /* void copyData (in nsIInputStream aIStream, in long aLength); */
  nsresult CopyData(nsIInputStream aIStream, PRInt32 aLength);

  /* void endMessage (in nsMsgKey key); */
  nsresult EndMessage(nsMsgKey key);

  /* void endCopy (in boolean copySucceeded); */
  nsresult EndCopy(PRBool copySucceeded);

  /* void endMove (in boolean moveSucceeded); */
  nsresult EndMove(PRBool moveSucceeded);

}

