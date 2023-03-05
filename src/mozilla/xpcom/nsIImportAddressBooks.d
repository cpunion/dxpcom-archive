/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportAddressBooks.idl
 */

module mozilla.xpcom.nsIImportAddressBooks;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIImportABDescriptor; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIAddrDatabase; /* forward declaration */

public import mozilla.xpcom.nsIImportFieldMap; /* forward declaration */


/* starting interface:    nsIImportAddressBooks */
const char[] NS_IIMPORTADDRESSBOOKS_IID_STR = "3fe29be0-3539-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTADDRESSBOOKS_IID= 
  {0x3fe29be0, 0x3539, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportAddressBooks : nsISupports {
  static const char[] IID_STR = NS_IIMPORTADDRESSBOOKS_IID_STR;
  static const nsIID IID = NS_IIMPORTADDRESSBOOKS_IID;

  /* PRBool GetSupportsMultiple (); */
  nsresult GetSupportsMultiple(PRBool *_retval);

  /* PRBool GetAutoFind (out wstring description); */
  nsresult GetAutoFind(PRUnichar **description, PRBool *_retval);

  /* PRBool GetNeedsFieldMap (in nsIFileSpec location); */
  nsresult GetNeedsFieldMap(nsIFileSpec location, PRBool *_retval);

  /* void GetDefaultLocation (out nsIFileSpec location, out boolean found, out boolean userVerify); */
  nsresult GetDefaultLocation(nsIFileSpec *location, PRBool *found, PRBool *userVerify);

  /* nsISupportsArray FindAddressBooks (in nsIFileSpec location); */
  nsresult FindAddressBooks(nsIFileSpec location, nsISupportsArray *_retval);

  /* void InitFieldMap (in nsIFileSpec location, in nsIImportFieldMap fieldMap); */
  nsresult InitFieldMap(nsIFileSpec location, nsIImportFieldMap fieldMap);

  /* void ImportAddressBook (in nsIImportABDescriptor source, in nsIAddrDatabase destination, in nsIImportFieldMap fieldMap, in boolean isAddrLocHome, out wstring errorLog, out wstring successLog, out boolean fatalError); */
  nsresult ImportAddressBook(nsIImportABDescriptor source, nsIAddrDatabase destination, nsIImportFieldMap fieldMap, PRBool isAddrLocHome, PRUnichar **errorLog, PRUnichar **successLog, PRBool *fatalError);

  /* unsigned long GetImportProgress (); */
  nsresult GetImportProgress(PRUint32 *_retval);

  /* void SetSampleLocation (in nsIFileSpec location); */
  nsresult SetSampleLocation(nsIFileSpec location);

  /* wstring GetSampleData (in long recordNumber, out boolean recordExists); */
  nsresult GetSampleData(PRInt32 recordNumber, PRBool *recordExists, PRUnichar **_retval);

}

