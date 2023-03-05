/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirectory.idl
 */

module mozilla.xpcom.nsIAbDirectory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAbCard;
public import mozilla.xpcom.nsISupportsArray;


/* starting interface:    nsIAbDirectoryProperties */
const char[] NS_IABDIRECTORYPROPERTIES_IID_STR = "f94812de-1dd1-11b2-b0ab-9eb5e055f712";

const nsIID NS_IABDIRECTORYPROPERTIES_IID= 
  {0xf94812de, 0x1dd1, 0x11b2, 
    [ 0xb0, 0xab, 0x9e, 0xb5, 0xe0, 0x55, 0xf7, 0x12 ]};

extern(Windows)
interface nsIAbDirectoryProperties : nsISupports {
  static const char[] IID_STR = NS_IABDIRECTORYPROPERTIES_IID_STR;
  static const nsIID IID = NS_IABDIRECTORYPROPERTIES_IID;

  /* attribute AString description; */
  nsresult GetDescription(nsAString * aDescription);
  nsresult SetDescription(nsAString * aDescription);

  /* attribute string URI; */
  nsresult GetURI(char * *aURI);
  nsresult SetURI(char * aURI);

  /* attribute string prefName; */
  nsresult GetPrefName(char * *aPrefName);
  nsresult SetPrefName(char * aPrefName);

  /* attribute string fileName; */
  nsresult GetFileName(char * *aFileName);
  nsresult SetFileName(char * aFileName);

  /* attribute unsigned long dirType; */
  nsresult GetDirType(PRUint32 *aDirType);
  nsresult SetDirType(PRUint32 aDirType);

  /* attribute unsigned long maxHits; */
  nsresult GetMaxHits(PRUint32 *aMaxHits);
  nsresult SetMaxHits(PRUint32 aMaxHits);

  /* attribute string authDn; */
  nsresult GetAuthDn(char * *aAuthDn);
  nsresult SetAuthDn(char * aAuthDn);

  /* attribute unsigned long syncTimeStamp; */
  nsresult GetSyncTimeStamp(PRUint32 *aSyncTimeStamp);
  nsresult SetSyncTimeStamp(PRUint32 aSyncTimeStamp);

  /* attribute long categoryId; */
  nsresult GetCategoryId(PRInt32 *aCategoryId);
  nsresult SetCategoryId(PRInt32 aCategoryId);

  /* attribute long position; */
  nsresult GetPosition(PRInt32 *aPosition);
  nsresult SetPosition(PRInt32 aPosition);

}


/* starting interface:    nsIAbDirectory */
const char[] NS_IABDIRECTORY_IID_STR = "aa920c90-1dd1-11b2-96d3-aa81268adafc";

const nsIID NS_IABDIRECTORY_IID= 
  {0xaa920c90, 0x1dd1, 0x11b2, 
    [ 0x96, 0xd3, 0xaa, 0x81, 0x26, 0x8a, 0xda, 0xfc ]};

extern(Windows)
interface nsIAbDirectory : nsISupports {
  static const char[] IID_STR = NS_IABDIRECTORY_IID_STR;
  static const nsIID IID = NS_IABDIRECTORY_IID;

  enum { opRead = 1 };

  enum { opWrite = 2 };

  enum { opSearch = 4 };

  /* readonly attribute long operations; */
  nsresult GetOperations(PRInt32 *aOperations);

  /* attribute wstring dirName; */
  nsresult GetDirName(PRUnichar * *aDirName);
  nsresult SetDirName(PRUnichar * aDirName);

  /* attribute unsigned long lastModifiedDate; */
  nsresult GetLastModifiedDate(PRUint32 *aLastModifiedDate);
  nsresult SetLastModifiedDate(PRUint32 aLastModifiedDate);

  /* attribute PRBool isMailList; */
  nsresult GetIsMailList(PRBool *aIsMailList);
  nsresult SetIsMailList(PRBool aIsMailList);

  /* readonly attribute nsIAbDirectoryProperties directoryProperties; */
  nsresult GetDirectoryProperties(nsIAbDirectoryProperties  *aDirectoryProperties);

  /* readonly attribute nsISimpleEnumerator childNodes; */
  nsresult GetChildNodes(nsISimpleEnumerator  *aChildNodes);

  /* readonly attribute nsIEnumerator childCards; */
  nsresult GetChildCards(nsIEnumerator  *aChildCards);

