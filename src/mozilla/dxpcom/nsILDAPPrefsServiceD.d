/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPPrefsService.idl
 */

module mozilla.dxpcom.nsILDAPPrefsServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPPrefsService;


public import mozilla.dxpcom.nsILDAPPrefsServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsILDAPURL;
public import mozilla.dxpcom.nsILDAPURLD;
public import mozilla.xpcom.nsILDAPService;
public import mozilla.dxpcom.nsILDAPServiceD;
public import mozilla.xpcom.nsIPrefBranch;
public import mozilla.dxpcom.nsIPrefBranchD;


/* starting wrapper class:    nsILDAPPrefsService */
/**
 * this service implements migrating ldap prefs from 4.x format
 * to mozilla format.
 */
class nsILDAPPrefsServiceD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPPREFSSERVICE_IID;


  alias nsILDAPPrefsService InnerType;

  this(nsILDAPPrefsService intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPPrefsService opCast() {
    return inner;
  }

  void opAssign(nsILDAPPrefsService value) {
    inner = value;
  }

  /**
     * Convert 4.x ldap prefs to mozilla format
     * hostname, dn, scope, port are converted to uri
     * Also converts the autocompletion preference from 4.x format 
     * (ldap_2.servers.<server-name>.autocomplete.enabled)
     * to mozilla format (ldap_2.servers.directoryServer)
     */
  /* void migrate (); */
  void Migrate(){
    nsresult __result = inner.Migrate();
    CheckException(__result);
  }

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
  void GetServerList(nsIPrefBranchD aPrefBranch, out PRUint32 aCount, out char**aChildArray){
    nsresult __result = inner.GetServerList(aPrefBranch ? cast(nsIPrefBranch)aPrefBranch : null, &aCount, &aChildArray);
    CheckException(__result);
  }

private:
  nsILDAPPrefsService inner;

}

