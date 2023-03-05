/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefLocalizedString.idl
 */

module mozilla.dxpcom.nsIPrefLocalizedStringD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrefLocalizedString;


public import mozilla.dxpcom.nsIPrefLocalizedStringD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPrefLocalizedString */
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
class nsIPrefLocalizedStringD : public nsISupportsD {

  static const nsIID IID = NS_IPREFLOCALIZEDSTRING_IID;


  alias nsIPrefLocalizedString InnerType;

  this(nsIPrefLocalizedString intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrefLocalizedString opCast() {
    return inner;
  }

  void opAssign(nsIPrefLocalizedString value) {
    inner = value;
  }

  /**
   * Provides access to string data stored in this property.
   *
   * @return NS_OK The operation succeeded.
   * @return Other An error occured.
   */
  /* attribute wstring data; */
  PRUnichar* Data(){
    PRUnichar* value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return value;
  }
  void Data(PRUnichar* aData){
    nsresult __result = inner.SetData(aData);
    CheckException(__result);
  }

  /**
   * Used to retrieve the contents of this object into a wide string.
   *
   * @return wstring The string containing the data stored within this object.
   */
  /* wstring toString (); */
  PRUnichar* ToString(){
    PRUnichar* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

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
  void SetDataWithLength(PRUint32 length, PRUnichar*data){
    nsresult __result = inner.SetDataWithLength(length, data);
    CheckException(__result);
  }

private:
  nsIPrefLocalizedString inner;

}

