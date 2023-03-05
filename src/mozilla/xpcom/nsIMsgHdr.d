/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgHdr.idl
 */

module mozilla.xpcom.nsIMsgHdr;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */


/* starting interface:    nsIMsgDBHdr */
const char[] NS_IMSGDBHDR_IID_STR = "b5212a60-f93f-11d2-951c-006097222b83";

const nsIID NS_IMSGDBHDR_IID= 
  {0xb5212a60, 0xf93f, 0x11d2, 
    [ 0x95, 0x1c, 0x00, 0x60, 0x97, 0x22, 0x2b, 0x83 ]};

extern(Windows)
interface nsIMsgDBHdr : nsISupports {
  static const char[] IID_STR = NS_IMSGDBHDR_IID_STR;
  static const nsIID IID = NS_IMSGDBHDR_IID;

  /* AString getProperty (in string propertyName); */
  nsresult GetProperty(char *propertyName, nsAString * _retval);

  /* void setProperty (in string propertyName, in AString propertyStr); */
  nsresult SetProperty(char *propertyName, nsAString * propertyStr);

  /* void setStringProperty (in string propertyName, in string propertyValue); */
  nsresult SetStringProperty(char *propertyName, char *propertyValue);

  /* string getStringProperty (in string propertyName); */
  nsresult GetStringProperty(char *propertyName, char **_retval);

  /* unsigned long getUint32Property (in string propertyName); */
  nsresult GetUint32Property(char *propertyName, PRUint32 *_retval);

  /* void setUint32Property (in string propertyName, in unsigned long propertyVal); */
  nsresult SetUint32Property(char *propertyName, PRUint32 propertyVal);

  /* readonly attribute boolean isRead; */
  nsresult GetIsRead(PRBool *aIsRead);

  /* readonly attribute boolean isFlagged; */
  nsresult GetIsFlagged(PRBool *aIsFlagged);

  /* void markRead (in boolean read); */
  nsresult MarkRead(PRBool read);

  /* void markFlagged (in boolean flagged); */
  nsresult MarkFlagged(PRBool flagged);

  /* void markHasAttachments (in boolean hasAttachments); */
  nsresult MarkHasAttachments(PRBool hasAttachments);

  /* attribute nsMsgPriorityValue priority; */
  nsresult GetPriority(nsMsgPriorityValue *aPriority);
  nsresult SetPriority(nsMsgPriorityValue aPriority);

  /* void setPriorityString (in string priority); */
  nsresult SetPriorityString(char *priority);

  /* attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);
  nsresult SetFlags(PRUint32 aFlags);

  /* unsigned long OrFlags (in unsigned long flags); */
  nsresult OrFlags(PRUint32 flags, PRUint32 *_retval);

  /* unsigned long AndFlags (in unsigned long flags); */
  nsresult AndFlags(PRUint32 flags, PRUint32 *_retval);

  /* attribute nsMsgKey threadId; */
  nsresult GetThreadId(nsMsgKey *aThreadId);
  nsresult SetThreadId(nsMsgKey aThreadId);

  /* attribute nsMsgKey messageKey; */
  nsresult GetMessageKey(nsMsgKey *aMessageKey);
  nsresult SetMessageKey(nsMsgKey aMessageKey);

  /* attribute nsMsgKey threadParent; */
  nsresult GetThreadParent(nsMsgKey *aThreadParent);
  nsresult SetThreadParent(nsMsgKey aThreadParent);

  /* attribute unsigned long messageSize; */
  nsresult GetMessageSize(PRUint32 *aMessageSize);
  nsresult SetMessageSize(PRUint32 aMessageSize);

  /* attribute unsigned long lineCount; */
  nsresult GetLineCount(PRUint32 *aLineCount);
  nsresult SetLineCount(PRUint32 aLineCount);

