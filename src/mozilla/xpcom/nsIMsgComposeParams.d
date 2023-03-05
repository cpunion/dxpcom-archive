/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgComposeParams.idl
 */

module mozilla.xpcom.nsIMsgComposeParams;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.xpcom.nsIMsgCompFields;
public import mozilla.xpcom.nsIMsgSendListener;

public import mozilla.xpcom.nsIMsgHdr;

alias PRInt32 MSG_ComposeType;


/* starting interface:    nsIMsgCompType */
const char[] NS_IMSGCOMPTYPE_IID_STR = "c7035852-7531-11d3-9a73-006008948010";

const nsIID NS_IMSGCOMPTYPE_IID= 
  {0xc7035852, 0x7531, 0x11d3, 
    [ 0x9a, 0x73, 0x00, 0x60, 0x08, 0x94, 0x80, 0x10 ]};

extern(Windows)
interface nsIMsgCompType {
  static const char[] IID_STR = NS_IMSGCOMPTYPE_IID_STR;
  static const nsIID IID = NS_IMSGCOMPTYPE_IID;

  enum { New = 0 };

  enum { Reply = 1 };

  enum { ReplyAll = 2 };

  enum { ForwardAsAttachment = 3 };

  enum { ForwardInline = 4 };

  enum { NewsPost = 5 };

  enum { ReplyToSender = 6 };

  enum { ReplyToGroup = 7 };

  enum { ReplyToSenderAndGroup = 8 };

  enum { Draft = 9 };

  enum { Template = 10 };

  enum { MailToUrl = 11 };

  enum { ReplyWithTemplate = 12 };

}

alias PRInt32 MSG_ComposeFormat;


/* starting interface:    nsIMsgCompFormat */
const char[] NS_IMSGCOMPFORMAT_IID_STR = "a28325e8-7531-11d3-8f1c-006008948010";

const nsIID NS_IMSGCOMPFORMAT_IID= 
  {0xa28325e8, 0x7531, 0x11d3, 
    [ 0x8f, 0x1c, 0x00, 0x60, 0x08, 0x94, 0x80, 0x10 ]};

extern(Windows)
interface nsIMsgCompFormat {
  static const char[] IID_STR = NS_IMSGCOMPFORMAT_IID_STR;
  static const nsIID IID = NS_IMSGCOMPFORMAT_IID;

  enum { Default = 0 };

  enum { HTML = 1 };

  enum { PlainText = 2 };

  enum { OppositeOfDefault = 3 };

}


/* starting interface:    nsIMsgComposeParams */
const char[] NS_IMSGCOMPOSEPARAMS_IID_STR = "f59cf090-98d4-43fa-bc53-db4922c8370e";

const nsIID NS_IMSGCOMPOSEPARAMS_IID= 
  {0xf59cf090, 0x98d4, 0x43fa, 
    [ 0xbc, 0x53, 0xdb, 0x49, 0x22, 0xc8, 0x37, 0x0e ]};

extern(Windows)
interface nsIMsgComposeParams : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPOSEPARAMS_IID_STR;
  static const nsIID IID = NS_IMSGCOMPOSEPARAMS_IID;

  /* attribute MSG_ComposeType type; */
  nsresult GetType(MSG_ComposeType *aType);
  nsresult SetType(MSG_ComposeType aType);

  /* attribute MSG_ComposeFormat format; */
  nsresult GetFormat(MSG_ComposeFormat *aFormat);
  nsresult SetFormat(MSG_ComposeFormat aFormat);

  /* attribute string originalMsgURI; */
  nsresult GetOriginalMsgURI(char * *aOriginalMsgURI);
  nsresult SetOriginalMsgURI(char * aOriginalMsgURI);

  /* attribute nsIMsgIdentity identity; */
  nsresult GetIdentity(nsIMsgIdentity  *aIdentity);
  nsresult SetIdentity(nsIMsgIdentity  aIdentity);

  /* attribute nsIMsgCompFields composeFields; */
  nsresult GetComposeFields(nsIMsgCompFields  *aComposeFields);
  nsresult SetComposeFields(nsIMsgCompFields  aComposeFields);

  /* attribute boolean bodyIsLink; */
  nsresult GetBodyIsLink(PRBool *aBodyIsLink);
  nsresult SetBodyIsLink(PRBool aBodyIsLink);

  /* attribute nsIMsgSendListener sendListener; */
  nsresult GetSendListener(nsIMsgSendListener  *aSendListener);
  nsresult SetSendListener(nsIMsgSendListener  aSendListener);

  /* attribute string smtpPassword; */
  nsresult GetSmtpPassword(char * *aSmtpPassword);
  nsresult SetSmtpPassword(char * aSmtpPassword);

  /* attribute nsIMsgDBHdr origMsgHdr; */
  nsresult GetOrigMsgHdr(nsIMsgDBHdr  *aOrigMsgHdr);
  nsresult SetOrigMsgHdr(nsIMsgDBHdr  aOrigMsgHdr);

}

