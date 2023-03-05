/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddressBook.idl
 */

module mozilla.dxpcom.nsIAddressBookD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAddressBook;


public import mozilla.dxpcom.nsIAddressBookD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFCompositeDataSource;
public import mozilla.dxpcom.nsIRDFCompositeDataSourceD;
public import mozilla.xpcom.nsIAddrDatabase;
public import mozilla.dxpcom.nsIAddrDatabaseD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIAbDirectory;

public import mozilla.dxpcom.nsIAbDirectoryD;

public import mozilla.xpcom.nsIAbCard;

public import mozilla.dxpcom.nsIAbCardD;


/* starting wrapper class:    nsIAddressBook */
class nsIAddressBookD : public nsISupportsD {

  static const nsIID IID = NS_IADDRESSBOOK_IID;


  alias nsIAddressBook InnerType;

  this(nsIAddressBook intr){
    super(intr);
    this.inner = intr;
  }

  nsIAddressBook opCast() {
    return inner;
  }

  void opAssign(nsIAddressBook value) {
    inner = value;
  }

  /* void newAddressBook (in nsIAbDirectoryProperties aProperties); */
  void NewAddressBook(nsIAbDirectoryPropertiesD aProperties){
    nsresult __result = inner.NewAddressBook(aProperties ? cast(nsIAbDirectoryProperties)aProperties : null);
    CheckException(__result);
  }

  /* void modifyAddressBook (in nsIRDFDataSource aDS, in nsIAbDirectory aParentDir, in nsIAbDirectory aDirectory, in nsIAbDirectoryProperties aProperties); */
  void ModifyAddressBook(nsIRDFDataSourceD aDS, nsIAbDirectoryD aParentDir, nsIAbDirectoryD aDirectory, nsIAbDirectoryPropertiesD aProperties){
    nsresult __result = inner.ModifyAddressBook(aDS ? cast(nsIRDFDataSource)aDS : null, aParentDir ? cast(nsIAbDirectory)aParentDir : null, aDirectory ? cast(nsIAbDirectory)aDirectory : null, aProperties ? cast(nsIAbDirectoryProperties)aProperties : null);
    CheckException(__result);
  }

  /* void deleteAddressBooks (in nsIRDFDataSource aDS, in nsISupportsArray aParentDir, in nsISupportsArray aResourceArray); */
  void DeleteAddressBooks(nsIRDFDataSourceD aDS, nsISupportsArrayD aParentDir, nsISupportsArrayD aResourceArray){
    nsresult __result = inner.DeleteAddressBooks(aDS ? cast(nsIRDFDataSource)aDS : null, aParentDir ? cast(nsISupportsArray)aParentDir : null, aResourceArray ? cast(nsISupportsArray)aResourceArray : null);
    CheckException(__result);
  }

  /* void exportAddressBook (in nsIDOMWindow aParentWin, in nsIAbDirectory aDirectory); */
  void ExportAddressBook(nsIDOMWindowD aParentWin, nsIAbDirectoryD aDirectory){
    nsresult __result = inner.ExportAddressBook(aParentWin ? cast(nsIDOMWindow)aParentWin : null, aDirectory ? cast(nsIAbDirectory)aDirectory : null);
    CheckException(__result);
  }

  /**
   * Migrates a 4x ldif address book to our format.
   *
   * @param       aFileSpec       The source file to import
   *    
   * @param       aMigrating      If PR_TRUE then the preferences are not
   *                              created for the address book. If PR_FALSE,
   *                              then the preferences will be created for the
   *                              address book.
   *    
   * @param       aStoreLocAsHome If PR_TRUE then the location will be stored
   *                              as the home address, otherwise it will be
   *                              stored as the company address.
   *    
   */
  /* void migrate4xAb (in nsIFileSpec aFileSpec, in boolean aMigrating, in boolean aStoreLocAsHome); */
  void Migrate4xAb(nsIFileSpecD aFileSpec, PRBool aMigrating, PRBool aStoreLocAsHome){
    nsresult __result = inner.Migrate4xAb(aFileSpec ? cast(nsIFileSpec)aFileSpec : null, aMigrating, aStoreLocAsHome);
    CheckException(__result);
  }

  /**
   * Converts a Netscape NA2 file to an LDIF file. Will only work on Commercial
   * builds.
   *
   * @param       srcFileSpec     The source file to convert
   *
   * @param       dstFileSpec     The destination file for the conversion
   *
   */
  /* void convertNA2toLDIF (in nsIFileSpec srcFileSpec, in nsIFileSpec dstFileSpec); */
  void ConvertNA2toLDIF(nsIFileSpecD srcFileSpec, nsIFileSpecD dstFileSpec){
    nsresult __result = inner.ConvertNA2toLDIF(srcFileSpec ? cast(nsIFileSpec)srcFileSpec : null, dstFileSpec ? cast(nsIFileSpec)dstFileSpec : null);
    CheckException(__result);
  }

  /* nsIAddrDatabase getAbDatabaseFromURI (in string URI); */
  nsIAddrDatabaseD  GetAbDatabaseFromURI(char*URI){
    nsIAddrDatabase _retval;
    nsresult __result = inner.GetAbDatabaseFromURI(URI, &_retval);
    CheckException(__result);
    return new nsIAddrDatabaseD(_retval);
  }

  /* boolean mailListNameExists (in wstring name); */
  PRBool MailListNameExists(PRUnichar*name){
    PRBool _retval;
    nsresult __result = inner.MailListNameExists(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIAbCard escapedVCardToAbCard (in string escapedVCardStr); */
  nsIAbCardD  EscapedVCardToAbCard(char*escapedVCardStr){
    nsIAbCard _retval;
    nsresult __result = inner.EscapedVCardToAbCard(escapedVCardStr, &_retval);
    CheckException(__result);
    return new nsIAbCardD(_retval);
  }

  /* string abCardToEscapedVCard (in nsIAbCard aCard); */
  char* AbCardToEscapedVCard(nsIAbCardD aCard){
    char* _retval;
    nsresult __result = inner.AbCardToEscapedVCard(aCard ? cast(nsIAbCard)aCard : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void convert4xVCardPrefs (in string prefRoot, out string escapedVCardStr); */
  void Convert4xVCardPrefs(char*prefRoot, out char*escapedVCardStr){
    nsresult __result = inner.Convert4xVCardPrefs(prefRoot, &escapedVCardStr);
    CheckException(__result);
  }

private:
  nsIAddressBook inner;

}

