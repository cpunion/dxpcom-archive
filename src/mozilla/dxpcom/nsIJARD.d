/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJAR.idl
 */

module mozilla.dxpcom.nsIJARD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJAR;


public import mozilla.dxpcom.nsIJARD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPrincipal;

public import mozilla.dxpcom.nsIPrincipalD;


/* starting wrapper class:    nsIJAR */
class nsIJARD : public nsISupportsD {

  static const nsIID IID = NS_IJAR_IID;


  alias nsIJAR InnerType;

  this(nsIJAR intr){
    super(intr);
    this.inner = intr;
  }

  nsIJAR opCast() {
    return inner;
  }

  void opAssign(nsIJAR value) {
    inner = value;
  }

  enum { NOT_SIGNED = 0 }

  enum { VALID = 1 }

  enum { INVALID_SIG = 2 }

  enum { INVALID_UNKNOWN_CA = 3 }

  enum { INVALID_MANIFEST = 4 }

  enum { INVALID_ENTRY = 5 }

  enum { NO_MANIFEST = 6 }

  /**
     * Returns an object describing the entity which signed 
     * an entry. parseManifest must be called first. If aEntryName is an
     * entry in the jar, getInputStream must be called after parseManifest.
     * If aEntryName is an external file which has meta-information 
     * stored in the jar, verifyExternalFile (not yet implemented) must 
     * be called before getPrincipal.
     */
  /* void getCertificatePrincipal (in string aEntryName, out nsIPrincipal aPrincipal); */
  void GetCertificatePrincipal(char*aEntryName, out nsIPrincipalD aPrincipal){
    nsIPrincipal _aPrincipal;
    nsresult __result = inner.GetCertificatePrincipal(aEntryName, &_aPrincipal);
    CheckException(__result);
    aPrincipal = _aPrincipal ? new nsIPrincipalD(_aPrincipal) : null;
  }

  /* readonly attribute PRUint32 manifestEntriesCount; */
  PRUint32 ManifestEntriesCount(){
    PRUint32 value;
    nsresult __result = inner.GetManifestEntriesCount(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIJAR inner;

}