  /* attribute unsigned long statusOffset; */
  nsresult GetStatusOffset(PRUint32 *aStatusOffset);
  nsresult SetStatusOffset(PRUint32 aStatusOffset);

  /* attribute unsigned long messageOffset; */
  nsresult GetMessageOffset(PRUint32 *aMessageOffset);
  nsresult SetMessageOffset(PRUint32 aMessageOffset);

  /* attribute unsigned long offlineMessageSize; */
  nsresult GetOfflineMessageSize(PRUint32 *aOfflineMessageSize);
  nsresult SetOfflineMessageSize(PRUint32 aOfflineMessageSize);

  /* attribute PRTime date; */
  nsresult GetDate(PRTime *aDate);
  nsresult SetDate(PRTime aDate);

  /* readonly attribute unsigned long dateInSeconds; */
  nsresult GetDateInSeconds(PRUint32 *aDateInSeconds);

  /* attribute string messageId; */
  nsresult GetMessageId(char * *aMessageId);
  nsresult SetMessageId(char * aMessageId);

  /* attribute string ccList; */
  nsresult GetCcList(char * *aCcList);
  nsresult SetCcList(char * aCcList);

  /* attribute string author; */
  nsresult GetAuthor(char * *aAuthor);
  nsresult SetAuthor(char * aAuthor);

  /* attribute string subject; */
  nsresult GetSubject(char * *aSubject);
  nsresult SetSubject(char * aSubject);

  /* attribute string recipients; */
  nsresult GetRecipients(char * *aRecipients);
  nsresult SetRecipients(char * aRecipients);

  /* void setReferences (in string references); */
  nsresult SetReferences(char *references);

  /* readonly attribute unsigned short numReferences; */
  nsresult GetNumReferences(PRUint16 *aNumReferences);

  /* ACString getStringReference (in long refNum); */
  nsresult GetStringReference(PRInt32 refNum, nsACString * _retval);

  /* void setRecipientsArray (in string names, in string addresses, in unsigned long numAddresses); */
  nsresult SetRecipientsArray(char *names, char *addresses, PRUint32 numAddresses);

  /* void setCCListArray (in string names, in string addresses, in unsigned long numAddresses); */
  nsresult SetCCListArray(char *names, char *addresses, PRUint32 numAddresses);

  /* readonly attribute wstring mime2DecodedAuthor; */
  nsresult GetMime2DecodedAuthor(PRUnichar * *aMime2DecodedAuthor);

  /* readonly attribute wstring mime2DecodedSubject; */
  nsresult GetMime2DecodedSubject(PRUnichar * *aMime2DecodedSubject);

  /* readonly attribute wstring mime2DecodedRecipients; */
  nsresult GetMime2DecodedRecipients(PRUnichar * *aMime2DecodedRecipients);

  /* [noscript] void getAuthorCollationKey (out octetPtr key, out unsigned long len); */
  nsresult GetAuthorCollationKey(PRUint8 * *key, PRUint32 *len);

  /* [noscript] void getSubjectCollationKey (out octetPtr key, out unsigned long len); */
  nsresult GetSubjectCollationKey(PRUint8 * *key, PRUint32 *len);

  /* [noscript] void getRecipientsCollationKey (out octetPtr key, out unsigned long len); */
  nsresult GetRecipientsCollationKey(PRUint8 * *key, PRUint32 *len);

  /* attribute string Charset; */
  nsresult GetCharset(char * *aCharset);
  nsresult SetCharset(char * aCharset);

  /* attribute nsMsgLabelValue label; */
  nsresult GetLabel(nsMsgLabelValue *aLabel);
  nsresult SetLabel(nsMsgLabelValue aLabel);

  /* attribute string accountKey; */
  nsresult GetAccountKey(char * *aAccountKey);
  nsresult SetAccountKey(char * aAccountKey);

  /* readonly attribute nsIMsgFolder folder; */
  nsresult GetFolder(nsIMsgFolder  *aFolder);

}

