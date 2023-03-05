/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMailboxUrl.idl
 */

module mozilla.dxpcom.nsIMailboxUrlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMailboxUrl;


public import mozilla.dxpcom.nsIMailboxUrlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;
public import mozilla.xpcom.nsIFileSpec;
public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIMailboxUrl */
class nsIMailboxUrlD : public nsISupportsD {

  static const nsIID IID = NS_IMAILBOXURL_IID;


  alias nsIMailboxUrl InnerType;

  this(nsIMailboxUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsIMailboxUrl opCast() {
    return inner;
  }

  void opAssign(nsIMailboxUrl value) {
    inner = value;
  }

  /* attribute nsIStreamListener mailboxParser; */
  nsIStreamListenerD  MailboxParser(){
    nsIStreamListener value;
    nsresult __result = inner.GetMailboxParser(&value);
    CheckException(__result);
    return new nsIStreamListenerD(value);
  }
  void MailboxParser(nsIStreamListenerD  aMailboxParser){
    nsIStreamListener value;
    nsresult __result = inner.SetMailboxParser(value);
    CheckException(__result);
  }

  /* attribute nsIStreamListener mailboxCopyHandler; */
  nsIStreamListenerD  MailboxCopyHandler(){
    nsIStreamListener value;
    nsresult __result = inner.GetMailboxCopyHandler(&value);
    CheckException(__result);
    return new nsIStreamListenerD(value);
  }
  void MailboxCopyHandler(nsIStreamListenerD  aMailboxCopyHandler){
    nsIStreamListener value;
    nsresult __result = inner.SetMailboxCopyHandler(value);
    CheckException(__result);
  }

  /* [noscript] readonly attribute nsFileSpecPtr fileSpec; */
  nsFileSpec * FileSpec(){
    nsFileSpec * value;
    nsresult __result = inner.GetFileSpec(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgKey messageKey; */
  nsMsgKey MessageKey(){
    nsMsgKey value;
    nsresult __result = inner.GetMessageKey(&value);
    CheckException(__result);
    return value;
  }

  /* void setMoveCopyMsgKeys (out nsMsgKey keysToFlag, in long numKeys); */
  void SetMoveCopyMsgKeys(out nsMsgKey keysToFlag, PRInt32 numKeys){
    nsresult __result = inner.SetMoveCopyMsgKeys(&keysToFlag, numKeys);
    CheckException(__result);
  }

  /* void getMoveCopyMsgHdrForIndex (in unsigned long msgIndex, out nsIMsgDBHdr msgHdr); */
  void GetMoveCopyMsgHdrForIndex(PRUint32 msgIndex, out nsIMsgDBHdrD msgHdr){
    nsIMsgDBHdr _msgHdr;
    nsresult __result = inner.GetMoveCopyMsgHdrForIndex(msgIndex, &_msgHdr);
    CheckException(__result);
    msgHdr = _msgHdr ? new nsIMsgDBHdrD(_msgHdr) : null;
  }

  /* readonly attribute unsigned long numMoveCopyMsgs; */
  PRUint32 NumMoveCopyMsgs(){
    PRUint32 value;
    nsresult __result = inner.GetNumMoveCopyMsgs(&value);
    CheckException(__result);
    return value;
  }

  /* attribute unsigned long curMoveCopyMsgIndex; */
  PRUint32 CurMoveCopyMsgIndex(){
    PRUint32 value;
    nsresult __result = inner.GetCurMoveCopyMsgIndex(&value);
    CheckException(__result);
    return value;
  }
  void CurMoveCopyMsgIndex(PRUint32 aCurMoveCopyMsgIndex){
    nsresult __result = inner.SetCurMoveCopyMsgIndex(aCurMoveCopyMsgIndex);
    CheckException(__result);
  }

  /* attribute unsigned long messageSize; */
  PRUint32 MessageSize(){
    PRUint32 value;
    nsresult __result = inner.GetMessageSize(&value);
    CheckException(__result);
    return value;
  }
  void MessageSize(PRUint32 aMessageSize){
    nsresult __result = inner.SetMessageSize(aMessageSize);
    CheckException(__result);
  }

  /* attribute nsMailboxAction mailboxAction; */
  nsMailboxAction MailboxAction(){
    nsMailboxAction value;
    nsresult __result = inner.GetMailboxAction(&value);
    CheckException(__result);
    return value;
  }
  void MailboxAction(nsMailboxAction aMailboxAction){
    nsMailboxAction value;
    nsresult __result = inner.SetMailboxAction(value);
    CheckException(__result);
  }

  enum { ActionParseMailbox = 0 }

  enum { ActionFetchMessage = 1 }

  enum { ActionCopyMessage = 2 }

  enum { ActionMoveMessage = 3 }

  enum { ActionSaveMessageToDisk = 4 }

  enum { ActionAppendMessageToDisk = 5 }

  enum { ActionFetchPart = 6 }

private:
  nsIMailboxUrl inner;

}

