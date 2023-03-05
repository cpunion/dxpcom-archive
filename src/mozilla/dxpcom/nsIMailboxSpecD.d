/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMailboxSpec.idl
 */

module mozilla.dxpcom.nsIMailboxSpecD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMailboxSpec;


public import mozilla.dxpcom.nsIMailboxSpecD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIImapFlagAndUidState;
public import mozilla.dxpcom.nsIImapFlagAndUidStateD;


/* starting wrapper class:    nsIMailboxSpec */
class nsIMailboxSpecD : public nsISupportsD {

  static const nsIID IID = NS_IMAILBOXSPEC_IID;


  alias nsIMailboxSpec InnerType;

  this(nsIMailboxSpec intr){
    super(intr);
    this.inner = intr;
  }

  nsIMailboxSpec opCast() {
    return inner;
  }

  void opAssign(nsIMailboxSpec value) {
    inner = value;
  }

  /* attribute long folder_UIDVALIDITY; */
  PRInt32 Folder_UIDVALIDITY(){
    PRInt32 value;
    nsresult __result = inner.GetFolder_UIDVALIDITY(&value);
    CheckException(__result);
    return value;
  }
  void Folder_UIDVALIDITY(PRInt32 aFolder_UIDVALIDITY){
    nsresult __result = inner.SetFolder_UIDVALIDITY(aFolder_UIDVALIDITY);
    CheckException(__result);
  }

  /* attribute long numMessages; */
  PRInt32 NumMessages(){
    PRInt32 value;
    nsresult __result = inner.GetNumMessages(&value);
    CheckException(__result);
    return value;
  }
  void NumMessages(PRInt32 aNumMessages){
    nsresult __result = inner.SetNumMessages(aNumMessages);
    CheckException(__result);
  }

  /* attribute long numUnseenMessages; */
  PRInt32 NumUnseenMessages(){
    PRInt32 value;
    nsresult __result = inner.GetNumUnseenMessages(&value);
    CheckException(__result);
    return value;
  }
  void NumUnseenMessages(PRInt32 aNumUnseenMessages){
    nsresult __result = inner.SetNumUnseenMessages(aNumUnseenMessages);
    CheckException(__result);
  }

  /* attribute long numRecentMessages; */
  PRInt32 NumRecentMessages(){
    PRInt32 value;
    nsresult __result = inner.GetNumRecentMessages(&value);
    CheckException(__result);
    return value;
  }
  void NumRecentMessages(PRInt32 aNumRecentMessages){
    nsresult __result = inner.SetNumRecentMessages(aNumRecentMessages);
    CheckException(__result);
  }

  /* attribute unsigned long box_flags; */
  PRUint32 Box_flags(){
    PRUint32 value;
    nsresult __result = inner.GetBox_flags(&value);
    CheckException(__result);
    return value;
  }
  void Box_flags(PRUint32 aBox_flags){
    nsresult __result = inner.SetBox_flags(aBox_flags);
    CheckException(__result);
  }

  /* attribute unsigned long supportedUserFlags; */
  PRUint32 SupportedUserFlags(){
    PRUint32 value;
    nsresult __result = inner.GetSupportedUserFlags(&value);
    CheckException(__result);
    return value;
  }
  void SupportedUserFlags(PRUint32 aSupportedUserFlags){
    nsresult __result = inner.SetSupportedUserFlags(aSupportedUserFlags);
    CheckException(__result);
  }

  /* attribute string allocatedPathName; */
  char* AllocatedPathName(){
    char* value;
    nsresult __result = inner.GetAllocatedPathName(&value);
    CheckException(__result);
    return value;
  }
  void AllocatedPathName(char* aAllocatedPathName){
    nsresult __result = inner.SetAllocatedPathName(aAllocatedPathName);
    CheckException(__result);
  }

  /* attribute wstring unicharPathName; */
  PRUnichar* UnicharPathName(){
    PRUnichar* value;
    nsresult __result = inner.GetUnicharPathName(&value);
    CheckException(__result);
    return value;
  }
  void UnicharPathName(PRUnichar* aUnicharPathName){
    nsresult __result = inner.SetUnicharPathName(aUnicharPathName);
    CheckException(__result);
  }

  /* attribute char hierarchySeparator; */
  char HierarchySeparator(){
    char value;
    nsresult __result = inner.GetHierarchySeparator(&value);
    CheckException(__result);
    return value;
  }
  void HierarchySeparator(char aHierarchySeparator){
    nsresult __result = inner.SetHierarchySeparator(aHierarchySeparator);
    CheckException(__result);
  }

  /* attribute string hostName; */
  char* HostName(){
    char* value;
    nsresult __result = inner.GetHostName(&value);
    CheckException(__result);
    return value;
  }
  void HostName(char* aHostName){
    nsresult __result = inner.SetHostName(aHostName);
    CheckException(__result);
  }

  /* attribute nsIImapFlagAndUidState flagState; */
  nsIImapFlagAndUidStateD  FlagState(){
    nsIImapFlagAndUidState value;
    nsresult __result = inner.GetFlagState(&value);
    CheckException(__result);
    return new nsIImapFlagAndUidStateD(value);
  }
  void FlagState(nsIImapFlagAndUidStateD  aFlagState){
    nsIImapFlagAndUidState value;
    nsresult __result = inner.SetFlagState(value);
    CheckException(__result);
  }

  /* attribute boolean folderSelected; */
  PRBool FolderSelected(){
    PRBool value;
    nsresult __result = inner.GetFolderSelected(&value);
    CheckException(__result);
    return value;
  }
  void FolderSelected(PRBool aFolderSelected){
    nsresult __result = inner.SetFolderSelected(aFolderSelected);
    CheckException(__result);
  }

  /* attribute boolean discoveredFromLsub; */
  PRBool DiscoveredFromLsub(){
    PRBool value;
    nsresult __result = inner.GetDiscoveredFromLsub(&value);
    CheckException(__result);
    return value;
  }
  void DiscoveredFromLsub(PRBool aDiscoveredFromLsub){
    nsresult __result = inner.SetDiscoveredFromLsub(aDiscoveredFromLsub);
    CheckException(__result);
  }

  /* attribute boolean onlineVerified; */
  PRBool OnlineVerified(){
    PRBool value;
    nsresult __result = inner.GetOnlineVerified(&value);
    CheckException(__result);
    return value;
  }
  void OnlineVerified(PRBool aOnlineVerified){
    nsresult __result = inner.SetOnlineVerified(aOnlineVerified);
    CheckException(__result);
  }

  /* [noscript] attribute nsIMAPNamespace namespaceForFolder; */
  nsIMAPNamespaceD  NamespaceForFolder(){
    nsIMAPNamespace value;
    nsresult __result = inner.GetNamespaceForFolder(&value);
    CheckException(__result);
    return new nsIMAPNamespaceD(value);
  }
  void NamespaceForFolder(nsIMAPNamespaceD  aNamespaceForFolder){
    nsIMAPNamespace value;
    nsresult __result = inner.SetNamespaceForFolder(value);
    CheckException(__result);
  }

private:
  nsIMailboxSpec inner;

}

