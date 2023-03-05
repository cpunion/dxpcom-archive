/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDBFolderInfo.idl
 */

module mozilla.xpcom.nsIDBFolderInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;


/* starting interface:    nsIDBFolderInfo */
const char[] NS_IDBFOLDERINFO_IID_STR = "5cb11c00-cb8b-11d2-8d67-00805f8a6617";

const nsIID NS_IDBFOLDERINFO_IID= 
  {0x5cb11c00, 0xcb8b, 0x11d2, 
    [ 0x8d, 0x67, 0x00, 0x80, 0x5f, 0x8a, 0x66, 0x17 ]};

extern(Windows)
interface nsIDBFolderInfo : nsISupports {
  static const char[] IID_STR = NS_IDBFOLDERINFO_IID_STR;
  static const nsIID IID = NS_IDBFOLDERINFO_IID;

  /* attribute long Flags; */
  nsresult GetFlags(PRInt32 *aFlags);
  nsresult SetFlags(PRInt32 aFlags);

  /* long OrFlags (in long flags); */
  nsresult OrFlags(PRInt32 flags, PRInt32 *_retval);

  /* long AndFlags (in long flags); */
  nsresult AndFlags(PRInt32 flags, PRInt32 *_retval);

  /* void SetHighWater (in nsMsgKey highwater, in boolean force); */
  nsresult SetHighWater(nsMsgKey highwater, PRBool force);

  /* attribute nsMsgKey HighWater; */
  nsresult GetHighWater(nsMsgKey *aHighWater);
  nsresult SetHighWater(nsMsgKey aHighWater);

  /* attribute nsMsgKey ExpiredMark; */
  nsresult GetExpiredMark(nsMsgKey *aExpiredMark);
  nsresult SetExpiredMark(nsMsgKey aExpiredMark);

  /* attribute unsigned long FolderSize; */
  nsresult GetFolderSize(PRUint32 *aFolderSize);
  nsresult SetFolderSize(PRUint32 aFolderSize);

  /* attribute unsigned long FolderDate; */
  nsresult GetFolderDate(PRUint32 *aFolderDate);
  nsresult SetFolderDate(PRUint32 aFolderDate);

  /* void ChangeNumUnreadMessages (in long delta); */
  nsresult ChangeNumUnreadMessages(PRInt32 delta);

  /* void ChangeNumMessages (in long delta); */
  nsresult ChangeNumMessages(PRInt32 delta);

  /* attribute long NumUnreadMessages; */
  nsresult GetNumUnreadMessages(PRInt32 *aNumUnreadMessages);
  nsresult SetNumUnreadMessages(PRInt32 aNumUnreadMessages);

  /* attribute long NumMessages; */
  nsresult GetNumMessages(PRInt32 *aNumMessages);
  nsresult SetNumMessages(PRInt32 aNumMessages);

  /* attribute long expungedBytes; */
  nsresult GetExpungedBytes(PRInt32 *aExpungedBytes);
  nsresult SetExpungedBytes(PRInt32 aExpungedBytes);

  /* attribute long ImapUidValidity; */
  nsresult GetImapUidValidity(PRInt32 *aImapUidValidity);
  nsresult SetImapUidValidity(PRInt32 aImapUidValidity);

  /* attribute unsigned long Version; */
  nsresult GetVersion(PRUint32 *aVersion);
  nsresult SetVersion(PRUint32 aVersion);

  /* attribute long ImapTotalPendingMessages; */
  nsresult GetImapTotalPendingMessages(PRInt32 *aImapTotalPendingMessages);
  nsresult SetImapTotalPendingMessages(PRInt32 aImapTotalPendingMessages);

  /* attribute long ImapUnreadPendingMessages; */
  nsresult GetImapUnreadPendingMessages(PRInt32 *aImapUnreadPendingMessages);
  nsresult SetImapUnreadPendingMessages(PRInt32 aImapUnreadPendingMessages);

  /* attribute wchar IMAPHierarchySeparator; */
  nsresult GetIMAPHierarchySeparator(PRUnichar *aIMAPHierarchySeparator);
  nsresult SetIMAPHierarchySeparator(PRUnichar aIMAPHierarchySeparator);

