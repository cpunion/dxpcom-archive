/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICopyMsgStreamListener.idl
 */

module mozilla.xpcom.nsICopyMsgStreamListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.xpcom.nsICopyMessageListener;


/* starting interface:    nsICopyMessageStreamListener */
const char[] NS_ICOPYMESSAGESTREAMLISTENER_IID_STR = "7741daec-2125-11d3-8a90-0060b0fc04d2";

const nsIID NS_ICOPYMESSAGESTREAMLISTENER_IID= 
  {0x7741daec, 0x2125, 0x11d3, 
    [ 0x8a, 0x90, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xd2 ]};

extern(Windows)
interface nsICopyMessageStreamListener : nsISupports {
  static const char[] IID_STR = NS_ICOPYMESSAGESTREAMLISTENER_IID_STR;
  static const nsIID IID = NS_ICOPYMESSAGESTREAMLISTENER_IID;

  /* void Init (in nsIMsgFolder srcFolder, in nsICopyMessageListener destination, in nsISupports listenerData); */
  nsresult Init(nsIMsgFolder srcFolder, nsICopyMessageListener destination, nsISupports listenerData);

  /* void StartMessage (); */
  nsresult StartMessage();

  /* void EndMessage (in nsMsgKey key); */
  nsresult EndMessage(nsMsgKey key);

  /* void EndCopy (in nsISupports url, in nsresult aStatus); */
  nsresult EndCopy(nsISupports url, nsresult aStatus);

}

