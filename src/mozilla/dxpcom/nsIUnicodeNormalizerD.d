/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicodeNormalizer.idl
 */

module mozilla.dxpcom.nsIUnicodeNormalizerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUnicodeNormalizer;


public import mozilla.dxpcom.nsIUnicodeNormalizerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUnicodeNormalizer */
class nsIUnicodeNormalizerD : public nsISupportsD {

  static const nsIID IID = NS_IUNICODENORMALIZER_IID;


  alias nsIUnicodeNormalizer InnerType;

  this(nsIUnicodeNormalizer intr){
    super(intr);
    this.inner = intr;
  }

  nsIUnicodeNormalizer opCast() {
    return inner;
  }

  void opAssign(nsIUnicodeNormalizer value) {
    inner = value;
  }

  /**
 * Normalize Unicode (NFD, NFC, NFKD, NFKC).
 *
 * NFD: Canonical Decomposition
 * NFC: Canonical Decomposition, followed by Canonical Composition
 * NFKD: Compatibility Decomposition
 * NFKC: Compatibility Decomposition, followed by Canonical Composition
 * Reference: Unicode Standard, TR15, Unicode Normalization Forms
 *
 * @param aSrc         [IN]  nsAString which contains an input UTF-16 string.
 * @param aDest        [OUT] A pointer to an output buffer provided by a callee.
 * @return             NS_OK for success, 
 */
  /* void NormalizeUnicodeNFD (in AString aSrc, out AString aDest); */
  void NormalizeUnicodeNFD(wchar[] aSrc, wchar[] aDest){
    scope auto _aSrc = new AString(aSrc);
    scope auto _aDest = new AString;
    nsresult __result = inner.NormalizeUnicodeNFD(cast(nsAString*)_aSrc, cast(nsAString*)_aDest);
    CheckException(__result);
    aDest = _aDest.GetString();
  }

  /* void NormalizeUnicodeNFC (in AString aSrc, out AString aDest); */
  void NormalizeUnicodeNFC(wchar[] aSrc, wchar[] aDest){
    scope auto _aSrc = new AString(aSrc);
    scope auto _aDest = new AString;
    nsresult __result = inner.NormalizeUnicodeNFC(cast(nsAString*)_aSrc, cast(nsAString*)_aDest);
    CheckException(__result);
    aDest = _aDest.GetString();
  }

  /* void NormalizeUnicodeNFKD (in AString aSrc, out AString aDest); */
  void NormalizeUnicodeNFKD(wchar[] aSrc, wchar[] aDest){
    scope auto _aSrc = new AString(aSrc);
    scope auto _aDest = new AString;
    nsresult __result = inner.NormalizeUnicodeNFKD(cast(nsAString*)_aSrc, cast(nsAString*)_aDest);
    CheckException(__result);
    aDest = _aDest.GetString();
  }

  /* void NormalizeUnicodeNFKC (in AString aSrc, out AString aDest); */
  void NormalizeUnicodeNFKC(wchar[] aSrc, wchar[] aDest){
    scope auto _aSrc = new AString(aSrc);
    scope auto _aDest = new AString;
    nsresult __result = inner.NormalizeUnicodeNFKC(cast(nsAString*)_aSrc, cast(nsAString*)_aDest);
    CheckException(__result);
    aDest = _aDest.GetString();
  }

private:
  nsIUnicodeNormalizer inner;

}

