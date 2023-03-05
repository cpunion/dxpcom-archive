/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDIFService.idl
 */

module mozilla.xpcom.nsIAbLDIFService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIAddrDatabase; /* forward declaration */


/* starting interface:    nsIAbLDIFService */
const char[] NS_IABLDIFSERVICE_IID_STR = "b594baf1-34d4-48ce-891c-66fc2e8bc59d";

const nsIID NS_IABLDIFSERVICE_IID= 
  {0xb594baf1, 0x34d4, 0x48ce, 
    [ 0x89, 0x1c, 0x66, 0xfc, 0x2e, 0x8b, 0xc5, 0x9d ]};

extern(Windows)
interface nsIAbLDIFService : nsISupports {
  static const char[] IID_STR = NS_IABLDIFSERVICE_IID_STR;
  static const nsIID IID = NS_IABLDIFSERVICE_IID;

  /**
   * Determine if a file is likely to be an LDIF file based on field
   * names that commonly appear in LDIF files.
   *
   * @param       aSrc   The file to examine
   *    
   * @return      PR_TRUE if the file appears to be of LDIF type,
   *              PR_FALSE otherwise
   */
  /* boolean isLDIFFile (in nsIFileSpec aSrc); */
  nsresult IsLDIFFile(nsIFileSpec aSrc, PRBool *_retval);

  /**
   * Imports a file into the specified address book.
   *
   * @param       aDb             The address book to import addresses into.
   *
   * @param       aSrc            The file to import addresses from.
   *
   * @param       aStoreLocAsHome Stores the address as a home rather than work
   *                              address.
   *
   * @param       aProgress       May be null, but if a pointer is supplied,
   *                              then it will be updated regularly with the
   *                              current position of reading from the file.
   *
   */
  /* void importLDIFFile (in nsIAddrDatabase aDb, in nsIFileSpec aSrc, in boolean aStoreLocAsHome, inout unsigned long aProgress); */
  nsresult ImportLDIFFile(nsIAddrDatabase aDb, nsIFileSpec aSrc, PRBool aStoreLocAsHome, PRUint32 *aProgress);

}

