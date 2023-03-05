/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMailboxSpec.idl
 */

module mozilla.xpcom.nsIMailboxSpec;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIImapFlagAndUidState;


/* starting interface:    nsIMailboxSpec */
const char[] NS_IMAILBOXSPEC_IID_STR = "76cbfa2e-c7f2-11d3-a54e-0060b0fc04b7";

const nsIID NS_IMAILBOXSPEC_IID= 
  {0x76cbfa2e, 0xc7f2, 0x11d3, 
    [ 0xa5, 0x4e, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMailboxSpec : nsISupports {
  static const char[] IID_STR = NS_IMAILBOXSPEC_IID_STR;
  static const nsIID IID = NS_IMAILBOXSPEC_IID;

  /* attribute long folder_UIDVALIDITY; */
  nsresult GetFolder_UIDVALIDITY(PRInt32 *aFolder_UIDVALIDITY);
  nsresult SetFolder_UIDVALIDITY(PRInt32 aFolder_UIDVALIDITY);

  /* attribute long numMessages; */
  nsresult GetNumMessages(PRInt32 *aNumMessages);
  nsresult SetNumMessages(PRInt32 aNumMessages);

  /* attribute long numUnseenMessages; */
  nsresult GetNumUnseenMessages(PRInt32 *aNumUnseenMessages);
  nsresult SetNumUnseenMessages(PRInt32 aNumUnseenMessages);

  /* attribute long numRecentMessages; */
  nsresult GetNumRecentMessages(PRInt32 *aNumRecentMessages);
  nsresult SetNumRecentMessages(PRInt32 aNumRecentMessages);

  /* attribute unsigned long box_flags; */
  nsresult GetBox_flags(PRUint32 *aBox_flags);
  nsresult SetBox_flags(PRUint32 aBox_flags);

  /* attribute unsigned long supportedUserFlags; */
  nsresult GetSupportedUserFlags(PRUint32 *aSupportedUserFlags);
  nsresult SetSupportedUserFlags(PRUint32 aSupportedUserFlags);

  /* attribute string allocatedPathName; */
  nsresult GetAllocatedPathName(char * *aAllocatedPathName);
  nsresult SetAllocatedPathName(char * aAllocatedPathName);

  /* attribute wstring unicharPathName; */
  nsresult GetUnicharPathName(PRUnichar * *aUnicharPathName);
  nsresult SetUnicharPathName(PRUnichar * aUnicharPathName);

  /* attribute char hierarchySeparator; */
  nsresult GetHierarchySeparator(char *aHierarchySeparator);
  nsresult SetHierarchySeparator(char aHierarchySeparator);

  /* attribute string hostName; */
  nsresult GetHostName(char * *aHostName);
  nsresult SetHostName(char * aHostName);

  /* attribute nsIImapFlagAndUidState flagState; */
  nsresult GetFlagState(nsIImapFlagAndUidState  *aFlagState);
  nsresult SetFlagState(nsIImapFlagAndUidState  aFlagState);

  /* attribute boolean folderSelected; */
  nsresult GetFolderSelected(PRBool *aFolderSelected);
  nsresult SetFolderSelected(PRBool aFolderSelected);

  /* attribute boolean discoveredFromLsub; */
  nsresult GetDiscoveredFromLsub(PRBool *aDiscoveredFromLsub);
  nsresult SetDiscoveredFromLsub(PRBool aDiscoveredFromLsub);

  /* attribute boolean onlineVerified; */
  nsresult GetOnlineVerified(PRBool *aOnlineVerified);
  nsresult SetOnlineVerified(PRBool aOnlineVerified);

  /* [noscript] attribute nsIMAPNamespace namespaceForFolder; */
  nsresult GetNamespaceForFolder(nsIMAPNamespace  *aNamespaceForFolder);
  nsresult SetNamespaceForFolder(nsIMAPNamespace  aNamespaceForFolder);

}

