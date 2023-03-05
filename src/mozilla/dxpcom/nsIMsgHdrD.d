/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgHdr.idl
 */

module mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgHdr;


public import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;


/* starting wrapper class:    nsIMsgDBHdr */
class nsIMsgDBHdrD : public nsISupportsD {

  static const nsIID IID = NS_IMSGDBHDR_IID;


  alias nsIMsgDBHdr InnerType;

  this(nsIMsgDBHdr intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgDBHdr opCast() {
    return inner;
  }

  void opAssign(nsIMsgDBHdr value) {
    inner = value;
  }

  /* AString getProperty (in string propertyName); */
  wchar[] GetProperty(char*propertyName){
    scope auto _retval = new AString;
    nsresult __result = inner.GetProperty(propertyName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setProperty (in string propertyName, in AString propertyStr); */
  void SetProperty(char*propertyName, wchar[] propertyStr){
    scope auto _propertyStr = new AString(propertyStr);
    nsresult __result = inner.SetProperty(propertyName, cast(nsAString*)_propertyStr);
    CheckException(__result);
  }

  /* void setStringProperty (in string propertyName, in string propertyValue); */
  void SetStringProperty(char*propertyName, char*propertyValue){
    nsresult __result = inner.SetStringProperty(propertyName, propertyValue);
    CheckException(__result);
  }

  /* string getStringProperty (in string propertyName); */
  char* GetStringProperty(char*propertyName){
    char* _retval;
    nsresult __result = inner.GetStringProperty(propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* unsigned long getUint32Property (in string propertyName); */
  PRUint32 GetUint32Property(char*propertyName){
    PRUint32 _retval;
    nsresult __result = inner.GetUint32Property(propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setUint32Property (in string propertyName, in unsigned long propertyVal); */
  void SetUint32Property(char*propertyName, PRUint32 propertyVal){
    nsresult __result = inner.SetUint32Property(propertyName, propertyVal);
    CheckException(__result);
  }

  /* readonly attribute boolean isRead; */
  PRBool IsRead(){
    PRBool value;
    nsresult __result = inner.GetIsRead(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean isFlagged; */
  PRBool IsFlagged(){
    PRBool value;
    nsresult __result = inner.GetIsFlagged(&value);
    CheckException(__result);
    return value;
  }

  /* void markRead (in boolean read); */
  void MarkRead(PRBool read){
    nsresult __result = inner.MarkRead(read);
    CheckException(__result);
  }

  /* void markFlagged (in boolean flagged); */
  void MarkFlagged(PRBool flagged){
    nsresult __result = inner.MarkFlagged(flagged);
    CheckException(__result);
  }

  /* void markHasAttachments (in boolean hasAttachments); */
  void MarkHasAttachments(PRBool hasAttachments){
    nsresult __result = inner.MarkHasAttachments(hasAttachments);
    CheckException(__result);
  }

  /* attribute nsMsgPriorityValue priority; */
  nsMsgPriorityValue Priority(){
    nsMsgPriorityValue value;
    nsresult __result = inner.GetPriority(&value);
    CheckException(__result);
    return value;
  }
  void Priority(nsMsgPriorityValue aPriority){
    nsMsgPriorityValue value;
    nsresult __result = inner.SetPriority(value);
    CheckException(__result);
  }

  /* void setPriorityString (in string priority); */
  void SetPriorityString(char*priority){
    nsresult __result = inner.SetPriorityString(priority);
    CheckException(__result);
  }

  /* attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRUint32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

  /* unsigned long OrFlags (in unsigned long flags); */
  PRUint32 OrFlags(PRUint32 flags){
    PRUint32 _retval;
    nsresult __result = inner.OrFlags(flags, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* unsigned long AndFlags (in unsigned long flags); */
  PRUint32 AndFlags(PRUint32 flags){
    PRUint32 _retval;
    nsresult __result = inner.AndFlags(flags, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute nsMsgKey threadId; */
  nsMsgKey ThreadId(){
    nsMsgKey value;
    nsresult __result = inner.GetThreadId(&value);
    CheckException(__result);
    return value;
  }
  void ThreadId(nsMsgKey aThreadId){
    nsMsgKey value;
    nsresult __result = inner.SetThreadId(value);
    CheckException(__result);
  }

  /* attribute nsMsgKey messageKey; */
  nsMsgKey MessageKey(){
    nsMsgKey value;
    nsresult __result = inner.GetMessageKey(&value);
    CheckException(__result);
    return value;
  }
  void MessageKey(nsMsgKey aMessageKey){
    nsMsgKey value;
    nsresult __result = inner.SetMessageKey(value);
    CheckException(__result);
  }

  /* attribute nsMsgKey threadParent; */
  nsMsgKey ThreadParent(){
    nsMsgKey value;
    nsresult __result = inner.GetThreadParent(&value);
    CheckException(__result);
    return value;
  }
  void ThreadParent(nsMsgKey aThreadParent){
    nsMsgKey value;
    nsresult __result = inner.SetThreadParent(value);
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

  /* attribute unsigned long lineCount; */
  PRUint32 LineCount(){
    PRUint32 value;
    nsresult __result = inner.GetLineCount(&value);
    CheckException(__result);
    return value;
  }
  void LineCount(PRUint32 aLineCount){
    nsresult __result = inner.SetLineCount(aLineCount);
    CheckException(__result);
  }

  /* attribute unsigned long statusOffset; */
  PRUint32 StatusOffset(){
    PRUint32 value;
    nsresult __result = inner.GetStatusOffset(&value);
    CheckException(__result);
    return value;
  }
  void StatusOffset(PRUint32 aStatusOffset){
    nsresult __result = inner.SetStatusOffset(aStatusOffset);
    CheckException(__result);
  }

  /* attribute unsigned long messageOffset; */
  PRUint32 MessageOffset(){
    PRUint32 value;
    nsresult __result = inner.GetMessageOffset(&value);
    CheckException(__result);
    return value;
  }
  void MessageOffset(PRUint32 aMessageOffset){
    nsresult __result = inner.SetMessageOffset(aMessageOffset);
    CheckException(__result);
  }

  /* attribute unsigned long offlineMessageSize; */
  PRUint32 OfflineMessageSize(){
    PRUint32 value;
    nsresult __result = inner.GetOfflineMessageSize(&value);
    CheckException(__result);
    return value;
  }
  void OfflineMessageSize(PRUint32 aOfflineMessageSize){
    nsresult __result = inner.SetOfflineMessageSize(aOfflineMessageSize);
    CheckException(__result);
  }

  /* attribute PRTime date; */
  PRTime Date(){
    PRTime value;
    nsresult __result = inner.GetDate(&value);
    CheckException(__result);
    return value;
  }
  void Date(PRTime aDate){
    PRTime value;
    nsresult __result = inner.SetDate(value);
    CheckException(__result);
  }

  /* readonly attribute unsigned long dateInSeconds; */
  PRUint32 DateInSeconds(){
    PRUint32 value;
    nsresult __result = inner.GetDateInSeconds(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string messageId; */
  char* MessageId(){
    char* value;
    nsresult __result = inner.GetMessageId(&value);
    CheckException(__result);
    return value;
  }
  void MessageId(char* aMessageId){
    nsresult __result = inner.SetMessageId(aMessageId);
    CheckException(__result);
  }

  /* attribute string ccList; */
  char* CcList(){
    char* value;
    nsresult __result = inner.GetCcList(&value);
    CheckException(__result);
    return value;
  }
  void CcList(char* aCcList){
    nsresult __result = inner.SetCcList(aCcList);
    CheckException(__result);
  }

  /* attribute string author; */
  char* Author(){
    char* value;
    nsresult __result = inner.GetAuthor(&value);
    CheckException(__result);
    return value;
  }
  void Author(char* aAuthor){
    nsresult __result = inner.SetAuthor(aAuthor);
    CheckException(__result);
  }

  /* attribute string subject; */
  char* Subject(){
    char* value;
    nsresult __result = inner.GetSubject(&value);
    CheckException(__result);
    return value;
  }
  void Subject(char* aSubject){
    nsresult __result = inner.SetSubject(aSubject);
    CheckException(__result);
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

  /* void setReferences (in string references); */
  void SetReferences(char*references){
    nsresult __result = inner.SetReferences(references);
    CheckException(__result);
  }

  /* readonly attribute unsigned short numReferences; */
  PRUint16 NumReferences(){
    PRUint16 value;
    nsresult __result = inner.GetNumReferences(&value);
    CheckException(__result);
    return value;
  }

  /* ACString getStringReference (in long refNum); */
  char[] GetStringReference(PRInt32 refNum){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetStringReference(refNum, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setRecipientsArray (in string names, in string addresses, in unsigned long numAddresses); */
  void SetRecipientsArray(char*names, char*addresses, PRUint32 numAddresses){
    nsresult __result = inner.SetRecipientsArray(names, addresses, numAddresses);
    CheckException(__result);
  }

  /* void setCCListArray (in string names, in string addresses, in unsigned long numAddresses); */
  void SetCCListArray(char*names, char*addresses, PRUint32 numAddresses){
    nsresult __result = inner.SetCCListArray(names, addresses, numAddresses);
    CheckException(__result);
  }

  /* readonly attribute wstring mime2DecodedAuthor; */
  PRUnichar* Mime2DecodedAuthor(){
    PRUnichar* value;
    nsresult __result = inner.GetMime2DecodedAuthor(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring mime2DecodedSubject; */
  PRUnichar* Mime2DecodedSubject(){
    PRUnichar* value;
    nsresult __result = inner.GetMime2DecodedSubject(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring mime2DecodedRecipients; */
  PRUnichar* Mime2DecodedRecipients(){
    PRUnichar* value;
    nsresult __result = inner.GetMime2DecodedRecipients(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] void getAuthorCollationKey (out octetPtr key, out unsigned long len); */
  void GetAuthorCollationKey(out PRUint8 * key, out PRUint32 len){
    nsresult __result = inner.GetAuthorCollationKey(&key, &len);
    CheckException(__result);
  }

  /* [noscript] void getSubjectCollationKey (out octetPtr key, out unsigned long len); */
  void GetSubjectCollationKey(out PRUint8 * key, out PRUint32 len){
    nsresult __result = inner.GetSubjectCollationKey(&key, &len);
    CheckException(__result);
  }

  /* [noscript] void getRecipientsCollationKey (out octetPtr key, out unsigned long len); */
  void GetRecipientsCollationKey(out PRUint8 * key, out PRUint32 len){
    nsresult __result = inner.GetRecipientsCollationKey(&key, &len);
    CheckException(__result);
  }

  /* attribute string Charset; */
  char* Charset(){
    char* value;
    nsresult __result = inner.GetCharset(&value);
    CheckException(__result);
    return value;
  }
  void Charset(char* aCharset){
    nsresult __result = inner.SetCharset(aCharset);
    CheckException(__result);
  }

  /* attribute nsMsgLabelValue label; */
  nsMsgLabelValue Label(){
    nsMsgLabelValue value;
    nsresult __result = inner.GetLabel(&value);
    CheckException(__result);
    return value;
  }
  void Label(nsMsgLabelValue aLabel){
    nsMsgLabelValue value;
    nsresult __result = inner.SetLabel(value);
    CheckException(__result);
  }

  /* attribute string accountKey; */
  char* AccountKey(){
    char* value;
    nsresult __result = inner.GetAccountKey(&value);
    CheckException(__result);
    return value;
  }
  void AccountKey(char* aAccountKey){
    nsresult __result = inner.SetAccountKey(aAccountKey);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgFolder folder; */
  nsIMsgFolderD  Folder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }

private:
  nsIMsgDBHdr inner;

}

