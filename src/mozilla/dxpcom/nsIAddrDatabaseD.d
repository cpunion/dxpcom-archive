/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddrDatabase.idl
 */

module mozilla.dxpcom.nsIAddrDatabaseD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAddrDatabase;


public import mozilla.dxpcom.nsIAddrDatabaseD;

public import mozilla.xpcom.nsIAddrDBAnnouncer;
public import mozilla.dxpcom.nsIAddrDBAnnouncerD;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.dxpcom.nsIAbCardD;
public import mozilla.xpcom.nsIAbDirectory;
public import mozilla.dxpcom.nsIAbDirectoryD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsAddrDBCommitType */
class nsAddrDBCommitTypeD {

  static const nsIID IID = NS_ADDRDBCOMMITTYPE_IID;


  alias nsAddrDBCommitType InnerType;

  this(nsAddrDBCommitType intr){
    this.inner = intr;
  }

  nsAddrDBCommitType opCast() {
    return inner;
  }

  void opAssign(nsAddrDBCommitType value) {
    inner = value;
  }

  enum { kSmallCommit = 0 }

  enum { kLargeCommit = 1 }

  enum { kSessionCommit = 2 }

  enum { kCompressCommit = 3 }

private:
  nsAddrDBCommitType inner;

}


/* starting wrapper class:    nsIAddrDatabase */
class nsIAddrDatabaseD : public nsIAddrDBAnnouncerD {

  static const nsIID IID = NS_IADDRDATABASE_IID;


  alias nsIAddrDatabase InnerType;

  this(nsIAddrDatabase intr){
    super(intr);
    this.inner = intr;
  }

  nsIAddrDatabase opCast() {
    return inner;
  }

  void opAssign(nsIAddrDatabase value) {
    inner = value;
  }

  /* [noscript] attribute nsFileSpec dbPath; */
  nsFileSpec * DbPath(){
    nsFileSpec * value;
    nsresult __result = inner.GetDbPath(&value);
    CheckException(__result);
    return value;
  }
  void DbPath(nsFileSpec * aDbPath){
    nsresult __result = inner.SetDbPath(aDbPath);
    CheckException(__result);
  }

  /* nsIAddrDatabase open (in nsIFile dbFile, in boolean create, in boolean upgrading); */
  nsIAddrDatabaseD  Open(nsIFileD dbFile, PRBool create, PRBool upgrading){
    nsIAddrDatabase _retval;
    nsresult __result = inner.Open(dbFile ? cast(nsIFile)dbFile : null, create, upgrading, &_retval);
    CheckException(__result);
    return new nsIAddrDatabaseD(_retval);
  }

  /* void close (in boolean forceCommit); */
  void Close(PRBool forceCommit){
    nsresult __result = inner.Close(forceCommit);
    CheckException(__result);
  }

  /* [noscript] void openMDB (in nsFileSpec dbName, in boolean create); */
  void OpenMDB(nsFileSpec * dbName, PRBool create){
    nsresult __result = inner.OpenMDB(dbName, create);
    CheckException(__result);
  }

  /* void closeMDB (in boolean commit); */
  void CloseMDB(PRBool commit){
    nsresult __result = inner.CloseMDB(commit);
    CheckException(__result);
  }

  /* void commit (in unsigned long commitType); */
  void Commit(PRUint32 commitType){
    nsresult __result = inner.Commit(commitType);
    CheckException(__result);
  }

  /* void forceClosed (); */
  void ForceClosed(){
    nsresult __result = inner.ForceClosed();
    CheckException(__result);
  }

  /* void createNewCardAndAddToDB (in nsIAbCard newCard, in boolean aNotify); */
  void CreateNewCardAndAddToDB(nsIAbCardD newCard, PRBool aNotify){
    nsresult __result = inner.CreateNewCardAndAddToDB(newCard ? cast(nsIAbCard)newCard : null, aNotify);
    CheckException(__result);
  }

  /* void createNewCardAndAddToDBWithKey (in nsIAbCard newCard, in boolean aNotify, out unsigned long key); */
  void CreateNewCardAndAddToDBWithKey(nsIAbCardD newCard, PRBool aNotify, out PRUint32 key){
    nsresult __result = inner.CreateNewCardAndAddToDBWithKey(newCard ? cast(nsIAbCard)newCard : null, aNotify, &key);
    CheckException(__result);
  }

