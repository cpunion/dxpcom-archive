/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICopyMsgStreamListener.idl
 */

module mozilla.dxpcom.nsICopyMsgStreamListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICopyMsgStreamListener;


public import mozilla.dxpcom.nsICopyMsgStreamListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;
public import mozilla.xpcom.nsICopyMessageListener;
public import mozilla.dxpcom.nsICopyMessageListenerD;


/* starting wrapper class:    nsICopyMessageStreamListener */
class nsICopyMessageStreamListenerD : public nsISupportsD {

  static const nsIID IID = NS_ICOPYMESSAGESTREAMLISTENER_IID;


  alias nsICopyMessageStreamListener InnerType;

  this(nsICopyMessageStreamListener intr){
    super(intr);
    this.inner = intr;
  }

  nsICopyMessageStreamListener opCast() {
    return inner;
  }

  void opAssign(nsICopyMessageStreamListener value) {
    inner = value;
  }

  /* void Init (in nsIMsgFolder srcFolder, in nsICopyMessageListener destination, in nsISupports listenerData); */
  void Init(nsIMsgFolderD srcFolder, nsICopyMessageListenerD destination, nsISupportsD listenerData){
    nsresult __result = inner.Init(srcFolder ? cast(nsIMsgFolder)srcFolder : null, destination ? cast(nsICopyMessageListener)destination : null, listenerData ? cast(nsISupports)listenerData : null);
    CheckException(__result);
  }

  /* void StartMessage (); */
  void StartMessage(){
    nsresult __result = inner.StartMessage();
    CheckException(__result);
  }

  /* void EndMessage (in nsMsgKey key); */
  void EndMessage(nsMsgKey key){
    nsresult __result = inner.EndMessage(key);
    CheckException(__result);
  }

  /* void EndCopy (in nsISupports url, in nsresult aStatus); */
  void EndCopy(nsISupportsD url, nsresult aStatus){
    nsresult __result = inner.EndCopy(url ? cast(nsISupports)url : null, aStatus);
    CheckException(__result);
  }

private:
  nsICopyMessageStreamListener inner;

}

