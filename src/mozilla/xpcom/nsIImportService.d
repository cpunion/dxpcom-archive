/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportService.idl
 */

module mozilla.xpcom.nsIImportService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIImportModule; /* forward declaration */

public import mozilla.xpcom.nsIImportMailboxDescriptor; /* forward declaration */

public import mozilla.xpcom.nsIImportABDescriptor; /* forward declaration */

public import mozilla.xpcom.nsIImportGeneric; /* forward declaration */

public import mozilla.xpcom.nsIImportFieldMap; /* forward declaration */


/* starting interface:    nsIImportService */
const char[] NS_IIMPORTSERVICE_IID_STR = "50d7ea80-1726-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTSERVICE_IID= 
  {0x50d7ea80, 0x1726, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportService : nsISupports {
  static const char[] IID_STR = NS_IIMPORTSERVICE_IID_STR;
  static const nsIID IID = NS_IIMPORTSERVICE_IID;

  /* void DiscoverModules (); */
  nsresult DiscoverModules();

  /* long GetModuleCount (in string filter); */
  nsresult GetModuleCount(char *filter, PRInt32 *_retval);

  /* void GetModuleInfo (in string filter, in long index, out wstring name, out wstring description); */
  nsresult GetModuleInfo(char *filter, PRInt32 index, PRUnichar **name, PRUnichar **description);

  /* wstring GetModuleName (in string filter, in long index); */
  nsresult GetModuleName(char *filter, PRInt32 index, PRUnichar **_retval);

  /* wstring GetModuleDescription (in string filter, in long index); */
  nsresult GetModuleDescription(char *filter, PRInt32 index, PRUnichar **_retval);

  /* nsIImportModule GetModule (in string filter, in long index); */
  nsresult GetModule(char *filter, PRInt32 index, nsIImportModule *_retval);

  /* nsIImportModule GetModuleWithCID (in nsCIDRef cid); */
  nsresult GetModuleWithCID(nsCID * cid, nsIImportModule *_retval);

  /* nsIImportFieldMap CreateNewFieldMap (); */
  nsresult CreateNewFieldMap(nsIImportFieldMap *_retval);

  /* nsIImportMailboxDescriptor CreateNewMailboxDescriptor (); */
  nsresult CreateNewMailboxDescriptor(nsIImportMailboxDescriptor *_retval);

  /* nsIImportABDescriptor CreateNewABDescriptor (); */
  nsresult CreateNewABDescriptor(nsIImportABDescriptor *_retval);

  /* nsIImportGeneric CreateNewGenericMail (); */
  nsresult CreateNewGenericMail(nsIImportGeneric *_retval);

  /* nsIImportGeneric CreateNewGenericAddressBooks (); */
  nsresult CreateNewGenericAddressBooks(nsIImportGeneric *_retval);

  /* [noscript] void SystemStringToUnicode (in string sysStr, in nsStringRef uniStr); */
  nsresult SystemStringToUnicode(char *sysStr, nsString * uniStr);

  /* [noscript] void SystemStringFromUnicode (in wstring uniStr, in nsCStringRef sysStr); */
  nsresult SystemStringFromUnicode(PRUnichar *uniStr, nsCString * sysStr);

}