  /* void createNewListCardAndAddToDB (in nsIAbDirectory list, in unsigned long listRowID, in nsIAbCard newCard, in boolean aNotify); */
  void CreateNewListCardAndAddToDB(nsIAbDirectoryD list, PRUint32 listRowID, nsIAbCardD newCard, PRBool aNotify){
    nsresult __result = inner.CreateNewListCardAndAddToDB(list ? cast(nsIAbDirectory)list : null, listRowID, newCard ? cast(nsIAbCard)newCard : null, aNotify);
    CheckException(__result);
  }

  /* void createMailListAndAddToDB (in nsIAbDirectory newList, in boolean aNotify); */
  void CreateMailListAndAddToDB(nsIAbDirectoryD newList, PRBool aNotify){
    nsresult __result = inner.CreateMailListAndAddToDB(newList ? cast(nsIAbDirectory)newList : null, aNotify);
    CheckException(__result);
  }

  /* void createMailListAndAddToDBWithKey (in nsIAbDirectory newList, in boolean aNotify, out PRUint32 key); */
  void CreateMailListAndAddToDBWithKey(nsIAbDirectoryD newList, PRBool aNotify, out PRUint32 key){
    nsresult __result = inner.CreateMailListAndAddToDBWithKey(newList ? cast(nsIAbDirectory)newList : null, aNotify, &key);
    CheckException(__result);
  }

