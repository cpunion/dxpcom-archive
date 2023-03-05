/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISmtpUrl.idl
 */

module mozilla.dxpcom.nsISmtpUrlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISmtpUrl;


public import mozilla.dxpcom.nsISmtpUrlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgComposeParams;
public import mozilla.dxpcom.nsIMsgComposeParamsD;

public import mozilla.xpcom.nsIMsgIdentity;

public import mozilla.dxpcom.nsIMsgIdentityD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;

public import mozilla.xpcom.nsIAuthPrompt;

public import mozilla.dxpcom.nsIAuthPromptD;

public import mozilla.xpcom.nsISmtpServer;

public import mozilla.dxpcom.nsISmtpServerD;

public import mozilla.xpcom.nsIInterfaceRequestor;

public import mozilla.dxpcom.nsIInterfaceRequestorD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsISmtpUrl */
class nsISmtpUrlD : public nsISupportsD {

  static const nsIID IID = NS_ISMTPURL_IID;


  alias nsISmtpUrl InnerType;

  this(nsISmtpUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsISmtpUrl opCast() {
    return inner;
  }

  void opAssign(nsISmtpUrl value) {
    inner = value;
  }

  /* attribute string recipients; */
  char* Recipients(){
    char* value;
    nsresult __result = inner.GetRecipients(&value);
    CheckException(__result);
    return value;
  }
  void Recipients(char* aRecipients){
    nsresult __result = inner.SetRecipients(aRecipients);
    CheckException(__result);
  }

  /* attribute boolean PostMessage; */
  PRBool PostMessage(){
    PRBool value;
    nsresult __result = inner.GetPostMessage(&value);
    CheckException(__result);
    return value;
  }
  void PostMessage(PRBool aPostMessage){
    nsresult __result = inner.SetPostMessage(aPostMessage);
    CheckException(__result);
  }

  /* attribute nsIFileSpec PostMessageFile; */
  nsIFileSpecD  PostMessageFile(){
    nsIFileSpec value;
    nsresult __result = inner.GetPostMessageFile(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void PostMessageFile(nsIFileSpecD  aPostMessageFile){
    nsIFileSpec value;
    nsresult __result = inner.SetPostMessageFile(value);
    CheckException(__result);
  }

  /* attribute nsIMsgIdentity senderIdentity; */
  nsIMsgIdentityD  SenderIdentity(){
    nsIMsgIdentity value;
    nsresult __result = inner.GetSenderIdentity(&value);
    CheckException(__result);
    return new nsIMsgIdentityD(value);
  }
  void SenderIdentity(nsIMsgIdentityD  aSenderIdentity){
    nsIMsgIdentity value;
    nsresult __result = inner.SetSenderIdentity(value);
    CheckException(__result);
  }

  /* attribute nsIPrompt prompt; */
  nsIPromptD  Prompt(){
    nsIPrompt value;
    nsresult __result = inner.GetPrompt(&value);
    CheckException(__result);
    return new nsIPromptD(value);
  }
  void Prompt(nsIPromptD  aPrompt){
    nsIPrompt value;
    nsresult __result = inner.SetPrompt(value);
    CheckException(__result);
  }

  /* attribute nsIAuthPrompt authPrompt; */
  nsIAuthPromptD  AuthPrompt(){
    nsIAuthPrompt value;
    nsresult __result = inner.GetAuthPrompt(&value);
    CheckException(__result);
    return new nsIAuthPromptD(value);
  }
  void AuthPrompt(nsIAuthPromptD  aAuthPrompt){
    nsIAuthPrompt value;
    nsresult __result = inner.SetAuthPrompt(value);
    CheckException(__result);
  }

  /* attribute nsIInterfaceRequestor notificationCallbacks; */
  nsIInterfaceRequestorD  NotificationCallbacks(){
    nsIInterfaceRequestor value;
    nsresult __result = inner.GetNotificationCallbacks(&value);
    CheckException(__result);
    return new nsIInterfaceRequestorD(value);
  }
  void NotificationCallbacks(nsIInterfaceRequestorD  aNotificationCallbacks){
    nsIInterfaceRequestor value;
    nsresult __result = inner.SetNotificationCallbacks(value);
    CheckException(__result);
  }

  /* attribute nsISmtpServer smtpServer; */
  nsISmtpServerD  SmtpServer(){
    nsISmtpServer value;
    nsresult __result = inner.GetSmtpServer(&value);
    CheckException(__result);
    return new nsISmtpServerD(value);
  }
  void SmtpServer(nsISmtpServerD  aSmtpServer){
    nsISmtpServer value;
    nsresult __result = inner.SetSmtpServer(value);
    CheckException(__result);
  }

  enum { DEFAULT_SMTP_PORT = 25 }

  enum { DEFAULT_SMTPS_PORT = 465 }

private:
  nsISmtpUrl inner;

}


/* starting wrapper class:    nsIMailtoUrl */
class nsIMailtoUrlD : public nsISupportsD {

  static const nsIID IID = NS_IMAILTOURL_IID;


  alias nsIMailtoUrl InnerType;

  this(nsIMailtoUrl intr){
    super(intr);
    this.inner = intr;
  }

  nsIMailtoUrl opCast() {
    return inner;
  }

  void opAssign(nsIMailtoUrl value) {
    inner = value;
  }

  /* void GetMessageContents (out string aToPart, out string aCcPart, out string aBccPart, out string aFromPart, out string aFollowUpToPart, out string aOrganizationPart, out string aReplyToPart, out string aSubjectPart, out string aBodyPart, out string aHtmlPart, out string aReferencePart, out string aAttachmentPart, out string aPriorityPart, out string aNewsgroupPart, out string aNewsHostPart, out MSG_ComposeFormat aFormat); */
  void GetMessageContents(out char*aToPart, out char*aCcPart, out char*aBccPart, out char*aFromPart, out char*aFollowUpToPart, out char*aOrganizationPart, out char*aReplyToPart, out char*aSubjectPart, out char*aBodyPart, out char*aHtmlPart, out char*aReferencePart, out char*aAttachmentPart, out char*aPriorityPart, out char*aNewsgroupPart, out char*aNewsHostPart, out MSG_ComposeFormat aFormat){
    nsresult __result = inner.GetMessageContents(&aToPart, &aCcPart, &aBccPart, &aFromPart, &aFollowUpToPart, &aOrganizationPart, &aReplyToPart, &aSubjectPart, &aBodyPart, &aHtmlPart, &aReferencePart, &aAttachmentPart, &aPriorityPart, &aNewsgroupPart, &aNewsHostPart, &aFormat);
    CheckException(__result);
  }

private:
  nsIMailtoUrl inner;

}

