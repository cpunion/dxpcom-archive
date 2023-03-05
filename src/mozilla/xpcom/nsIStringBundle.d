/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStringBundle.idl
 */

module mozilla.xpcom.nsIStringBundle;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;


/* starting interface:    nsIStringBundle */
const char[] NS_ISTRINGBUNDLE_IID_STR = "d85a17c2-aa7c-11d2-9b8c-00805f8a16d9";

const nsIID NS_ISTRINGBUNDLE_IID= 
  {0xd85a17c2, 0xaa7c, 0x11d2, 
    [ 0x9b, 0x8c, 0x00, 0x80, 0x5f, 0x8a, 0x16, 0xd9 ]};

extern(Windows)
interface nsIStringBundle : nsISupports {
  static const char[] IID_STR = NS_ISTRINGBUNDLE_IID_STR;
  static const nsIID IID = NS_ISTRINGBUNDLE_IID;

  /* wstring GetStringFromID (in long aID); */
  nsresult GetStringFromID(PRInt32 aID, PRUnichar **_retval);

  /* wstring GetStringFromName (in wstring aName); */
  nsresult GetStringFromName(PRUnichar *aName, PRUnichar **_retval);

  /* wstring formatStringFromID (in long aID, [array, size_is (length)] in wstring params, in unsigned long length); */
  nsresult FormatStringFromID(PRInt32 aID, PRUnichar **params, PRUint32 length, PRUnichar **_retval);

  /* wstring formatStringFromName (in wstring aName, [array, size_is (length)] in wstring params, in unsigned long length); */
  nsresult FormatStringFromName(PRUnichar *aName, PRUnichar **params, PRUint32 length, PRUnichar **_retval);

  /* nsISimpleEnumerator getSimpleEnumeration (); */
  nsresult GetSimpleEnumeration(nsISimpleEnumerator *_retval);

}


/* starting interface:    nsIStringBundleService */
const char[] NS_ISTRINGBUNDLESERVICE_IID_STR = "d85a17c0-aa7c-11d2-9b8c-00805f8a16d9";

const nsIID NS_ISTRINGBUNDLESERVICE_IID= 
  {0xd85a17c0, 0xaa7c, 0x11d2, 
    [ 0x9b, 0x8c, 0x00, 0x80, 0x5f, 0x8a, 0x16, 0xd9 ]};

extern(Windows)
interface nsIStringBundleService : nsISupports {
  static const char[] IID_STR = NS_ISTRINGBUNDLESERVICE_IID_STR;
  static const nsIID IID = NS_ISTRINGBUNDLESERVICE_IID;

  /* nsIStringBundle createBundle (in string aURLSpec); */
  nsresult CreateBundle(char *aURLSpec, nsIStringBundle *_retval);

  /* nsIStringBundle createExtensibleBundle (in string aRegistryKey); */
  nsresult CreateExtensibleBundle(char *aRegistryKey, nsIStringBundle *_retval);

  /**
   * Formats a message string from a status code and status arguments.
   * @param aStatus - The status code. This is mapped into a string ID and
   *            and used in the string lookup process (see nsIErrorService).
   * @param aStatusArg - The status message argument(s). Multiple arguments
   *            can be separated by newline ('\n') characters.
   * @return the formatted message
   */
  /* wstring formatStatusMessage (in nsresult aStatus, in wstring aStatusArg); */
  nsresult FormatStatusMessage(nsresult aStatus, PRUnichar *aStatusArg, PRUnichar **_retval);

  /**
   * flushes the string bundle cache - useful when the locale changes or
   * when we need to get some extra memory back
   * 
   * at some point, we might want to make this flush all the bundles,
   * because any bundles that are floating around when the locale changes
   * will suddenly contain bad data
   *
   */
  /* void flushBundles (); */
  nsresult FlushBundles();

}

