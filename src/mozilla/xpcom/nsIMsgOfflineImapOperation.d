/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgOfflineImapOperation.idl
 */

module mozilla.xpcom.nsIMsgOfflineImapOperation;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

alias PRUint16 imapMessageFlagsType;

alias PRInt32 nsOfflineImapOperationType;


/* starting interface:    nsIMsgOfflineImapOperation */
const char[] NS_IMSGOFFLINEIMAPOPERATION_IID_STR = "2728cb2b-4716-4b5e-98a7-ce22569378e5";

const nsIID NS_IMSGOFFLINEIMAPOPERATION_IID= 
  {0x2728cb2b, 0x4716, 0x4b5e, 
    [ 0x98, 0xa7, 0xce, 0x22, 0x56, 0x93, 0x78, 0xe5 ]};

extern(Windows)
interface nsIMsgOfflineImapOperation : nsISupports {
  static const char[] IID_STR = NS_IMSGOFFLINEIMAPOPERATION_IID_STR;
  static const nsIID IID = NS_IMSGOFFLINEIMAPOPERATION_IID;

  enum { kFlagsChanged = 1 };

  enum { kMsgMoved = 2 };

  enum { kMsgCopy = 4 };

  enum { kMoveResult = 8 };

  enum { kAppendDraft = 16 };

  enum { kAddedHeader = 32 };

  enum { kDeletedMsg = 64 };

  enum { kMsgMarkedDeleted = 128 };

  enum { kAppendTemplate = 256 };

  enum { kDeleteAllMsgs = 512 };

  enum { kAddKeywords = 1024 };

  enum { kRemoveKeywords = 2048 };

  /* attribute nsOfflineImapOperationType operation; */
  nsresult GetOperation(nsOfflineImapOperationType *aOperation);
  nsresult SetOperation(nsOfflineImapOperationType aOperation);

  /* void clearOperation (in nsOfflineImapOperationType operation); */
  nsresult ClearOperation(nsOfflineImapOperationType operation);

  /* attribute nsMsgKey messageKey; */
  nsresult GetMessageKey(nsMsgKey *aMessageKey);
  nsresult SetMessageKey(nsMsgKey aMessageKey);

  /* attribute imapMessageFlagsType flagOperation; */
  nsresult GetFlagOperation(imapMessageFlagsType *aFlagOperation);
  nsresult SetFlagOperation(imapMessageFlagsType aFlagOperation);

  /* attribute imapMessageFlagsType newFlags; */
  nsresult GetNewFlags(imapMessageFlagsType *aNewFlags);
  nsresult SetNewFlags(imapMessageFlagsType aNewFlags);

  /* attribute string destinationFolderURI; */
  nsresult GetDestinationFolderURI(char * *aDestinationFolderURI);
  nsresult SetDestinationFolderURI(char * aDestinationFolderURI);

  /* attribute string sourceFolderURI; */
  nsresult GetSourceFolderURI(char * *aSourceFolderURI);
  nsresult SetSourceFolderURI(char * aSourceFolderURI);

  /* void addKeywordToAdd (in string aKeyword); */
  nsresult AddKeywordToAdd(char *aKeyword);

  /* void addKeywordToRemove (in string aKeyword); */
  nsresult AddKeywordToRemove(char *aKeyword);

  /* readonly attribute string keywordsToAdd; */
  nsresult GetKeywordsToAdd(char * *aKeywordsToAdd);

  /* readonly attribute string keywordsToRemove; */
  nsresult GetKeywordsToRemove(char * *aKeywordsToRemove);

  /* readonly attribute long numberOfCopies; */
  nsresult GetNumberOfCopies(PRInt32 *aNumberOfCopies);

  /* void addMessageCopyOperation (in string destinationBox); */
  nsresult AddMessageCopyOperation(char *destinationBox);

  /* string getCopyDestination (in long copyIndex); */
  nsresult GetCopyDestination(PRInt32 copyIndex, char **_retval);

}

