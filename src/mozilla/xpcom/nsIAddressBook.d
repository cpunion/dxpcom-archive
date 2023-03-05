/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAddressBook.idl
 */

module mozilla.xpcom.nsIAddressBook;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFCompositeDataSource;
public import mozilla.xpcom.nsIAddrDatabase;
public import mozilla.xpcom.nsISupportsArray;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIAbDirectory; /* forward declaration */

public import mozilla.xpcom.nsIAbCard; /* forward declaration */


/* starting interface:    nsIAddressBook */
const char[] NS_IADDRESSBOOK_IID_STR = "a5996dae-92a0-4caf-8e3e-3cfa5ed5b555";

const nsIID NS_IADDRESSBOOK_IID= 
  {0xa5996dae, 0x92a0, 0x4caf, 
    [ 0x8e, 0x3e, 0x3c, 0xfa, 0x5e, 0xd5, 0xb5, 0x55 ]};

extern(Windows)
interface nsIAddressBook : nsISupports {
  static const char[] IID_STR = NS_IADDRESSBOOK_IID_STR;
  static const nsIID IID = NS_IADDRESSBOOK_IID;

  /* void newAddressBook (in nsIAbDirectoryProperties aProperties); */
  nsresult NewAddressBook(nsIAbDirectoryProperties aProperties);

  /* void modifyAddressBook (in nsIRDFDataSource aDS, in nsIAbDirectory aParentDir, in nsIAbDirectory aDirectory, in nsIAbDirectoryProperties aProperties); */
  nsresult ModifyAddressBook(nsIRDFDataSource aDS, nsIAbDirectory aParentDir, nsIAbDirectory aDirectory, nsIAbDirectoryProperties aProperties);

  /* void deleteAddressBooks (in nsIRDFDataSource aDS, in nsISupportsArray aParentDir, in nsISupportsArray aResourceArray); */
  nsresult DeleteAddressBooks(nsIRDFDataSource aDS, nsISupportsArray aParentDir, nsISupportsArray aResourceArray);

  /* void exportAddressBook (in nsIDOMWindow aParentWin, in nsIAbDirectory aDirectory); */
  nsresult ExportAddressBook(nsIDOMWindow aParentWin, nsIAbDirectory aDirectory);

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
  nsresult Migrate4xAb(nsIFileSpec aFileSpec, PRBool aMigrating, PRBool aStoreLocAsHome);

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
  nsresult ConvertNA2toLDIF(nsIFileSpec srcFileSpec, nsIFileSpec dstFileSpec);

  /* nsIAddrDatabase getAbDatabaseFromURI (in string URI); */
  nsresult GetAbDatabaseFromURI(char *URI, nsIAddrDatabase *_retval);

  /* boolean mailListNameExists (in wstring name); */
  nsresult MailListNameExists(PRUnichar *name, PRBool *_retval);

  /* nsIAbCard escapedVCardToAbCard (in string escapedVCardStr); */
  nsresult EscapedVCardToAbCard(char *escapedVCardStr, nsIAbCard *_retval);

  /* string abCardToEscapedVCard (in nsIAbCard aCard); */
  nsresult AbCardToEscapedVCard(nsIAbCard aCard, char **_retval);

  /* void convert4xVCardPrefs (in string prefRoot, out string escapedVCardStr); */
  nsresult Convert4xVCardPrefs(char *prefRoot, char **escapedVCardStr);

}

