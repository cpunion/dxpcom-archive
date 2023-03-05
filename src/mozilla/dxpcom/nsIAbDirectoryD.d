/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirectory.idl
 */

module mozilla.dxpcom.nsIAbDirectoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbDirectory;


public import mozilla.dxpcom.nsIAbDirectoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.dxpcom.nsIAbCardD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIAbDirectoryProperties */
class nsIAbDirectoryPropertiesD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRECTORYPROPERTIES_IID;


  alias nsIAbDirectoryProperties InnerType;

  this(nsIAbDirectoryProperties intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectoryProperties opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectoryProperties value) {
    inner = value;
  }

  /* attribute AString description; */
  wchar[] Description(){
    scope auto value = new AString();
    nsresult __result = inner.GetDescription(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Description(wchar[] aDescription){
    scope auto value = new AString(aDescription);
    nsresult __result = inner.SetDescription(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute string URI; */
  char* URI(){
    char* value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return value;
  }
  void URI(char* aURI){
    nsresult __result = inner.SetURI(aURI);
    CheckException(__result);
  }

  /* attribute string prefName; */
  char* PrefName(){
    char* value;
    nsresult __result = inner.GetPrefName(&value);
    CheckException(__result);
    return value;
  }
  void PrefName(char* aPrefName){
    nsresult __result = inner.SetPrefName(aPrefName);
    CheckException(__result);
  }

  /* attribute string fileName; */
  char* FileName(){
    char* value;
    nsresult __result = inner.GetFileName(&value);
    CheckException(__result);
    return value;
  }
  void FileName(char* aFileName){
    nsresult __result = inner.SetFileName(aFileName);
    CheckException(__result);
  }

  /* attribute unsigned long dirType; */
  PRUint32 DirType(){
    PRUint32 value;
    nsresult __result = inner.GetDirType(&value);
    CheckException(__result);
    return value;
  }
  void DirType(PRUint32 aDirType){
    nsresult __result = inner.SetDirType(aDirType);
    CheckException(__result);
  }

  /* attribute unsigned long maxHits; */
  PRUint32 MaxHits(){
    PRUint32 value;
    nsresult __result = inner.GetMaxHits(&value);
    CheckException(__result);
    return value;
  }
  void MaxHits(PRUint32 aMaxHits){
    nsresult __result = inner.SetMaxHits(aMaxHits);
    CheckException(__result);
  }

  /* attribute string authDn; */
  char* AuthDn(){
    char* value;
    nsresult __result = inner.GetAuthDn(&value);
    CheckException(__result);
    return value;
  }
  void AuthDn(char* aAuthDn){
    nsresult __result = inner.SetAuthDn(aAuthDn);
    CheckException(__result);
  }

  /* attribute unsigned long syncTimeStamp; */
  PRUint32 SyncTimeStamp(){
    PRUint32 value;
    nsresult __result = inner.GetSyncTimeStamp(&value);
    CheckException(__result);
    return value;
  }
  void SyncTimeStamp(PRUint32 aSyncTimeStamp){
    nsresult __result = inner.SetSyncTimeStamp(aSyncTimeStamp);
    CheckException(__result);
  }

  /* attribute long categoryId; */
  PRInt32 CategoryId(){
    PRInt32 value;
    nsresult __result = inner.GetCategoryId(&value);
    CheckException(__result);
    return value;
  }
  void CategoryId(PRInt32 aCategoryId){
    nsresult __result = inner.SetCategoryId(aCategoryId);
    CheckException(__result);
  }

  /* attribute long position; */
  PRInt32 Position(){
    PRInt32 value;
    nsresult __result = inner.GetPosition(&value);
    CheckException(__result);
    return value;
  }
  void Position(PRInt32 aPosition){
    nsresult __result = inner.SetPosition(aPosition);
    CheckException(__result);
  }

private:
  nsIAbDirectoryProperties inner;

}


/* starting wrapper class:    nsIAbDirectory */
class nsIAbDirectoryD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRECTORY_IID;


  alias nsIAbDirectory InnerType;

  this(nsIAbDirectory intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectory opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectory value) {
    inner = value;
  }

  enum { opRead = 1 }

  enum { opWrite = 2 }

  enum { opSearch = 4 }

  /* readonly attribute long operations; */
  PRInt32 Operations(){
    PRInt32 value;
    nsresult __result = inner.GetOperations(&value);
    CheckException(__result);
    return value;
  }

  /* attribute wstring dirName; */
  PRUnichar* DirName(){
    PRUnichar* value;
    nsresult __result = inner.GetDirName(&value);
    CheckException(__result);
    return value;
  }
  void DirName(PRUnichar* aDirName){
    nsresult __result = inner.SetDirName(aDirName);
    CheckException(__result);
  }

  /* attribute unsigned long lastModifiedDate; */
  PRUint32 LastModifiedDate(){
    PRUint32 value;
    nsresult __result = inner.GetLastModifiedDate(&value);
    CheckException(__result);
    return value;
  }
  void LastModifiedDate(PRUint32 aLastModifiedDate){
    nsresult __result = inner.SetLastModifiedDate(aLastModifiedDate);
    CheckException(__result);
  }

  /* attribute PRBool isMailList; */
  PRBool IsMailList(){
    PRBool value;
    nsresult __result = inner.GetIsMailList(&value);
    CheckException(__result);
    return value;
  }
  void IsMailList(PRBool aIsMailList){
    PRBool value;
    nsresult __result = inner.SetIsMailList(value);
    CheckException(__result);
  }

  /* readonly attribute nsIAbDirectoryProperties directoryProperties; */
  nsIAbDirectoryPropertiesD  DirectoryProperties(){
    nsIAbDirectoryProperties value;
    nsresult __result = inner.GetDirectoryProperties(&value);
    CheckException(__result);
    return new nsIAbDirectoryPropertiesD(value);
  }

  /* readonly attribute nsISimpleEnumerator childNodes; */
  nsISimpleEnumeratorD  ChildNodes(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetChildNodes(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

  /* readonly attribute nsIEnumerator childCards; */
  nsIEnumeratorD  ChildCards(){
    nsIEnumerator value;
    nsresult __result = inner.GetChildCards(&value);
    CheckException(__result);
    return new nsIEnumeratorD(value);
  }

  /* void modifyDirectory (in nsIAbDirectory directory, in nsIAbDirectoryProperties aProperties); */
  void ModifyDirectory(nsIAbDirectoryD directory, nsIAbDirectoryPropertiesD aProperties){
    nsresult __result = inner.ModifyDirectory(directory ? cast(nsIAbDirectory)directory : null, aProperties ? cast(nsIAbDirectoryProperties)aProperties : null);
    CheckException(__result);
  }

  /* void deleteDirectory (in nsIAbDirectory dierctory); */
  void DeleteDirectory(nsIAbDirectoryD dierctory){
    nsresult __result = inner.DeleteDirectory(dierctory ? cast(nsIAbDirectory)dierctory : null);
    CheckException(__result);
  }

  /* void deleteCards (in nsISupportsArray cards); */
  void DeleteCards(nsISupportsArrayD cards){
    nsresult __result = inner.DeleteCards(cards ? cast(nsISupportsArray)cards : null);
    CheckException(__result);
  }

  /* boolean hasCard (in nsIAbCard cards); */
  PRBool HasCard(nsIAbCardD cards){
    PRBool _retval;
    nsresult __result = inner.HasCard(cards ? cast(nsIAbCard)cards : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean hasDirectory (in nsIAbDirectory dir); */
  PRBool HasDirectory(nsIAbDirectoryD dir){
    PRBool _retval;
    nsresult __result = inner.HasDirectory(dir ? cast(nsIAbDirectory)dir : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * return value is the card that got added
     * we need to do this, as the card we pass in might
     * be an abstract nsIAbCard, and the caller might need
     * the "real" card (the mdbcard) to get / set 
     * non-standard card values
     */
  /* nsIAbCard addCard (in nsIAbCard card); */
  nsIAbCardD  AddCard(nsIAbCardD card){
    nsIAbCard _retval;
    nsresult __result = inner.AddCard(card ? cast(nsIAbCard)card : null, &_retval);
    CheckException(__result);
    return new nsIAbCardD(_retval);
  }

  /* void dropCard (in nsIAbCard card, in boolean needToCopyCard); */
  void DropCard(nsIAbCardD card, PRBool needToCopyCard){
    nsresult __result = inner.DropCard(card ? cast(nsIAbCard)card : null, needToCopyCard);
    CheckException(__result);
  }

  /**
     * directory is local (example, mork based) or remote (example, LDAP)
     */
  /* readonly attribute boolean isRemote; */
  PRBool IsRemote(){
    PRBool value;
    nsresult __result = inner.GetIsRemote(&value);
    CheckException(__result);
    return value;
  }

  /**
     * directory is secure (as in LDAP over SSL)
     */
  /* readonly attribute boolean isSecure; */
  PRBool IsSecure(){
    PRBool value;
    nsresult __result = inner.GetIsSecure(&value);
    CheckException(__result);
    return value;
  }

  /**
     * directory should be searched when doing local autocomplete
     */
  /* readonly attribute boolean searchDuringLocalAutocomplete; */
  PRBool SearchDuringLocalAutocomplete(){
    PRBool value;
    nsresult __result = inner.GetSearchDuringLocalAutocomplete(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean supportsMailingLists; */
  PRBool SupportsMailingLists(){
    PRBool value;
    nsresult __result = inner.GetSupportsMailingLists(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsISupportsArray addressLists; */
  nsISupportsArrayD  AddressLists(){
    nsISupportsArray value;
    nsresult __result = inner.GetAddressLists(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }
  void AddressLists(nsISupportsArrayD  aAddressLists){
    nsISupportsArray value;
    nsresult __result = inner.SetAddressLists(value);
    CheckException(__result);
  }

  /* void addMailList (in nsIAbDirectory list); */
  void AddMailList(nsIAbDirectoryD list){
    nsresult __result = inner.AddMailList(list ? cast(nsIAbDirectory)list : null);
    CheckException(__result);
  }

  /* void addMailListWithKey (in nsIAbDirectory list, out PRUint32 key); */
  void AddMailListWithKey(nsIAbDirectoryD list, out PRUint32 key){
    nsresult __result = inner.AddMailListWithKey(list ? cast(nsIAbDirectory)list : null, &key);
    CheckException(__result);
  }

  /* attribute wstring listNickName; */
  PRUnichar* ListNickName(){
    PRUnichar* value;
    nsresult __result = inner.GetListNickName(&value);
    CheckException(__result);
    return value;
  }
  void ListNickName(PRUnichar* aListNickName){
    nsresult __result = inner.SetListNickName(aListNickName);
    CheckException(__result);
  }

  /* attribute wstring description; */
  PRUnichar* Description(){
    PRUnichar* value;
    nsresult __result = inner.GetDescription(&value);
    CheckException(__result);
    return value;
  }
  void Description(PRUnichar* aDescription){
    nsresult __result = inner.SetDescription(aDescription);
    CheckException(__result);
  }

  /**
     * Edits an existing mailing list (specified as listCard)
	 * into the directory specified by the uri
	 * XXX javadoc me
     */
  /* void editMailListToDatabase (in string uri, in nsIAbCard listCard); */
  void EditMailListToDatabase(char*uri, nsIAbCardD listCard){
    nsresult __result = inner.EditMailListToDatabase(uri, listCard ? cast(nsIAbCard)listCard : null);
    CheckException(__result);
  }

  /* void copyMailList (in nsIAbDirectory srcList); */
  void CopyMailList(nsIAbDirectoryD srcList){
    nsresult __result = inner.CopyMailList(srcList ? cast(nsIAbDirectory)srcList : null);
    CheckException(__result);
  }

  /* void createNewDirectory (in nsIAbDirectoryProperties aProperties); */
  void CreateNewDirectory(nsIAbDirectoryPropertiesD aProperties){
    nsresult __result = inner.CreateNewDirectory(aProperties ? cast(nsIAbDirectoryProperties)aProperties : null);
    CheckException(__result);
  }

  /* void createDirectoryByURI (in wstring displayName, in string uri, in boolean migrating); */
  void CreateDirectoryByURI(PRUnichar*displayName, char*uri, PRBool migrating){
    nsresult __result = inner.CreateDirectoryByURI(displayName, uri, migrating);
    CheckException(__result);
  }

  /* wstring getValueForCard (in nsIAbCard card, in string name); */
  PRUnichar* GetValueForCard(nsIAbCardD card, char*name){
    PRUnichar* _retval;
    nsresult __result = inner.GetValueForCard(card ? cast(nsIAbCard)card : null, name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setValueForCard (in nsIAbCard card, in string name, in wstring value); */
  void SetValueForCard(nsIAbCardD card, char*name, PRUnichar*value){
    nsresult __result = inner.SetValueForCard(card ? cast(nsIAbCard)card : null, name, value);
    CheckException(__result);
  }

  /* attribute ACString dirPrefId; */
  char[] DirPrefId(){
    scope auto value = new ACString();
    nsresult __result = inner.GetDirPrefId(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DirPrefId(char[] aDirPrefId){
    scope auto value = new ACString(aDirPrefId);
    nsresult __result = inner.SetDirPrefId(cast(nsACString*)value);
    CheckException(__result);
  }

private:
  nsIAbDirectory inner;

}

