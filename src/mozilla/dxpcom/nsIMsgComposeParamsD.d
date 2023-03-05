/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgComposeParams.idl
 */

module mozilla.dxpcom.nsIMsgComposeParamsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgComposeParams;


public import mozilla.dxpcom.nsIMsgComposeParamsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;
public import mozilla.xpcom.nsIMsgCompFields;
public import mozilla.dxpcom.nsIMsgCompFieldsD;
public import mozilla.xpcom.nsIMsgSendListener;
public import mozilla.dxpcom.nsIMsgSendListenerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIMsgCompType */
class nsIMsgCompTypeD {

  static const nsIID IID = NS_IMSGCOMPTYPE_IID;


  alias nsIMsgCompType InnerType;

  this(nsIMsgCompType intr){
    this.inner = intr;
  }

  nsIMsgCompType opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompType value) {
    inner = value;
  }

  enum { New = 0 }

  enum { Reply = 1 }

  enum { ReplyAll = 2 }

  enum { ForwardAsAttachment = 3 }

  enum { ForwardInline = 4 }

  enum { NewsPost = 5 }

  enum { ReplyToSender = 6 }

  enum { ReplyToGroup = 7 }

  enum { ReplyToSenderAndGroup = 8 }

  enum { Draft = 9 }

  enum { Template = 10 }

  enum { MailToUrl = 11 }

  enum { ReplyWithTemplate = 12 }

private:
  nsIMsgCompType inner;

}


/* starting wrapper class:    nsIMsgCompFormat */
class nsIMsgCompFormatD {

  static const nsIID IID = NS_IMSGCOMPFORMAT_IID;


  alias nsIMsgCompFormat InnerType;

  this(nsIMsgCompFormat intr){
    this.inner = intr;
  }

  nsIMsgCompFormat opCast() {
    return inner;
  }

  void opAssign(nsIMsgCompFormat value) {
    inner = value;
  }

  enum { Default = 0 }

  enum { HTML = 1 }

  enum { PlainText = 2 }

  enum { OppositeOfDefault = 3 }

private:
  nsIMsgCompFormat inner;

}


/* starting wrapper class:    nsIMsgComposeParams */
class nsIMsgComposeParamsD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOMPOSEPARAMS_IID;


  alias nsIMsgComposeParams InnerType;

  this(nsIMsgComposeParams intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgComposeParams opCast() {
    return inner;
  }

  void opAssign(nsIMsgComposeParams value) {
    inner = value;
  }

  /* attribute MSG_ComposeType type; */
  MSG_ComposeType Type(){
    MSG_ComposeType value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }
  void Type(MSG_ComposeType aType){
    MSG_ComposeType value;
    nsresult __result = inner.SetType(value);
    CheckException(__result);
  }

  /* attribute MSG_ComposeFormat format; */
  MSG_ComposeFormat Format(){
    MSG_ComposeFormat value;
    nsresult __result = inner.GetFormat(&value);
    CheckException(__result);
    return value;
  }
  void Format(MSG_ComposeFormat aFormat){
    MSG_ComposeFormat value;
    nsresult __result = inner.SetFormat(value);
    CheckException(__result);
  }

  /* attribute string originalMsgURI; */
  char* OriginalMsgURI(){
    char* value;
    nsresult __result = inner.GetOriginalMsgURI(&value);
    CheckException(__result);
    return value;
  }
  void OriginalMsgURI(char* aOriginalMsgURI){
    nsresult __result = inner.SetOriginalMsgURI(aOriginalMsgURI);
    CheckException(__result);
  }

  /* attribute nsIMsgIdentity identity; */
  nsIMsgIdentityD  Identity(){
    nsIMsgIdentity value;
    nsresult __result = inner.GetIdentity(&value);
    CheckException(__result);
    return new nsIMsgIdentityD(value);
  }
  void Identity(nsIMsgIdentityD  aIdentity){
    nsIMsgIdentity value;
    nsresult __result = inner.SetIdentity(value);
    CheckException(__result);
  }

  /* attribute nsIMsgCompFields composeFields; */
  nsIMsgCompFieldsD  ComposeFields(){
    nsIMsgCompFields value;
    nsresult __result = inner.GetComposeFields(&value);
    CheckException(__result);
    return new nsIMsgCompFieldsD(value);
  }
  void ComposeFields(nsIMsgCompFieldsD  aComposeFields){
    nsIMsgCompFields value;
    nsresult __result = inner.SetComposeFields(value);
    CheckException(__result);
  }

  /* attribute boolean bodyIsLink; */
  PRBool BodyIsLink(){
    PRBool value;
    nsresult __result = inner.GetBodyIsLink(&value);
    CheckException(__result);
    return value;
  }
  void BodyIsLink(PRBool aBodyIsLink){
    nsresult __result = inner.SetBodyIsLink(aBodyIsLink);
    CheckException(__result);
  }

  /* attribute nsIMsgSendListener sendListener; */
  nsIMsgSendListenerD  SendListener(){
    nsIMsgSendListener value;
    nsresult __result = inner.GetSendListener(&value);
    CheckException(__result);
    return new nsIMsgSendListenerD(value);
  }
  void SendListener(nsIMsgSendListenerD  aSendListener){
    nsIMsgSendListener value;
    nsresult __result = inner.SetSendListener(value);
    CheckException(__result);
  }

  /* attribute string smtpPassword; */
  char* SmtpPassword(){
    char* value;
    nsresult __result = inner.GetSmtpPassword(&value);
    CheckException(__result);
    return value;
  }
  void SmtpPassword(char* aSmtpPassword){
    nsresult __result = inner.SetSmtpPassword(aSmtpPassword);
    CheckException(__result);
  }

  /* attribute nsIMsgDBHdr origMsgHdr; */
  nsIMsgDBHdrD  OrigMsgHdr(){
    nsIMsgDBHdr value;
    nsresult __result = inner.GetOrigMsgHdr(&value);
    CheckException(__result);
    return new nsIMsgDBHdrD(value);
  }
  void OrigMsgHdr(nsIMsgDBHdrD  aOrigMsgHdr){
    nsIMsgDBHdr value;
    nsresult __result = inner.SetOrigMsgHdr(value);
    CheckException(__result);
  }

private:
  nsIMsgComposeParams inner;

}

