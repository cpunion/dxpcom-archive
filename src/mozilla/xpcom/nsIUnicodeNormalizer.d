/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicodeNormalizer.idl
 */

module mozilla.xpcom.nsIUnicodeNormalizer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUnicodeNormalizer */
const char[] NS_IUNICODENORMALIZER_IID_STR = "b43a461f-1bcf-4329-820b-66e48c979e14";

const nsIID NS_IUNICODENORMALIZER_IID= 
  {0xb43a461f, 0x1bcf, 0x4329, 
    [ 0x82, 0x0b, 0x66, 0xe4, 0x8c, 0x97, 0x9e, 0x14 ]};

extern(Windows)
interface nsIUnicodeNormalizer : nsISupports {
  static const char[] IID_STR = NS_IUNICODENORMALIZER_IID_STR;
  static const nsIID IID = NS_IUNICODENORMALIZER_IID;

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
  nsresult NormalizeUnicodeNFD(nsAString * aSrc, nsAString * aDest);

  /* void NormalizeUnicodeNFC (in AString aSrc, out AString aDest); */
  nsresult NormalizeUnicodeNFC(nsAString * aSrc, nsAString * aDest);

  /* void NormalizeUnicodeNFKD (in AString aSrc, out AString aDest); */
  nsresult NormalizeUnicodeNFKD(nsAString * aSrc, nsAString * aDest);

  /* void NormalizeUnicodeNFKC (in AString aSrc, out AString aDest); */
  nsresult NormalizeUnicodeNFKC(nsAString * aSrc, nsAString * aDest);

}

