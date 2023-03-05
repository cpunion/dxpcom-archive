/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddrDatabase.idl
 */

module mozilla.xpcom.nsIAddrDatabase;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAddrDBAnnouncer;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.xpcom.nsIAbDirectory;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsAddrDBCommitType */
const char[] NS_ADDRDBCOMMITTYPE_IID_STR = "ca536e0e-1dd1-11b2-951a-e02b86e4f60e";

const nsIID NS_ADDRDBCOMMITTYPE_IID= 
  {0xca536e0e, 0x1dd1, 0x11b2, 
    [ 0x95, 0x1a, 0xe0, 0x2b, 0x86, 0xe4, 0xf6, 0x0e ]};

extern(Windows)
interface nsAddrDBCommitType {
  static const char[] IID_STR = NS_ADDRDBCOMMITTYPE_IID_STR;
  static const nsIID IID = NS_ADDRDBCOMMITTYPE_IID;

  enum { kSmallCommit = 0 };

  enum { kLargeCommit = 1 };

  enum { kSessionCommit = 2 };

  enum { kCompressCommit = 3 };

}


/* starting interface:    nsIAddrDatabase */
const char[] NS_IADDRDATABASE_IID_STR = "e59abe11-1e97-46ec-a1c4-500971bbc4b4";

const nsIID NS_IADDRDATABASE_IID= 
  {0xe59abe11, 0x1e97, 0x46ec, 
    [ 0xa1, 0xc4, 0x50, 0x09, 0x71, 0xbb, 0xc4, 0xb4 ]};

extern(Windows)
interface nsIAddrDatabase : nsIAddrDBAnnouncer {
  static const char[] IID_STR = NS_IADDRDATABASE_IID_STR;
  static const nsIID IID = NS_IADDRDATABASE_IID;

  /* [noscript] attribute nsFileSpec dbPath; */
  nsresult GetDbPath(nsFileSpec * *aDbPath);
  nsresult SetDbPath(nsFileSpec * aDbPath);

  /* nsIAddrDatabase open (in nsIFile dbFile, in boolean create, in boolean upgrading); */
  nsresult Open(nsIFile dbFile, PRBool create, PRBool upgrading, nsIAddrDatabase *_retval);

  /* void close (in boolean forceCommit); */
  nsresult Close(PRBool forceCommit);

  /* [noscript] void openMDB (in nsFileSpec dbName, in boolean create); */
  nsresult OpenMDB(nsFileSpec * dbName, PRBool create);

  /* void closeMDB (in boolean commit); */
  nsresult CloseMDB(PRBool commit);

  /* void commit (in unsigned long commitType); */
  nsresult Commit(PRUint32 commitType);

  /* void forceClosed (); */
  nsresult ForceClosed();

  /* void createNewCardAndAddToDB (in nsIAbCard newCard, in boolean aNotify); */
  nsresult CreateNewCardAndAddToDB(nsIAbCard newCard, PRBool aNotify);

  /* void createNewCardAndAddToDBWithKey (in nsIAbCard newCard, in boolean aNotify, out unsigned long key); */
  nsresult CreateNewCardAndAddToDBWithKey(nsIAbCard newCard, PRBool aNotify, PRUint32 *key);

  /* void createNewListCardAndAddToDB (in nsIAbDirectory list, in unsigned long listRowID, in nsIAbCard newCard, in boolean aNotify); */
  nsresult CreateNewListCardAndAddToDB(nsIAbDirectory list, PRUint32 listRowID, nsIAbCard newCard, PRBool aNotify);

  /* void createMailListAndAddToDB (in nsIAbDirectory newList, in boolean aNotify); */
  nsresult CreateMailListAndAddToDB(nsIAbDirectory newList, PRBool aNotify);

  /* void createMailListAndAddToDBWithKey (in nsIAbDirectory newList, in boolean aNotify, out PRUint32 key); */
  nsresult CreateMailListAndAddToDBWithKey(nsIAbDirectory newList, PRBool aNotify, PRUint32 *key);

  /* nsIEnumerator enumerateCards (in nsIAbDirectory directory); */
  nsresult EnumerateCards(nsIAbDirectory directory, nsIEnumerator *_retval);

  /* nsIEnumerator enumerateListAddresses (in nsIAbDirectory directory); */
  nsresult EnumerateListAddresses(nsIAbDirectory directory, nsIEnumerator *_retval);

  /* void getMailingListsFromDB (in nsIAbDirectory parentDir); */
  nsresult GetMailingListsFromDB(nsIAbDirectory parentDir);

  /* void deleteCard (in nsIAbCard card, in boolean aNotify); */
  nsresult DeleteCard(nsIAbCard card, PRBool aNotify);

