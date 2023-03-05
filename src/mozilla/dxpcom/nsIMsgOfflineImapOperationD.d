/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgOfflineImapOperation.idl
 */

module mozilla.dxpcom.nsIMsgOfflineImapOperationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgOfflineImapOperation;


public import mozilla.dxpcom.nsIMsgOfflineImapOperationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;


/* starting wrapper class:    nsIMsgOfflineImapOperation */
class nsIMsgOfflineImapOperationD : public nsISupportsD {

  static const nsIID IID = NS_IMSGOFFLINEIMAPOPERATION_IID;


  alias nsIMsgOfflineImapOperation InnerType;

  this(nsIMsgOfflineImapOperation intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgOfflineImapOperation opCast() {
    return inner;
  }

  void opAssign(nsIMsgOfflineImapOperation value) {
    inner = value;
  }

  enum { kFlagsChanged = 1 }

  enum { kMsgMoved = 2 }

  enum { kMsgCopy = 4 }

  enum { kMoveResult = 8 }

  enum { kAppendDraft = 16 }

  enum { kAddedHeader = 32 }

  enum { kDeletedMsg = 64 }

  enum { kMsgMarkedDeleted = 128 }

  enum { kAppendTemplate = 256 }

  enum { kDeleteAllMsgs = 512 }

  enum { kAddKeywords = 1024 }

  enum { kRemoveKeywords = 2048 }

  /* attribute nsOfflineImapOperationType operation; */
  nsOfflineImapOperationType Operation(){
    nsOfflineImapOperationType value;
    nsresult __result = inner.GetOperation(&value);
    CheckException(__result);
    return value;
  }
  void Operation(nsOfflineImapOperationType aOperation){
    nsOfflineImapOperationType value;
    nsresult __result = inner.SetOperation(value);
    CheckException(__result);
  }

  /* void clearOperation (in nsOfflineImapOperationType operation); */
  void ClearOperation(nsOfflineImapOperationType operation){
    nsresult __result = inner.ClearOperation(operation);
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

  /* attribute imapMessageFlagsType flagOperation; */
  imapMessageFlagsType FlagOperation(){
    imapMessageFlagsType value;
    nsresult __result = inner.GetFlagOperation(&value);
    CheckException(__result);
    return value;
  }
  void FlagOperation(imapMessageFlagsType aFlagOperation){
    imapMessageFlagsType value;
    nsresult __result = inner.SetFlagOperation(value);
    CheckException(__result);
  }

  /* attribute imapMessageFlagsType newFlags; */
  imapMessageFlagsType NewFlags(){
    imapMessageFlagsType value;
    nsresult __result = inner.GetNewFlags(&value);
    CheckException(__result);
    return value;
  }
  void NewFlags(imapMessageFlagsType aNewFlags){
    imapMessageFlagsType value;
    nsresult __result = inner.SetNewFlags(value);
    CheckException(__result);
  }

  /* attribute string destinationFolderURI; */
  char* DestinationFolderURI(){
    char* value;
    nsresult __result = inner.GetDestinationFolderURI(&value);
    CheckException(__result);
    return value;
  }
  void DestinationFolderURI(char* aDestinationFolderURI){
    nsresult __result = inner.SetDestinationFolderURI(aDestinationFolderURI);
    CheckException(__result);
  }

  /* attribute string sourceFolderURI; */
  char* SourceFolderURI(){
    char* value;
    nsresult __result = inner.GetSourceFolderURI(&value);
    CheckException(__result);
    return value;
  }
  void SourceFolderURI(char* aSourceFolderURI){
    nsresult __result = inner.SetSourceFolderURI(aSourceFolderURI);
    CheckException(__result);
  }

  /* void addKeywordToAdd (in string aKeyword); */
  void AddKeywordToAdd(char*aKeyword){
    nsresult __result = inner.AddKeywordToAdd(aKeyword);
    CheckException(__result);
  }

  /* void addKeywordToRemove (in string aKeyword); */
  void AddKeywordToRemove(char*aKeyword){
    nsresult __result = inner.AddKeywordToRemove(aKeyword);
    CheckException(__result);
  }

  /* readonly attribute string keywordsToAdd; */
  char* KeywordsToAdd(){
    char* value;
    nsresult __result = inner.GetKeywordsToAdd(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string keywordsToRemove; */
  char* KeywordsToRemove(){
    char* value;
    nsresult __result = inner.GetKeywordsToRemove(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long numberOfCopies; */
  PRInt32 NumberOfCopies(){
    PRInt32 value;
    nsresult __result = inner.GetNumberOfCopies(&value);
    CheckException(__result);
    return value;
  }

  /* void addMessageCopyOperation (in string destinationBox); */
  void AddMessageCopyOperation(char*destinationBox){
    nsresult __result = inner.AddMessageCopyOperation(destinationBox);
    CheckException(__result);
  }

  /* string getCopyDestination (in long copyIndex); */
  char* GetCopyDestination(PRInt32 copyIndex){
    char* _retval;
    nsresult __result = inner.GetCopyDestination(copyIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgOfflineImapOperation inner;

}

