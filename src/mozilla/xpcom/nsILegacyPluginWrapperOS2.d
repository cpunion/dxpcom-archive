/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILegacyPluginWrapperOS2.idl
 */

module mozilla.xpcom.nsILegacyPluginWrapperOS2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;

public import mozilla.xpcom.nsIPlugin; /* forward declaration */


/* starting interface:    nsILegacyPluginWrapperOS2 */
const char[] NS_ILEGACYPLUGINWRAPPEROS2_IID_STR = "7c4f689b-8c2a-11d7-911e-0003ffba5169";

const nsIID NS_ILEGACYPLUGINWRAPPEROS2_IID= 
  {0x7c4f689b, 0x8c2a, 0x11d7, 
    [ 0x91, 0x1e, 0x00, 0x03, 0xff, 0xba, 0x51, 0x69 ]};

extern(Windows)
interface nsILegacyPluginWrapperOS2 : nsISupports {
  static const char[] IID_STR = NS_ILEGACYPLUGINWRAPPEROS2_IID_STR;
  static const nsIID IID = NS_ILEGACYPLUGINWRAPPEROS2_IID;

  /**
     * PR_FindSymbol(,"NSGetFactory") + NSGetFactory().
     */
  /* void getFactory (in nsIServiceManagerObsolete aServMgr, in REFNSIID aClass, in string aClassName, in string aContractID, in PRLibraryPtr aLibrary, out nsIPlugin aResult); */
  nsresult GetFactory(nsIServiceManagerObsolete aServMgr, REFNSIID aClass, char *aClassName, char *aContractID, PRLibrary * aLibrary, nsIPlugin *aResult);

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
  nsresult MaybeWrap(REFNSIID aIID, nsISupports aIn, nsISupports *aOut);

}