  /* nsIEnumerator enumerateCards (in nsIAbDirectory directory); */
  nsIEnumeratorD  EnumerateCards(nsIAbDirectoryD directory){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateCards(directory ? cast(nsIAbDirectory)directory : null, &_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* nsIEnumerator enumerateListAddresses (in nsIAbDirectory directory); */
  nsIEnumeratorD  EnumerateListAddresses(nsIAbDirectoryD directory){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateListAddresses(directory ? cast(nsIAbDirectory)directory : null, &_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* void getMailingListsFromDB (in nsIAbDirectory parentDir); */
  void GetMailingListsFromDB(nsIAbDirectoryD parentDir){
    nsresult __result = inner.GetMailingListsFromDB(parentDir ? cast(nsIAbDirectory)parentDir : null);
    CheckException(__result);
  }

  /* void deleteCard (in nsIAbCard card, in boolean aNotify); */
  void DeleteCard(nsIAbCardD card, PRBool aNotify){
    nsresult __result = inner.DeleteCard(card ? cast(nsIAbCard)card : null, aNotify);
    CheckException(__result);
  }

  /* void editCard (in nsIAbCard card, in boolean aNotify); */
  void EditCard(nsIAbCardD card, PRBool aNotify){
    nsresult __result = inner.EditCard(card ? cast(nsIAbCard)card : null, aNotify);
    CheckException(__result);
  }

  /* boolean containsCard (in nsIAbCard card); */
  PRBool ContainsCard(nsIAbCardD card){
    PRBool _retval;
    nsresult __result = inner.ContainsCard(card ? cast(nsIAbCard)card : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void deleteMailList (in nsIAbDirectory mailList, in boolean aNotify); */
  void DeleteMailList(nsIAbDirectoryD mailList, PRBool aNotify){
    nsresult __result = inner.DeleteMailList(mailList ? cast(nsIAbDirectory)mailList : null, aNotify);
    CheckException(__result);
  }

  /* void editMailList (in nsIAbDirectory mailList, in nsIAbCard listCard, in boolean aNotify); */
  void EditMailList(nsIAbDirectoryD mailList, nsIAbCardD listCard, PRBool aNotify){
    nsresult __result = inner.EditMailList(mailList ? cast(nsIAbDirectory)mailList : null, listCard ? cast(nsIAbCard)listCard : null, aNotify);
    CheckException(__result);
  }

  /* boolean containsMailList (in nsIAbDirectory mailList); */
  PRBool ContainsMailList(nsIAbDirectoryD mailList){
    PRBool _retval;
    nsresult __result = inner.ContainsMailList(mailList ? cast(nsIAbDirectory)mailList : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void deleteCardFromMailList (in nsIAbDirectory mailList, in nsIAbCard card, in boolean aNotify); */
  void DeleteCardFromMailList(nsIAbDirectoryD mailList, nsIAbCardD card, PRBool aNotify){
    nsresult __result = inner.DeleteCardFromMailList(mailList ? cast(nsIAbDirectory)mailList : null, card ? cast(nsIAbCard)card : null, aNotify);
    CheckException(__result);
  }

  /* readonly attribute wstring directoryName; */
  PRUnichar* DirectoryName(){
    PRUnichar* value;
    nsresult __result = inner.GetDirectoryName(&value);
    CheckException(__result);
    return value;
  }

  /**
	 * aUTF8Value needs to be in UTF-8
	 */
  /* nsIAbCard getCardFromAttribute (in nsIAbDirectory directory, in string aName, in string aUTF8Value, in boolean caseInsensitive); */
  nsIAbCardD  GetCardFromAttribute(nsIAbDirectoryD directory, char*aName, char*aUTF8Value, PRBool caseInsensitive){
    nsIAbCard _retval;
    nsresult __result = inner.GetCardFromAttribute(directory ? cast(nsIAbDirectory)directory : null, aName, aUTF8Value, caseInsensitive, &_retval);
    CheckException(__result);
    return new nsIAbCardD(_retval);
  }

  /* PRBool findMailListbyUnicodeName (in wstring listName); */
  PRBool FindMailListbyUnicodeName(PRUnichar*listName){
    PRBool _retval;
    nsresult __result = inner.FindMailListbyUnicodeName(listName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getCardCount (out PRUint32 count); */
  void GetCardCount(out PRUint32 count){
    nsresult __result = inner.GetCardCount(&count);
    CheckException(__result);
  }

  /* [noscript] readonly attribute nsIMdbRow newRow; */
  nsIMdbRowD  NewRow(){
    nsIMdbRow value;
    nsresult __result = inner.GetNewRow(&value);
    CheckException(__result);
    return new nsIMdbRowD(value);
  }

  /* [noscript] readonly attribute nsIMdbRow newListRow; */
  nsIMdbRowD  NewListRow(){
    nsIMdbRow value;
    nsresult __result = inner.GetNewListRow(&value);
    CheckException(__result);
    return new nsIMdbRowD(value);
  }

  /* [noscript] void addCardRowToDB (in nsIMdbRow newRow); */
  void AddCardRowToDB(nsIMdbRowD newRow){
    nsresult __result = inner.AddCardRowToDB(newRow ? cast(nsIMdbRow)newRow : null);
    CheckException(__result);
  }

  /* [noscript] void addLdifListMember (in nsIMdbRow row, in string value); */
  void AddLdifListMember(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddLdifListMember(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addFirstName (in nsIMdbRow row, in string value); */
  void AddFirstName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddFirstName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addLastName (in nsIMdbRow row, in string value); */
  void AddLastName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddLastName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addPhoneticFirstName (in nsIMdbRow row, in string value); */
  void AddPhoneticFirstName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddPhoneticFirstName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addPhoneticLastName (in nsIMdbRow row, in string value); */
  void AddPhoneticLastName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddPhoneticLastName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addDisplayName (in nsIMdbRow row, in string value); */
  void AddDisplayName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddDisplayName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addNickName (in nsIMdbRow row, in string value); */
  void AddNickName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddNickName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addPrimaryEmail (in nsIMdbRow row, in string value); */
  void AddPrimaryEmail(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddPrimaryEmail(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void add2ndEmail (in nsIMdbRow row, in string value); */
  void Add2ndEmail(nsIMdbRowD row, char*value){
    nsresult __result = inner.Add2ndEmail(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addDefaultEmail (in nsIMdbRow row, in string value); */
  void AddDefaultEmail(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddDefaultEmail(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCardType (in nsIMdbRow row, in string value); */
  void AddCardType(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCardType(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWorkPhone (in nsIMdbRow row, in string value); */
  void AddWorkPhone(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWorkPhone(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addHomePhone (in nsIMdbRow row, in string value); */
  void AddHomePhone(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddHomePhone(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addFaxNumber (in nsIMdbRow row, in string value); */
  void AddFaxNumber(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddFaxNumber(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addPagerNumber (in nsIMdbRow row, in string value); */
  void AddPagerNumber(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddPagerNumber(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCellularNumber (in nsIMdbRow row, in string value); */
  void AddCellularNumber(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCellularNumber(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWorkPhoneType (in nsIMdbRow row, in string value); */
  void AddWorkPhoneType(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWorkPhoneType(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addHomePhoneType (in nsIMdbRow row, in string value); */
  void AddHomePhoneType(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddHomePhoneType(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addFaxNumberType (in nsIMdbRow row, in string value); */
  void AddFaxNumberType(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddFaxNumberType(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addPagerNumberType (in nsIMdbRow row, in string value); */
  void AddPagerNumberType(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddPagerNumberType(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCellularNumberType (in nsIMdbRow row, in string value); */
  void AddCellularNumberType(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCellularNumberType(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addHomeAddress (in nsIMdbRow row, in string value); */
  void AddHomeAddress(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddHomeAddress(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addHomeAddress2 (in nsIMdbRow row, in string value); */
  void AddHomeAddress2(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddHomeAddress2(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addHomeCity (in nsIMdbRow row, in string value); */
  void AddHomeCity(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddHomeCity(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addHomeState (in nsIMdbRow row, in string value); */
  void AddHomeState(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddHomeState(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addHomeZipCode (in nsIMdbRow row, in string value); */
  void AddHomeZipCode(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddHomeZipCode(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addHomeCountry (in nsIMdbRow row, in string value); */
  void AddHomeCountry(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddHomeCountry(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWorkAddress (in nsIMdbRow row, in string value); */
  void AddWorkAddress(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWorkAddress(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWorkAddress2 (in nsIMdbRow row, in string value); */
  void AddWorkAddress2(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWorkAddress2(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWorkCity (in nsIMdbRow row, in string value); */
  void AddWorkCity(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWorkCity(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWorkState (in nsIMdbRow row, in string value); */
  void AddWorkState(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWorkState(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWorkZipCode (in nsIMdbRow row, in string value); */
  void AddWorkZipCode(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWorkZipCode(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWorkCountry (in nsIMdbRow row, in string value); */
  void AddWorkCountry(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWorkCountry(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addJobTitle (in nsIMdbRow row, in string value); */
  void AddJobTitle(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddJobTitle(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addDepartment (in nsIMdbRow row, in string value); */
  void AddDepartment(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddDepartment(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCompany (in nsIMdbRow row, in string value); */
  void AddCompany(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCompany(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addAimScreenName (in nsIMdbRow row, in string value); */
  void AddAimScreenName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddAimScreenName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addAnniversaryYear (in nsIMdbRow row, in string value); */
  void AddAnniversaryYear(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddAnniversaryYear(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addAnniversaryMonth (in nsIMdbRow row, in string value); */
  void AddAnniversaryMonth(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddAnniversaryMonth(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addAnniversaryDay (in nsIMdbRow row, in string value); */
  void AddAnniversaryDay(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddAnniversaryDay(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addSpouseName (in nsIMdbRow row, in string value); */
  void AddSpouseName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddSpouseName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addFamilyName (in nsIMdbRow row, in string value); */
  void AddFamilyName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddFamilyName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addDefaultAddress (in nsIMdbRow row, in string value); */
  void AddDefaultAddress(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddDefaultAddress(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCategory (in nsIMdbRow row, in string value); */
  void AddCategory(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCategory(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWebPage1 (in nsIMdbRow row, in string value); */
  void AddWebPage1(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWebPage1(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addWebPage2 (in nsIMdbRow row, in string value); */
  void AddWebPage2(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddWebPage2(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addBirthYear (in nsIMdbRow row, in string value); */
  void AddBirthYear(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddBirthYear(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addBirthMonth (in nsIMdbRow row, in string value); */
  void AddBirthMonth(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddBirthMonth(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addBirthDay (in nsIMdbRow row, in string value); */
  void AddBirthDay(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddBirthDay(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCustom1 (in nsIMdbRow row, in string value); */
  void AddCustom1(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCustom1(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCustom2 (in nsIMdbRow row, in string value); */
  void AddCustom2(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCustom2(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCustom3 (in nsIMdbRow row, in string value); */
  void AddCustom3(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCustom3(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addCustom4 (in nsIMdbRow row, in string value); */
  void AddCustom4(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddCustom4(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addNotes (in nsIMdbRow row, in string value); */
  void AddNotes(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddNotes(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addPreferMailFormat (in nsIMdbRow row, in unsigned long value); */
  void AddPreferMailFormat(nsIMdbRowD row, PRUint32 value){
    nsresult __result = inner.AddPreferMailFormat(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addPopularityIndex (in nsIMdbRow row, in unsigned long value); */
  void AddPopularityIndex(nsIMdbRowD row, PRUint32 value){
    nsresult __result = inner.AddPopularityIndex(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addAllowRemoteContent (in nsIMdbRow row, in boolean value); */
  void AddAllowRemoteContent(nsIMdbRowD row, PRBool value){
    nsresult __result = inner.AddAllowRemoteContent(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addListName (in nsIMdbRow row, in string value); */
  void AddListName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddListName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addListNickName (in nsIMdbRow row, in string value); */
  void AddListNickName(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddListNickName(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addListDescription (in nsIMdbRow row, in string value); */
  void AddListDescription(nsIMdbRowD row, char*value){
    nsresult __result = inner.AddListDescription(row ? cast(nsIMdbRow)row : null, value);
    CheckException(__result);
  }

  /* [noscript] void addListDirNode (in nsIMdbRow listRow); */
  void AddListDirNode(nsIMdbRowD listRow){
    nsresult __result = inner.AddListDirNode(listRow ? cast(nsIMdbRow)listRow : null);
    CheckException(__result);
  }

  /**
     * use for getting and setting generic string attributes
     * like _AimScreenName
     */
  /* void setCardValue (in nsIAbCard card, in string name, in wstring value, in boolean notify); */
  void SetCardValue(nsIAbCardD card, char*name, PRUnichar*value, PRBool notify){
    nsresult __result = inner.SetCardValue(card ? cast(nsIAbCard)card : null, name, value, notify);
    CheckException(__result);
  }

  /* wstring getCardValue (in nsIAbCard card, in string name); */
  PRUnichar* GetCardValue(nsIAbCardD card, char*name){
    PRUnichar* _retval;
    nsresult __result = inner.GetCardValue(card ? cast(nsIAbCard)card : null, name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getDeletedCardList (out unsigned long aCount, out nsISupportsArray aDeletedList); */
  void GetDeletedCardList(out PRUint32 aCount, out nsISupportsArrayD aDeletedList){
    nsISupportsArray _aDeletedList;
    nsresult __result = inner.GetDeletedCardList(&aCount, &_aDeletedList);
    CheckException(__result);
    aDeletedList = _aDeletedList ? new nsISupportsArrayD(_aDeletedList) : null;
  }

  /* void getDeletedCardCount (out unsigned long count); */
  void GetDeletedCardCount(out PRUint32 count){
    nsresult __result = inner.GetDeletedCardCount(&count);
    CheckException(__result);
  }

  /**
     * used for adding a string attributes to a row.
     * used during LDIF and addressbook import.
     *
     * @param aRow
     *        The row we're adding the column to
     * @param aLDIFAttributeName
     *        The column name  (examples: mozillaCategory, 
     *                                    mozilla_AimScreenName)
     * @param aColValue
     *        The column value (example: jabroni316)
     */
  /* [noscript] void addRowValue (in nsIMdbRow aRow, in ACString aLDIFAttributeName, in AString aColValue); */
  void AddRowValue(nsIMdbRowD aRow, char[] aLDIFAttributeName, wchar[] aColValue){
    scope auto _aLDIFAttributeName = new ACString(aLDIFAttributeName);
    scope auto _aColValue = new AString(aColValue);
    nsresult __result = inner.AddRowValue(aRow ? cast(nsIMdbRow)aRow : null, cast(nsACString*)_aLDIFAttributeName, cast(nsAString*)_aColValue);
    CheckException(__result);
  }

  /* void AddListCardColumnsToRow (in nsIAbCard aPCard, in nsIMdbRow aPListRow, in unsigned long aPos, out nsIAbCard aPNewCard, in boolean aInMailingList); */
  void AddListCardColumnsToRow(nsIAbCardD aPCard, nsIMdbRowD aPListRow, PRUint32 aPos, out nsIAbCardD aPNewCard, PRBool aInMailingList){
    nsIAbCard _aPNewCard;
    nsresult __result = inner.AddListCardColumnsToRow(aPCard ? cast(nsIAbCard)aPCard : null, aPListRow ? cast(nsIMdbRow)aPListRow : null, aPos, &_aPNewCard, aInMailingList);
    CheckException(__result);
    aPNewCard = _aPNewCard ? new nsIAbCardD(_aPNewCard) : null;
  }

  /* void InitCardFromRow (in nsIAbCard aNewCard, in nsIMdbRow aCardRow); */
  void InitCardFromRow(nsIAbCardD aNewCard, nsIMdbRowD aCardRow){
    nsresult __result = inner.InitCardFromRow(aNewCard ? cast(nsIAbCard)aNewCard : null, aCardRow ? cast(nsIMdbRow)aCardRow : null);
    CheckException(__result);
  }

  /* void SetListAddressTotal (in nsIMdbRow aListRow, in PRUint32 aTotal); */
  void SetListAddressTotal(nsIMdbRowD aListRow, PRUint32 aTotal){
    nsresult __result = inner.SetListAddressTotal(aListRow ? cast(nsIMdbRow)aListRow : null, aTotal);
    CheckException(__result);
  }

  /* nsIMdbRow FindRowByCard (in nsIAbCard aCard); */
  nsIMdbRowD  FindRowByCard(nsIAbCardD aCard){
    nsIMdbRow _retval;
    nsresult __result = inner.FindRowByCard(aCard ? cast(nsIAbCard)aCard : null, &_retval);
    CheckException(__result);
    return new nsIMdbRowD(_retval);
  }

private:
  nsIAddrDatabase inner;

}