  /* attribute nsMsgViewTypeValue viewType; */
  nsresult GetViewType(nsMsgViewTypeValue *aViewType);
  nsresult SetViewType(nsMsgViewTypeValue aViewType);

  /* attribute nsMsgViewFlagsTypeValue viewFlags; */
  nsresult GetViewFlags(nsMsgViewFlagsTypeValue *aViewFlags);
  nsresult SetViewFlags(nsMsgViewFlagsTypeValue aViewFlags);

  /* attribute nsMsgViewSortTypeValue sortType; */
  nsresult GetSortType(nsMsgViewSortTypeValue *aSortType);
  nsresult SetSortType(nsMsgViewSortTypeValue aSortType);

  /* attribute nsMsgViewSortOrderValue sortOrder; */
  nsresult GetSortOrder(nsMsgViewSortOrderValue *aSortOrder);
  nsresult SetSortOrder(nsMsgViewSortOrderValue aSortOrder);

  /* void ChangeExpungedBytes (in long delta); */
  nsresult ChangeExpungedBytes(PRInt32 delta);

  /* string getCharPtrProperty (in string propertyName); */
  nsresult GetCharPtrProperty(char *propertyName, char **_retval);

  /* void setCharPtrProperty (in string aPropertyName, in string aPropertyValue); */
  nsresult SetCharPtrProperty(char *aPropertyName, char *aPropertyValue);

  /* void setUint32Property (in string propertyName, in unsigned long propertyValue); */
  nsresult SetUint32Property(char *propertyName, PRUint32 propertyValue);

  /* unsigned long getUint32Property (in string propertyName, in unsigned long defaultValue); */
  nsresult GetUint32Property(char *propertyName, PRUint32 defaultValue, PRUint32 *_retval);

  /* boolean getBooleanProperty (in string propertyName, in boolean defaultValue); */
  nsresult GetBooleanProperty(char *propertyName, PRBool defaultValue, PRBool *_retval);

  /* void setBooleanProperty (in string propertyName, in boolean aPropertyValue); */
  nsresult SetBooleanProperty(char *propertyName, PRBool aPropertyValue);

  /* nsIDBFolderInfo GetTransferInfo (); */
  nsresult GetTransferInfo(nsIDBFolderInfo *_retval);

  /* void initFromTransferInfo (in nsIDBFolderInfo transferInfo); */
  nsresult InitFromTransferInfo(nsIDBFolderInfo transferInfo);

  /* void getCharacterSet (out ACString charSet, out boolean overriden); */
  nsresult GetCharacterSet(nsACString * charSet, PRBool *overriden);

  /* void setCharacterSet (in string charSet); */
  nsresult SetCharacterSet(char *charSet);

  /* attribute boolean characterSetOverride; */
  nsresult GetCharacterSetOverride(PRBool *aCharacterSetOverride);
  nsresult SetCharacterSetOverride(PRBool aCharacterSetOverride);

  /* string getCharPtrCharacterSet (); */
  nsresult GetCharPtrCharacterSet(char **_retval);

  /* attribute AString locale; */
  nsresult GetLocale(nsAString * aLocale);
  nsresult SetLocale(nsAString * aLocale);

  /* attribute AString mailboxName; */
  nsresult GetMailboxName(nsAString * aMailboxName);
  nsresult SetMailboxName(nsAString * aMailboxName);

  /* AString getProperty (in string propertyName); */
  nsresult GetProperty(char *propertyName, nsAString * _retval);

  /* void setProperty (in string propertyName, in AString propertyStr); */
  nsresult SetProperty(char *propertyName, nsAString * propertyStr);

  /* attribute string knownArtsSet; */
  nsresult GetKnownArtsSet(char * *aKnownArtsSet);
  nsresult SetKnownArtsSet(char * aKnownArtsSet);

  /* attribute string folderName; */
  nsresult GetFolderName(char * *aFolderName);
  nsresult SetFolderName(char * aFolderName);

}

