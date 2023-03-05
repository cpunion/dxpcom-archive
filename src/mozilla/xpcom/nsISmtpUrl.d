/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISmtpUrl.idl
 */

module mozilla.xpcom.nsISmtpUrl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgComposeParams;

public import mozilla.xpcom.nsIMsgIdentity; /* forward declaration */

public import mozilla.xpcom.nsIPrompt; /* forward declaration */

public import mozilla.xpcom.nsIAuthPrompt; /* forward declaration */

public import mozilla.xpcom.nsISmtpServer; /* forward declaration */

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsISmtpUrl */
const char[] NS_ISMTPURL_IID_STR = "16adf2f1-bbad-11d2-804e-006008128c4e";

const nsIID NS_ISMTPURL_IID= 
  {0x16adf2f1, 0xbbad, 0x11d2, 
    [ 0x80, 0x4e, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsISmtpUrl : nsISupports {
  static const char[] IID_STR = NS_ISMTPURL_IID_STR;
  static const nsIID IID = NS_ISMTPURL_IID;

  /* attribute string recipients; */
  nsresult GetRecipients(char * *aRecipients);
  nsresult SetRecipients(char * aRecipients);

  /* attribute boolean PostMessage; */
  nsresult GetPostMessage(PRBool *aPostMessage);
  nsresult SetPostMessage(PRBool aPostMessage);

  /* attribute nsIFileSpec PostMessageFile; */
  nsresult GetPostMessageFile(nsIFileSpec  *aPostMessageFile);
  nsresult SetPostMessageFile(nsIFileSpec  aPostMessageFile);

  /* attribute nsIMsgIdentity senderIdentity; */
  nsresult GetSenderIdentity(nsIMsgIdentity  *aSenderIdentity);
  nsresult SetSenderIdentity(nsIMsgIdentity  aSenderIdentity);

  /* attribute nsIPrompt prompt; */
  nsresult GetPrompt(nsIPrompt  *aPrompt);
  nsresult SetPrompt(nsIPrompt  aPrompt);

  /* attribute nsIAuthPrompt authPrompt; */
  nsresult GetAuthPrompt(nsIAuthPrompt  *aAuthPrompt);
  nsresult SetAuthPrompt(nsIAuthPrompt  aAuthPrompt);

  /* attribute nsIInterfaceRequestor notificationCallbacks; */
  nsresult GetNotificationCallbacks(nsIInterfaceRequestor  *aNotificationCallbacks);
  nsresult SetNotificationCallbacks(nsIInterfaceRequestor  aNotificationCallbacks);

  /* attribute nsISmtpServer smtpServer; */
  nsresult GetSmtpServer(nsISmtpServer  *aSmtpServer);
  nsresult SetSmtpServer(nsISmtpServer  aSmtpServer);

  enum { DEFAULT_SMTP_PORT = 25 };

  enum { DEFAULT_SMTPS_PORT = 465 };

}


/* starting interface:    nsIMailtoUrl */
const char[] NS_IMAILTOURL_IID_STR = "5ee2aff7-9c6f-11d3-98a3-001083010e9b";

const nsIID NS_IMAILTOURL_IID= 
  {0x5ee2aff7, 0x9c6f, 0x11d3, 
    [ 0x98, 0xa3, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIMailtoUrl : nsISupports {
  static const char[] IID_STR = NS_IMAILTOURL_IID_STR;
  static const nsIID IID = NS_IMAILTOURL_IID;

  /* void GetMessageContents (out string aToPart, out string aCcPart, out string aBccPart, out string aFromPart, out string aFollowUpToPart, out string aOrganizationPart, out string aReplyToPart, out string aSubjectPart, out string aBodyPart, out string aHtmlPart, out string aReferencePart, out string aAttachmentPart, out string aPriorityPart, out string aNewsgroupPart, out string aNewsHostPart, out MSG_ComposeFormat aFormat); */
  nsresult GetMessageContents(char **aToPart, char **aCcPart, char **aBccPart, char **aFromPart, char **aFollowUpToPart, char **aOrganizationPart, char **aReplyToPart, char **aSubjectPart, char **aBodyPart, char **aHtmlPart, char **aReferencePart, char **aAttachmentPart, char **aPriorityPart, char **aNewsgroupPart, char **aNewsHostPart, MSG_ComposeFormat *aFormat);

}

