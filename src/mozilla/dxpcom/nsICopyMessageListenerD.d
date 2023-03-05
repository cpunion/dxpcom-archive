/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICopyMessageListener.idl
 */

module mozilla.dxpcom.nsICopyMessageListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICopyMessageListener;


public import mozilla.dxpcom.nsICopyMessageListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsICopyMessageListener */
class nsICopyMessageListenerD : public nsISupportsD {

  static const nsIID IID = NS_ICOPYMESSAGELISTENER_IID;


  alias nsICopyMessageListener InnerType;

  this(nsICopyMessageListener intr){
    super(intr);
    this.inner = intr;
  }

  nsICopyMessageListener opCast() {
    return inner;
  }

  void opAssign(nsICopyMessageListener value) {
    inner = value;
  }

  /* void beginCopy (in nsIMsgDBHdr message); */
  void BeginCopy(nsIMsgDBHdrD message){
    nsresult __result = inner.BeginCopy(message ? cast(nsIMsgDBHdr)message : null);
    CheckException(__result);
  }

  /* void startMessage (); */
  void StartMessage(){
    nsresult __result = inner.StartMessage();
    CheckException(__result);
  }

  /* void copyData (in nsIInputStream aIStream, in long aLength); */
  void CopyData(nsIInputStreamD aIStream, PRInt32 aLength){
    nsresult __result = inner.CopyData(aIStream ? cast(nsIInputStream)aIStream : null, aLength);
    CheckException(__result);
  }

  /* void endMessage (in nsMsgKey key); */
  void EndMessage(nsMsgKey key){
    nsresult __result = inner.EndMessage(key);
    CheckException(__result);
  }

  /* void endCopy (in boolean copySucceeded); */
  void EndCopy(PRBool copySucceeded){
    nsresult __result = inner.EndCopy(copySucceeded);
    CheckException(__result);
  }

  /* void endMove (in boolean moveSucceeded); */
  void EndMove(PRBool moveSucceeded){
    nsresult __result = inner.EndMove(moveSucceeded);
    CheckException(__result);
  }

private:
  nsICopyMessageListener inner;

}