  /* void editCard (in nsIAbCard card, in boolean aNotify); */
  nsresult EditCard(nsIAbCard card, PRBool aNotify);

  /* boolean containsCard (in nsIAbCard card); */
  nsresult ContainsCard(nsIAbCard card, PRBool *_retval);

  /* void deleteMailList (in nsIAbDirectory mailList, in boolean aNotify); */
  nsresult DeleteMailList(nsIAbDirectory mailList, PRBool aNotify);

  /* void editMailList (in nsIAbDirectory mailList, in nsIAbCard listCard, in boolean aNotify); */
  nsresult EditMailList(nsIAbDirectory mailList, nsIAbCard listCard, PRBool aNotify);

  /* boolean containsMailList (in nsIAbDirectory mailList); */
  nsresult ContainsMailList(nsIAbDirectory mailList, PRBool *_retval);

  /* void deleteCardFromMailList (in nsIAbDirectory mailList, in nsIAbCard card, in boolean aNotify); */
  nsresult DeleteCardFromMailList(nsIAbDirectory mailList, nsIAbCard card, PRBool aNotify);

  /* readonly attribute wstring directoryName; */
  nsresult GetDirectoryName(PRUnichar * *aDirectoryName);

  /**
	 * aUTF8Value needs to be in UTF-8
	 */
  /* nsIAbCard getCardFromAttribute (in nsIAbDirectory directory, in string aName, in string aUTF8Value, in boolean caseInsensitive); */
  nsresult GetCardFromAttribute(nsIAbDirectory directory, char *aName, char *aUTF8Value, PRBool caseInsensitive, nsIAbCard *_retval);

  /* PRBool findMailListbyUnicodeName (in wstring listName); */
  nsresult FindMailListbyUnicodeName(PRUnichar *listName, PRBool *_retval);

  /* void getCardCount (out PRUint32 count); */
  nsresult GetCardCount(PRUint32 *count);

  /* [noscript] readonly attribute nsIMdbRow newRow; */
  nsresult GetNewRow(nsIMdbRow  *aNewRow);

  /* [noscript] readonly attribute nsIMdbRow newListRow; */
  nsresult GetNewListRow(nsIMdbRow  *aNewListRow);

  /* [noscript] void addCardRowToDB (in nsIMdbRow newRow); */
  nsresult AddCardRowToDB(nsIMdbRow newRow);

  /* [noscript] void addLdifListMember (in nsIMdbRow row, in string value); */
  nsresult AddLdifListMember(nsIMdbRow row, char *value);

  /* [noscript] void addFirstName (in nsIMdbRow row, in string value); */
  nsresult AddFirstName(nsIMdbRow row, char *value);

  /* [noscript] void addLastName (in nsIMdbRow row, in string value); */
  nsresult AddLastName(nsIMdbRow row, char *value);

  /* [noscript] void addPhoneticFirstName (in nsIMdbRow row, in string value); */
  nsresult AddPhoneticFirstName(nsIMdbRow row, char *value);

  /* [noscript] void addPhoneticLastName (in nsIMdbRow row, in string value); */
  nsresult AddPhoneticLastName(nsIMdbRow row, char *value);

  /* [noscript] void addDisplayName (in nsIMdbRow row, in string value); */
  nsresult AddDisplayName(nsIMdbRow row, char *value);

  /* [noscript] void addNickName (in nsIMdbRow row, in string value); */
  nsresult AddNickName(nsIMdbRow row, char *value);

  /* [noscript] void addPrimaryEmail (in nsIMdbRow row, in string value); */
  nsresult AddPrimaryEmail(nsIMdbRow row, char *value);

  /* [noscript] void add2ndEmail (in nsIMdbRow row, in string value); */
  nsresult Add2ndEmail(nsIMdbRow row, char *value);

  /* [noscript] void addDefaultEmail (in nsIMdbRow row, in string value); */
  nsresult AddDefaultEmail(nsIMdbRow row, char *value);

  /* [noscript] void addCardType (in nsIMdbRow row, in string value); */
  nsresult AddCardType(nsIMdbRow row, char *value);

  /* [noscript] void addWorkPhone (in nsIMdbRow row, in string value); */
  nsresult AddWorkPhone(nsIMdbRow row, char *value);

  /* [noscript] void addHomePhone (in nsIMdbRow row, in string value); */
  nsresult AddHomePhone(nsIMdbRow row, char *value);

  /* [noscript] void addFaxNumber (in nsIMdbRow row, in string value); */
  nsresult AddFaxNumber(nsIMdbRow row, char *value);

