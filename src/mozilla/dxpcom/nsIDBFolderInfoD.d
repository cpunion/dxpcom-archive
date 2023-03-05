/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDBFolderInfo.idl
 */

module mozilla.dxpcom.nsIDBFolderInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDBFolderInfo;


public import mozilla.dxpcom.nsIDBFolderInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;


/* starting wrapper class:    nsIDBFolderInfo */
class nsIDBFolderInfoD : public nsISupportsD {

  static const nsIID IID = NS_IDBFOLDERINFO_IID;


  alias nsIDBFolderInfo InnerType;

  this(nsIDBFolderInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIDBFolderInfo opCast() {
    return inner;
  }

  void opAssign(nsIDBFolderInfo value) {
    inner = value;
  }

  /* attribute long Flags; */
  PRInt32 Flags(){
    PRInt32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRInt32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

  /* long OrFlags (in long flags); */
  PRInt32 OrFlags(PRInt32 flags){
    PRInt32 _retval;
    nsresult __result = inner.OrFlags(flags, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long AndFlags (in long flags); */
  PRInt32 AndFlags(PRInt32 flags){
    PRInt32 _retval;
    nsresult __result = inner.AndFlags(flags, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetHighWater (in nsMsgKey highwater, in boolean force); */
  void SetHighWater(nsMsgKey highwater, PRBool force){
    nsresult __result = inner.SetHighWater(highwater, force);
    CheckException(__result);
  }

  /* attribute nsMsgKey HighWater; */
  nsMsgKey HighWater(){
    nsMsgKey value;
    nsresult __result = inner.GetHighWater(&value);
    CheckException(__result);
    return value;
  }
  void HighWater(nsMsgKey aHighWater){
    nsMsgKey value;
    nsresult __result = inner.SetHighWater(value);
    CheckException(__result);
  }

  /* attribute nsMsgKey ExpiredMark; */
  nsMsgKey ExpiredMark(){
    nsMsgKey value;
    nsresult __result = inner.GetExpiredMark(&value);
    CheckException(__result);
    return value;
  }
  void ExpiredMark(nsMsgKey aExpiredMark){
    nsMsgKey value;
    nsresult __result = inner.SetExpiredMark(value);
    CheckException(__result);
  }

  /* attribute unsigned long FolderSize; */
  PRUint32 FolderSize(){
    PRUint32 value;
    nsresult __result = inner.GetFolderSize(&value);
    CheckException(__result);
    return value;
  }
  void FolderSize(PRUint32 aFolderSize){
    nsresult __result = inner.SetFolderSize(aFolderSize);
    CheckException(__result);
  }

  /* attribute unsigned long FolderDate; */
  PRUint32 FolderDate(){
    PRUint32 value;
    nsresult __result = inner.GetFolderDate(&value);
    CheckException(__result);
    return value;
  }
  void FolderDate(PRUint32 aFolderDate){
    nsresult __result = inner.SetFolderDate(aFolderDate);
    CheckException(__result);
  }

  /* void ChangeNumUnreadMessages (in long delta); */
  void ChangeNumUnreadMessages(PRInt32 delta){
    nsresult __result = inner.ChangeNumUnreadMessages(delta);
    CheckException(__result);
  }

  /* void ChangeNumMessages (in long delta); */
  void ChangeNumMessages(PRInt32 delta){
    nsresult __result = inner.ChangeNumMessages(delta);
    CheckException(__result);
  }

  /* attribute long NumUnreadMessages; */
  PRInt32 NumUnreadMessages(){
    PRInt32 value;
    nsresult __result = inner.GetNumUnreadMessages(&value);
    CheckException(__result);
    return value;
  }
  void NumUnreadMessages(PRInt32 aNumUnreadMessages){
    nsresult __result = inner.SetNumUnreadMessages(aNumUnreadMessages);
    CheckException(__result);
  }

  /* attribute long NumMessages; */
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

  /* attribute long expungedBytes; */
  PRInt32 ExpungedBytes(){
    PRInt32 value;
    nsresult __result = inner.GetExpungedBytes(&value);
    CheckException(__result);
    return value;
  }
  void ExpungedBytes(PRInt32 aExpungedBytes){
    nsresult __result = inner.SetExpungedBytes(aExpungedBytes);
    CheckException(__result);
  }

  /* attribute long ImapUidValidity; */
  PRInt32 ImapUidValidity(){
    PRInt32 value;
    nsresult __result = inner.GetImapUidValidity(&value);
    CheckException(__result);
    return value;
  }
  void ImapUidValidity(PRInt32 aImapUidValidity){
    nsresult __result = inner.SetImapUidValidity(aImapUidValidity);
    CheckException(__result);
  }

  /* attribute unsigned long Version; */
  PRUint32 Version(){
    PRUint32 value;
    nsresult __result = inner.GetVersion(&value);
    CheckException(__result);
    return value;
  }
  void Version(PRUint32 aVersion){
    nsresult __result = inner.SetVersion(aVersion);
    CheckException(__result);
  }

  /* attribute long ImapTotalPendingMessages; */
  PRInt32 ImapTotalPendingMessages(){
    PRInt32 value;
    nsresult __result = inner.GetImapTotalPendingMessages(&value);
    CheckException(__result);
    return value;
  }
  void ImapTotalPendingMessages(PRInt32 aImapTotalPendingMessages){
    nsresult __result = inner.SetImapTotalPendingMessages(aImapTotalPendingMessages);
    CheckException(__result);
  }

  /* attribute long ImapUnreadPendingMessages; */
  PRInt32 ImapUnreadPendingMessages(){
    PRInt32 value;
    nsresult __result = inner.GetImapUnreadPendingMessages(&value);
    CheckException(__result);
    return value;
  }
  void ImapUnreadPendingMessages(PRInt32 aImapUnreadPendingMessages){
    nsresult __result = inner.SetImapUnreadPendingMessages(aImapUnreadPendingMessages);
    CheckException(__result);
  }

  /* attribute wchar IMAPHierarchySeparator; */
  PRUnichar IMAPHierarchySeparator(){
    PRUnichar value;
    nsresult __result = inner.GetIMAPHierarchySeparator(&value);
    CheckException(__result);
    return value;
  }
  void IMAPHierarchySeparator(PRUnichar aIMAPHierarchySeparator){
    nsresult __result = inner.SetIMAPHierarchySeparator(aIMAPHierarchySeparator);
    CheckException(__result);
  }

  /* attribute nsMsgViewTypeValue viewType; */
  nsMsgViewTypeValue ViewType(){
    nsMsgViewTypeValue value;
    nsresult __result = inner.GetViewType(&value);
    CheckException(__result);
    return value;
  }
  void ViewType(nsMsgViewTypeValue aViewType){
    nsMsgViewTypeValue value;
    nsresult __result = inner.SetViewType(value);
    CheckException(__result);
  }

  /* attribute nsMsgViewFlagsTypeValue viewFlags; */
  nsMsgViewFlagsTypeValue ViewFlags(){
    nsMsgViewFlagsTypeValue value;
    nsresult __result = inner.GetViewFlags(&value);
    CheckException(__result);
    return value;
  }
  void ViewFlags(nsMsgViewFlagsTypeValue aViewFlags){
    nsMsgViewFlagsTypeValue value;
    nsresult __result = inner.SetViewFlags(value);
    CheckException(__result);
  }

  /* attribute nsMsgViewSortTypeValue sortType; */
  nsMsgViewSortTypeValue SortType(){
    nsMsgViewSortTypeValue value;
    nsresult __result = inner.GetSortType(&value);
    CheckException(__result);
    return value;
  }
  void SortType(nsMsgViewSortTypeValue aSortType){
    nsMsgViewSortTypeValue value;
    nsresult __result = inner.SetSortType(value);
    CheckException(__result);
  }

  /* attribute nsMsgViewSortOrderValue sortOrder; */
  nsMsgViewSortOrderValue SortOrder(){
    nsMsgViewSortOrderValue value;
    nsresult __result = inner.GetSortOrder(&value);
    CheckException(__result);
    return value;
  }
  void SortOrder(nsMsgViewSortOrderValue aSortOrder){
    nsMsgViewSortOrderValue value;
    nsresult __result = inner.SetSortOrder(value);
    CheckException(__result);
  }

  /* void ChangeExpungedBytes (in long delta); */
  void ChangeExpungedBytes(PRInt32 delta){
    nsresult __result = inner.ChangeExpungedBytes(delta);
    CheckException(__result);
  }

  /* string getCharPtrProperty (in string propertyName); */
  char* GetCharPtrProperty(char*propertyName){
    char* _retval;
    nsresult __result = inner.GetCharPtrProperty(propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCharPtrProperty (in string aPropertyName, in string aPropertyValue); */
  void SetCharPtrProperty(char*aPropertyName, char*aPropertyValue){
    nsresult __result = inner.SetCharPtrProperty(aPropertyName, aPropertyValue);
    CheckException(__result);
  }

  /* void setUint32Property (in string propertyName, in unsigned long propertyValue); */
  void SetUint32Property(char*propertyName, PRUint32 propertyValue){
    nsresult __result = inner.SetUint32Property(propertyName, propertyValue);
    CheckException(__result);
  }

  /* unsigned long getUint32Property (in string propertyName, in unsigned long defaultValue); */
  PRUint32 GetUint32Property(char*propertyName, PRUint32 defaultValue){
    PRUint32 _retval;
    nsresult __result = inner.GetUint32Property(propertyName, defaultValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean getBooleanProperty (in string propertyName, in boolean defaultValue); */
  PRBool GetBooleanProperty(char*propertyName, PRBool defaultValue){
    PRBool _retval;
    nsresult __result = inner.GetBooleanProperty(propertyName, defaultValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setBooleanProperty (in string propertyName, in boolean aPropertyValue); */
  void SetBooleanProperty(char*propertyName, PRBool aPropertyValue){
    nsresult __result = inner.SetBooleanProperty(propertyName, aPropertyValue);
    CheckException(__result);
  }

  /* nsIDBFolderInfo GetTransferInfo (); */
  nsIDBFolderInfoD  GetTransferInfo(){
    nsIDBFolderInfo _retval;
    nsresult __result = inner.GetTransferInfo(&_retval);
    CheckException(__result);
    return new nsIDBFolderInfoD(_retval);
  }

  /* void initFromTransferInfo (in nsIDBFolderInfo transferInfo); */
  void InitFromTransferInfo(nsIDBFolderInfoD transferInfo){
    nsresult __result = inner.InitFromTransferInfo(transferInfo ? cast(nsIDBFolderInfo)transferInfo : null);
    CheckException(__result);
  }

  /* void getCharacterSet (out ACString charSet, out boolean overriden); */
  void GetCharacterSet(char[] charSet, out PRBool overriden){
    scope auto _charSet = new ACString;
    nsresult __result = inner.GetCharacterSet(cast(nsACString*)_charSet, &overriden);
    CheckException(__result);
    charSet = _charSet.GetString();
  }

  /* void setCharacterSet (in string charSet); */
  void SetCharacterSet(char*charSet){
    nsresult __result = inner.SetCharacterSet(charSet);
    CheckException(__result);
  }

  /* attribute boolean characterSetOverride; */
  PRBool CharacterSetOverride(){
    PRBool value;
    nsresult __result = inner.GetCharacterSetOverride(&value);
    CheckException(__result);
    return value;
  }
  void CharacterSetOverride(PRBool aCharacterSetOverride){
    nsresult __result = inner.SetCharacterSetOverride(aCharacterSetOverride);
    CheckException(__result);
  }

  /* string getCharPtrCharacterSet (); */
  char* GetCharPtrCharacterSet(){
    char* _retval;
    nsresult __result = inner.GetCharPtrCharacterSet(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute AString locale; */
  wchar[] Locale(){
    scope auto value = new AString();
    nsresult __result = inner.GetLocale(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Locale(wchar[] aLocale){
    scope auto value = new AString(aLocale);
    nsresult __result = inner.SetLocale(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString mailboxName; */
  wchar[] MailboxName(){
    scope auto value = new AString();
    nsresult __result = inner.GetMailboxName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void MailboxName(wchar[] aMailboxName){
    scope auto value = new AString(aMailboxName);
    nsresult __result = inner.SetMailboxName(cast(nsAString*)value);
    CheckException(__result);
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

  /* attribute string knownArtsSet; */
  char* KnownArtsSet(){
    char* value;
    nsresult __result = inner.GetKnownArtsSet(&value);
    CheckException(__result);
    return value;
  }
  void KnownArtsSet(char* aKnownArtsSet){
    nsresult __result = inner.SetKnownArtsSet(aKnownArtsSet);
    CheckException(__result);
  }

  /* attribute string folderName; */
  char* FolderName(){
    char* value;
    nsresult __result = inner.GetFolderName(&value);
    CheckException(__result);
    return value;
  }
  void FolderName(char* aFolderName){
    nsresult __result = inner.SetFolderName(aFolderName);
    CheckException(__result);
  }

private:
  nsIDBFolderInfo inner;

}

