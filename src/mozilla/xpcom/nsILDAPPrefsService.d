/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPPrefsService.idl
 */

module mozilla.xpcom.nsILDAPPrefsService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsILDAPURL;
public import mozilla.xpcom.nsILDAPService;
public import mozilla.xpcom.nsIPrefBranch;


/* starting interface:    nsILDAPPrefsService */
const char[] NS_ILDAPPREFSSERVICE_IID_STR = "5a4911e0-44cd-11d5-9074-0010a4b26cda";

const nsIID NS_ILDAPPREFSSERVICE_IID= 
  {0x5a4911e0, 0x44cd, 0x11d5, 
    [ 0x90, 0x74, 0x00, 0x10, 0xa4, 0xb2, 0x6c, 0xda ]};

/**
 * this service implements migrating ldap prefs from 4.x format
 * to mozilla format.
 */
extern(Windows)
interface nsILDAPPrefsService : nsISupports {
  static const char[] IID_STR = NS_ILDAPPREFSSERVICE_IID_STR;
  static const nsIID IID = NS_ILDAPPREFSSERVICE_IID;

  /**
     * Convert 4.x ldap prefs to mozilla format
     * hostname, dn, scope, port are converted to uri
     * Also converts the autocompletion preference from 4.x format 
     * (ldap_2.servers.<server-name>.autocomplete.enabled)
     * to mozilla format (ldap_2.servers.directoryServer)
     */
  /* void migrate (); */
  nsresult Migrate();

  /**
      * This will create an array with entries 
      * "ldap_2.servers.<server-name>"
      * Each entry in the array is unique. 
      * 
      * @param aPrefBranch  prefBranch object.
      * @param aCount       Receives the number of elements in the array.
      * @param aChildArray  Receives the array with "ldap_2.servers.<server-name>".
      * 
      * @return  NS_OK The preference list was successfully retrieved.
      * @return  Other The preference(s) do not exist or an error occurred.
      */
  /* void getServerList (in nsIPrefBranch aPrefBranch, out unsigned long aCount, [array, size_is (aCount), retval] out string aChildArray); */
  nsresult GetServerList(nsIPrefBranch aPrefBranch, PRUint32 *aCount, char ***aChildArray);

}