  /* [noscript] void addPagerNumber (in nsIMdbRow row, in string value); */
  nsresult AddPagerNumber(nsIMdbRow row, char *value);

  /* [noscript] void addCellularNumber (in nsIMdbRow row, in string value); */
  nsresult AddCellularNumber(nsIMdbRow row, char *value);

  /* [noscript] void addWorkPhoneType (in nsIMdbRow row, in string value); */
  nsresult AddWorkPhoneType(nsIMdbRow row, char *value);

  /* [noscript] void addHomePhoneType (in nsIMdbRow row, in string value); */
  nsresult AddHomePhoneType(nsIMdbRow row, char *value);

  /* [noscript] void addFaxNumberType (in nsIMdbRow row, in string value); */
  nsresult AddFaxNumberType(nsIMdbRow row, char *value);

  /* [noscript] void addPagerNumberType (in nsIMdbRow row, in string value); */
  nsresult AddPagerNumberType(nsIMdbRow row, char *value);

  /* [noscript] void addCellularNumberType (in nsIMdbRow row, in string value); */
  nsresult AddCellularNumberType(nsIMdbRow row, char *value);

  /* [noscript] void addHomeAddress (in nsIMdbRow row, in string value); */
  nsresult AddHomeAddress(nsIMdbRow row, char *value);

  /* [noscript] void addHomeAddress2 (in nsIMdbRow row, in string value); */
  nsresult AddHomeAddress2(nsIMdbRow row, char *value);

  /* [noscript] void addHomeCity (in nsIMdbRow row, in string value); */
  nsresult AddHomeCity(nsIMdbRow row, char *value);

  /* [noscript] void addHomeState (in nsIMdbRow row, in string value); */
  nsresult AddHomeState(nsIMdbRow row, char *value);

  /* [noscript] void addHomeZipCode (in nsIMdbRow row, in string value); */
  nsresult AddHomeZipCode(nsIMdbRow row, char *value);

  /* [noscript] void addHomeCountry (in nsIMdbRow row, in string value); */
  nsresult AddHomeCountry(nsIMdbRow row, char *value);

  /* [noscript] void addWorkAddress (in nsIMdbRow row, in string value); */
  nsresult AddWorkAddress(nsIMdbRow row, char *value);

  /* [noscript] void addWorkAddress2 (in nsIMdbRow row, in string value); */
  nsresult AddWorkAddress2(nsIMdbRow row, char *value);

  /* [noscript] void addWorkCity (in nsIMdbRow row, in string value); */
  nsresult AddWorkCity(nsIMdbRow row, char *value);

  /* [noscript] void addWorkState (in nsIMdbRow row, in string value); */
  nsresult AddWorkState(nsIMdbRow row, char *value);

  /* [noscript] void addWorkZipCode (in nsIMdbRow row, in string value); */
  nsresult AddWorkZipCode(nsIMdbRow row, char *value);

  /* [noscript] void addWorkCountry (in nsIMdbRow row, in string value); */
  nsresult AddWorkCountry(nsIMdbRow row, char *value);

  /* [noscript] void addJobTitle (in nsIMdbRow row, in string value); */
  nsresult AddJobTitle(nsIMdbRow row, char *value);

  /* [noscript] void addDepartment (in nsIMdbRow row, in string value); */
  nsresult AddDepartment(nsIMdbRow row, char *value);

  /* [noscript] void addCompany (in nsIMdbRow row, in string value); */
  nsresult AddCompany(nsIMdbRow row, char *value);

  /* [noscript] void addAimScreenName (in nsIMdbRow row, in string value); */
  nsresult AddAimScreenName(nsIMdbRow row, char *value);

  /* [noscript] void addAnniversaryYear (in nsIMdbRow row, in string value); */
  nsresult AddAnniversaryYear(nsIMdbRow row, char *value);

  /* [noscript] void addAnniversaryMonth (in nsIMdbRow row, in string value); */
  nsresult AddAnniversaryMonth(nsIMdbRow row, char *value);

  /* [noscript] void addAnniversaryDay (in nsIMdbRow row, in string value); */
  nsresult AddAnniversaryDay(nsIMdbRow row, char *value);

  /* [noscript] void addSpouseName (in nsIMdbRow row, in string value); */
  nsresult AddSpouseName(nsIMdbRow row, char *value);

  /* [noscript] void addFamilyName (in nsIMdbRow row, in string value); */
  nsresult AddFamilyName(nsIMdbRow row, char *value);

  /* [noscript] void addDefaultAddress (in nsIMdbRow row, in string value); */
  nsresult AddDefaultAddress(nsIMdbRow row, char *value);

  /* [noscript] void addCategory (in nsIMdbRow row, in string value); */
  nsresult AddCategory(nsIMdbRow row, char *value);