  /* void modifyDirectory (in nsIAbDirectory directory, in nsIAbDirectoryProperties aProperties); */
  nsresult ModifyDirectory(nsIAbDirectory directory, nsIAbDirectoryProperties aProperties);

  /* void deleteDirectory (in nsIAbDirectory dierctory); */
  nsresult DeleteDirectory(nsIAbDirectory dierctory);

  /* void deleteCards (in nsISupportsArray cards); */
  nsresult DeleteCards(nsISupportsArray cards);

  /* boolean hasCard (in nsIAbCard cards); */
  nsresult HasCard(nsIAbCard cards, PRBool *_retval);

  /* boolean hasDirectory (in nsIAbDirectory dir); */
  nsresult HasDirectory(nsIAbDirectory dir, PRBool *_retval);

  /**
     * return value is the card that got added
     * we need to do this, as the card we pass in might
     * be an abstract nsIAbCard, and the caller might need
     * the "real" card (the mdbcard) to get / set 
     * non-standard card values
     */
  /* nsIAbCard addCard (in nsIAbCard card); */
  nsresult AddCard(nsIAbCard card, nsIAbCard *_retval);

  /* void dropCard (in nsIAbCard card, in boolean needToCopyCard); */
  nsresult DropCard(nsIAbCard card, PRBool needToCopyCard);

  /**
     * directory is local (example, mork based) or remote (example, LDAP)
     */
  /* readonly attribute boolean isRemote; */
  nsresult GetIsRemote(PRBool *aIsRemote);

  /**
     * directory is secure (as in LDAP over SSL)
     */
  /* readonly attribute boolean isSecure; */
  nsresult GetIsSecure(PRBool *aIsSecure);

  /**
     * directory should be searched when doing local autocomplete
     */
  /* readonly attribute boolean searchDuringLocalAutocomplete; */
  nsresult GetSearchDuringLocalAutocomplete(PRBool *aSearchDuringLocalAutocomplete);

  /* readonly attribute boolean supportsMailingLists; */
  nsresult GetSupportsMailingLists(PRBool *aSupportsMailingLists);

  /* attribute nsISupportsArray addressLists; */
  nsresult GetAddressLists(nsISupportsArray  *aAddressLists);
  nsresult SetAddressLists(nsISupportsArray  aAddressLists);

  /* void addMailList (in nsIAbDirectory list); */
  nsresult AddMailList(nsIAbDirectory list);

  /* void addMailListWithKey (in nsIAbDirectory list, out PRUint32 key); */
  nsresult AddMailListWithKey(nsIAbDirectory list, PRUint32 *key);

  /* attribute wstring listNickName; */
  nsresult GetListNickName(PRUnichar * *aListNickName);
  nsresult SetListNickName(PRUnichar * aListNickName);

  /* attribute wstring description; */
  nsresult GetDescription(PRUnichar * *aDescription);
  nsresult SetDescription(PRUnichar * aDescription);

  /**
     * Edits an existing mailing list (specified as listCard)
	 * into the directory specified by the uri
	 * XXX javadoc me
     */
  /* void editMailListToDatabase (in string uri, in nsIAbCard listCard); */
  nsresult EditMailListToDatabase(char *uri, nsIAbCard listCard);

  /* void copyMailList (in nsIAbDirectory srcList); */
  nsresult CopyMailList(nsIAbDirectory srcList);

  /* void createNewDirectory (in nsIAbDirectoryProperties aProperties); */
  nsresult CreateNewDirectory(nsIAbDirectoryProperties aProperties);

  /* void createDirectoryByURI (in wstring displayName, in string uri, in boolean migrating); */
  nsresult CreateDirectoryByURI(PRUnichar *displayName, char *uri, PRBool migrating);

  /* wstring getValueForCard (in nsIAbCard card, in string name); */
  nsresult GetValueForCard(nsIAbCard card, char *name, PRUnichar **_retval);

  /* void setValueForCard (in nsIAbCard card, in string name, in wstring value); */
  nsresult SetValueForCard(nsIAbCard card, char *name, PRUnichar *value);

  /* attribute ACString dirPrefId; */
  nsresult GetDirPrefId(nsACString * aDirPrefId);
  nsresult SetDirPrefId(nsACString * aDirPrefId);

}

