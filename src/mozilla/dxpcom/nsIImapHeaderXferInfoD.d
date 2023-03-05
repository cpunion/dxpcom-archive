/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapHeaderXferInfo.idl
 */

module mozilla.dxpcom.nsIImapHeaderXferInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapHeaderXferInfo;


public import mozilla.dxpcom.nsIImapHeaderXferInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;


/* starting wrapper class:    nsIImapHeaderInfo */
class nsIImapHeaderInfoD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPHEADERINFO_IID;


  alias nsIImapHeaderInfo InnerType;

  this(nsIImapHeaderInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapHeaderInfo opCast() {
    return inner;
  }

  void opAssign(nsIImapHeaderInfo value) {
    inner = value;
  }

  /* attribute nsMsgKey msgUid; */
  nsMsgKey MsgUid(){
    nsMsgKey value;
    nsresult __result = inner.GetMsgUid(&value);
    CheckException(__result);
    return value;
  }
  void MsgUid(nsMsgKey aMsgUid){
    nsMsgKey value;
    nsresult __result = inner.SetMsgUid(value);
    CheckException(__result);
  }

  /* attribute long msgSize; */
  PRInt32 MsgSize(){
    PRInt32 value;
    nsresult __result = inner.GetMsgSize(&value);
    CheckException(__result);
    return value;
  }
  void MsgSize(PRInt32 aMsgSize){
    nsresult __result = inner.SetMsgSize(aMsgSize);
    CheckException(__result);
  }

  /* [noscript] void getMsgHdrs ([shared] out string aMsgHdrs); */
  void GetMsgHdrs(out char*aMsgHdrs){
    nsresult __result = inner.GetMsgHdrs(&aMsgHdrs);
    CheckException(__result);
  }

  /* void cacheLine (in string line, in unsigned long uid); */
  void CacheLine(char*line, PRUint32 uid){
    nsresult __result = inner.CacheLine(line, uid);
    CheckException(__result);
  }

  /* void resetCache (); */
  void ResetCache(){
    nsresult __result = inner.ResetCache();
    CheckException(__result);
  }

private:
  nsIImapHeaderInfo inner;

}


/* starting wrapper class:    nsIImapHeaderXferInfo */
class nsIImapHeaderXferInfoD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPHEADERXFERINFO_IID;


  alias nsIImapHeaderXferInfo InnerType;

  this(nsIImapHeaderXferInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapHeaderXferInfo opCast() {
    return inner;
  }

  void opAssign(nsIImapHeaderXferInfo value) {
    inner = value;
  }

  /* readonly attribute long numHeaders; */
  PRInt32 NumHeaders(){
    PRInt32 value;
    nsresult __result = inner.GetNumHeaders(&value);
    CheckException(__result);
    return value;
  }

  /* nsIImapHeaderInfo getHeader (in long hdrIndex); */
  nsIImapHeaderInfoD  GetHeader(PRInt32 hdrIndex){
    nsIImapHeaderInfo _retval;
    nsresult __result = inner.GetHeader(hdrIndex, &_retval);
    CheckException(__result);
    return new nsIImapHeaderInfoD(_retval);
  }

private:
  nsIImapHeaderXferInfo inner;

}