  /* [noscript] void addWebPage1 (in nsIMdbRow row, in string value); */
  nsresult AddWebPage1(nsIMdbRow row, char *value);

  /* [noscript] void addWebPage2 (in nsIMdbRow row, in string value); */
  nsresult AddWebPage2(nsIMdbRow row, char *value);

  /* [noscript] void addBirthYear (in nsIMdbRow row, in string value); */
  nsresult AddBirthYear(nsIMdbRow row, char *value);

  /* [noscript] void addBirthMonth (in nsIMdbRow row, in string value); */
  nsresult AddBirthMonth(nsIMdbRow row, char *value);

  /* [noscript] void addBirthDay (in nsIMdbRow row, in string value); */
  nsresult AddBirthDay(nsIMdbRow row, char *value);

  /* [noscript] void addCustom1 (in nsIMdbRow row, in string value); */
  nsresult AddCustom1(nsIMdbRow row, char *value);

  /* [noscript] void addCustom2 (in nsIMdbRow row, in string value); */
  nsresult AddCustom2(nsIMdbRow row, char *value);

  /* [noscript] void addCustom3 (in nsIMdbRow row, in string value); */
  nsresult AddCustom3(nsIMdbRow row, char *value);

  /* [noscript] void addCustom4 (in nsIMdbRow row, in string value); */
  nsresult AddCustom4(nsIMdbRow row, char *value);

  /* [noscript] void addNotes (in nsIMdbRow row, in string value); */
  nsresult AddNotes(nsIMdbRow row, char *value);

  /* [noscript] void addPreferMailFormat (in nsIMdbRow row, in unsigned long value); */
  nsresult AddPreferMailFormat(nsIMdbRow row, PRUint32 value);

  /* [noscript] void addPopularityIndex (in nsIMdbRow row, in unsigned long value); */
  nsresult AddPopularityIndex(nsIMdbRow row, PRUint32 value);

  /* [noscript] void addAllowRemoteContent (in nsIMdbRow row, in boolean value); */
  nsresult AddAllowRemoteContent(nsIMdbRow row, PRBool value);

  /* [noscript] void addListName (in nsIMdbRow row, in string value); */
  nsresult AddListName(nsIMdbRow row, char *value);

  /* [noscript] void addListNickName (in nsIMdbRow row, in string value); */
  nsresult AddListNickName(nsIMdbRow row, char *value);

  /* [noscript] void addListDescription (in nsIMdbRow row, in string value); */
  nsresult AddListDescription(nsIMdbRow row, char *value);

  /* [noscript] void addListDirNode (in nsIMdbRow listRow); */
  nsresult AddListDirNode(nsIMdbRow listRow);

  /**
     * use for getting and setting generic string attributes
     * like _AimScreenName
     */
  /* void setCardValue (in nsIAbCard card, in string name, in wstring value, in boolean notify); */
  nsresult SetCardValue(nsIAbCard card, char *name, PRUnichar *value, PRBool notify);

  /* wstring getCardValue (in nsIAbCard card, in string name); */
  nsresult GetCardValue(nsIAbCard card, char *name, PRUnichar **_retval);

  /* void getDeletedCardList (out unsigned long aCount, out nsISupportsArray aDeletedList); */
  nsresult GetDeletedCardList(PRUint32 *aCount, nsISupportsArray *aDeletedList);

  /* void getDeletedCardCount (out unsigned long count); */
  nsresult GetDeletedCardCount(PRUint32 *count);

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
  nsresult AddRowValue(nsIMdbRow aRow, nsACString * aLDIFAttributeName, nsAString * aColValue);

  /* void AddListCardColumnsToRow (in nsIAbCard aPCard, in nsIMdbRow aPListRow, in unsigned long aPos, out nsIAbCard aPNewCard, in boolean aInMailingList); */
  nsresult AddListCardColumnsToRow(nsIAbCard aPCard, nsIMdbRow aPListRow, PRUint32 aPos, nsIAbCard *aPNewCard, PRBool aInMailingList);

  /* void InitCardFromRow (in nsIAbCard aNewCard, in nsIMdbRow aCardRow); */
  nsresult InitCardFromRow(nsIAbCard aNewCard, nsIMdbRow aCardRow);

  /* void SetListAddressTotal (in nsIMdbRow aListRow, in PRUint32 aTotal); */
  nsresult SetListAddressTotal(nsIMdbRow aListRow, PRUint32 aTotal);

  /* nsIMdbRow FindRowByCard (in nsIAbCard aCard); */
  nsresult FindRowByCard(nsIAbCard aCard, nsIMdbRow *_retval);

}

