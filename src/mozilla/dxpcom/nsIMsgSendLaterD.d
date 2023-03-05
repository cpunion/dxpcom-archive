/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSendLater.idl
 */

module mozilla.dxpcom.nsIMsgSendLaterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSendLater;


public import mozilla.dxpcom.nsIMsgSendLaterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;
public import mozilla.xpcom.nsIMsgCompFields;
public import mozilla.dxpcom.nsIMsgCompFieldsD;
public import mozilla.xpcom.nsIMsgSendListener;
public import mozilla.dxpcom.nsIMsgSendListenerD;
public import mozilla.xpcom.nsIMsgSendLaterListener;
public import mozilla.dxpcom.nsIMsgSendLaterListenerD;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;


/* starting wrapper class:    nsIMsgSendLater */
class nsIMsgSendLaterD : public nsIStreamListenerD {

  static const nsIID IID = NS_IMSGSENDLATER_IID;


  alias nsIMsgSendLater InnerType;

  this(nsIMsgSendLater intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSendLater opCast() {
    return inner;
  }

  void opAssign(nsIMsgSendLater value) {
    inner = value;
  }

  /* void SendUnsentMessages (in nsIMsgIdentity identity); */
  void SendUnsentMessages(nsIMsgIdentityD identity){
    nsresult __result = inner.SendUnsentMessages(identity ? cast(nsIMsgIdentity)identity : null);
    CheckException(__result);
  }

  /* attribute nsIMsgWindow msgWindow; */
  nsIMsgWindowD  MsgWindow(){
    nsIMsgWindow value;
    nsresult __result = inner.GetMsgWindow(&value);
    CheckException(__result);
    return new nsIMsgWindowD(value);
  }
  void MsgWindow(nsIMsgWindowD  aMsgWindow){
    nsIMsgWindow value;
    nsresult __result = inner.SetMsgWindow(value);
    CheckException(__result);
  }

  /* void RemoveListener (in nsIMsgSendLaterListener aListener); */
  void RemoveListener(nsIMsgSendLaterListenerD aListener){
    nsresult __result = inner.RemoveListener(aListener ? cast(nsIMsgSendLaterListener)aListener : null);
    CheckException(__result);
  }

  /* void AddListener (in nsIMsgSendLaterListener aListener); */
  void AddListener(nsIMsgSendLaterListenerD aListener){
    nsresult __result = inner.AddListener(aListener ? cast(nsIMsgSendLaterListener)aListener : null);
    CheckException(__result);
  }

  /* nsIMsgFolder getUnsentMessagesFolder (in nsIMsgIdentity userIdentity); */
  nsIMsgFolderD  GetUnsentMessagesFolder(nsIMsgIdentityD userIdentity){
    nsIMsgFolder _retval;
    nsresult __result = inner.GetUnsentMessagesFolder(userIdentity ? cast(nsIMsgIdentity)userIdentity : null, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

private:
  nsIMsgSendLater inner;

}

