/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefLocalizedString.idl
 */

module mozilla.xpcom.nsIPrefLocalizedString;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPrefLocalizedString */
const char[] NS_IPREFLOCALIZEDSTRING_IID_STR = "ae419e24-1dd1-11b2-b39a-d3e5e7073802";

const nsIID NS_IPREFLOCALIZEDSTRING_IID= 
  {0xae419e24, 0x1dd1, 0x11b2, 
    [ 0xb3, 0x9a, 0xd3, 0xe5, 0xe7, 0x07, 0x38, 0x02 ]};

/**
 * The nsIPrefLocalizedString interface is simply a wrapper interface for
 * nsISupportsString so the preferences service can have a unique identifier
 * to distinguish between requests for normal wide strings (nsISupportsString)
 * and "localized" wide strings, which get their default values from properites
 * files.
 *
 * @see nsIPrefBranch
 * @see nsISupportsString
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsIPrefLocalizedString : nsISupports {
  static const char[] IID_STR = NS_IPREFLOCALIZEDSTRING_IID_STR;
  static const nsIID IID = NS_IPREFLOCALIZEDSTRING_IID;

  /**
   * Provides access to string data stored in this property.
   *
   * @return NS_OK The operation succeeded.
   * @return Other An error occured.
   */
  /* attribute wstring data; */
  nsresult GetData(PRUnichar * *aData);
  nsresult SetData(PRUnichar * aData);

  /**
   * Used to retrieve the contents of this object into a wide string.
   *
   * @return wstring The string containing the data stored within this object.
   */
  /* wstring toString (); */
  nsresult ToString(PRUnichar **_retval);

  /**
   * Used to set the contents of this object.
   *
   * @param length The length of the string. This value should not include
   *               space for the null terminator, nor should it account for the
   *               size of a character. It should  only be the number of
   *               characters for which there is space in the string.
   * @param data   The string data to be stored.
   *
   * @note
   * This makes a copy of the string argument passed in.
   *
   * @return NS_OK The data was successfully stored.
   */
  /* void setDataWithLength (in unsigned long length, [size_is (length)] in wstring data); */
  nsresult SetDataWithLength(PRUint32 length, PRUnichar *data);

}

