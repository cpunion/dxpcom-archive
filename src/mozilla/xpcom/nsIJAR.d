/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJAR.idl
 */

module mozilla.xpcom.nsIJAR;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPrincipal; /* forward declaration */


/* starting interface:    nsIJAR */
const char[] NS_IJAR_IID_STR = "04501db2-0409-11d3-bcf8-00805f0e1353";

const nsIID NS_IJAR_IID= 
  {0x04501db2, 0x0409, 0x11d3, 
    [ 0xbc, 0xf8, 0x00, 0x80, 0x5f, 0x0e, 0x13, 0x53 ]};

extern(Windows)
interface nsIJAR : nsISupports {
  static const char[] IID_STR = NS_IJAR_IID_STR;
  static const nsIID IID = NS_IJAR_IID;

  enum { NOT_SIGNED = 0 };

  enum { VALID = 1 };

  enum { INVALID_SIG = 2 };

  enum { INVALID_UNKNOWN_CA = 3 };

  enum { INVALID_MANIFEST = 4 };

  enum { INVALID_ENTRY = 5 };

  enum { NO_MANIFEST = 6 };

  /**
     * Returns an object describing the entity which signed 
     * an entry. parseManifest must be called first. If aEntryName is an
     * entry in the jar, getInputStream must be called after parseManifest.
     * If aEntryName is an external file which has meta-information 
     * stored in the jar, verifyExternalFile (not yet implemented) must 
     * be called before getPrincipal.
     */
  /* void getCertificatePrincipal (in string aEntryName, out nsIPrincipal aPrincipal); */
  nsresult GetCertificatePrincipal(char *aEntryName, nsIPrincipal *aPrincipal);

  /* readonly attribute PRUint32 manifestEntriesCount; */
  nsresult GetManifestEntriesCount(PRUint32 *aManifestEntriesCount);

}

