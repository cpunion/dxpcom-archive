/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILegacyPluginWrapperOS2.idl
 */

module mozilla.dxpcom.nsILegacyPluginWrapperOS2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILegacyPluginWrapperOS2;


public import mozilla.dxpcom.nsILegacyPluginWrapperOS2D;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;

public import mozilla.xpcom.nsIPlugin;

public import mozilla.dxpcom.nsIPluginD;


/* starting wrapper class:    nsILegacyPluginWrapperOS2 */
class nsILegacyPluginWrapperOS2D : public nsISupportsD {

  static const nsIID IID = NS_ILEGACYPLUGINWRAPPEROS2_IID;


  alias nsILegacyPluginWrapperOS2 InnerType;

  this(nsILegacyPluginWrapperOS2 intr){
    super(intr);
    this.inner = intr;
  }

  nsILegacyPluginWrapperOS2 opCast() {
    return inner;
  }

  void opAssign(nsILegacyPluginWrapperOS2 value) {
    inner = value;
  }

  /**
     * PR_FindSymbol(,"NSGetFactory") + NSGetFactory().
     */
  /* void getFactory (in nsIServiceManagerObsolete aServMgr, in REFNSIID aClass, in string aClassName, in string aContractID, in PRLibraryPtr aLibrary, out nsIPlugin aResult); */
  void GetFactory(nsIServiceManagerObsoleteD aServMgr, REFNSIID aClass, char*aClassName, char*aContractID, PRLibrary * aLibrary, out nsIPluginD aResult){
    nsIPlugin _aResult;
    nsresult __result = inner.GetFactory(aServMgr ? cast(nsIServiceManagerObsolete)aServMgr : null, aClass, aClassName, aContractID, aLibrary, &_aResult);
    CheckException(__result);
    aResult = _aResult ? new nsIPluginD(_aResult) : null;
  }

  /**
     * Create a wrapper for the given interface if it's a legacy interface.
     * @returns NS_OK on success.
     * @returns NS_ERROR_NO_INTERFACE if aIID isn't supported. aOut is nsnull.
     * @returns NS_ERROR_FAILURE on other error. aOut undefined.
     * @param   aIID    Interface Identifier of aIn and aOut.
     * @param   aIn     Interface of type aIID which may be a legacy interface
     *                  requiring a wrapper.
     * @param   aOut    The native interface.
     *                  If aIn is a legacy interface, this will be a wrappre.
     *                  If aIn is not a legacy interface, this is aIn.
     * @remark  Typically used for the flash plugin.
     */
  /* void maybeWrap (in REFNSIID aIID, in nsISupports aIn, out nsISupports aOut); */
  void MaybeWrap(REFNSIID aIID, nsISupportsD aIn, out nsISupportsD aOut){
    nsISupports _aOut;
    nsresult __result = inner.MaybeWrap(aIID, aIn ? cast(nsISupports)aIn : null, &_aOut);
    CheckException(__result);
    aOut = _aOut ? new nsISupportsD(_aOut) : null;
  }

private:
  nsILegacyPluginWrapperOS2 inner;

}

