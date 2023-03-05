/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandParams.idl
 */

module mozilla.xpcom.nsICommandParams;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICommandParams */
const char[] NS_ICOMMANDPARAMS_IID_STR = "83f892cf-7ed3-490e-967a-62640f3158e1";

const nsIID NS_ICOMMANDPARAMS_IID= 
  {0x83f892cf, 0x7ed3, 0x490e, 
    [ 0x96, 0x7a, 0x62, 0x64, 0x0f, 0x31, 0x58, 0xe1 ]};

extern(Windows)
interface nsICommandParams : nsISupports {
  static const char[] IID_STR = NS_ICOMMANDPARAMS_IID_STR;
  static const nsIID IID = NS_ICOMMANDPARAMS_IID;

  enum { eNoType = 0 };

  enum { eBooleanType = 1 };

  enum { eLongType = 2 };

  enum { eDoubleType = 3 };

  enum { eWStringType = 4 };

  enum { eISupportsType = 5 };

  enum { eStringType = 6 };

  /* short getValueType (in string name); */
  nsresult GetValueType(char *name, PRInt16 *_retval);

  /* boolean getBooleanValue (in string name); */
  nsresult GetBooleanValue(char *name, PRBool *_retval);

  /* long getLongValue (in string name); */
  nsresult GetLongValue(char *name, PRInt32 *_retval);

  /* double getDoubleValue (in string name); */
  nsresult GetDoubleValue(char *name, double *_retval);

  /* AString getStringValue (in string name); */
  nsresult GetStringValue(char *name, nsAString * _retval);

  /* string getCStringValue (in string name); */
  nsresult GetCStringValue(char *name, char **_retval);

  /* nsISupports getISupportsValue (in string name); */
  nsresult GetISupportsValue(char *name, nsISupports *_retval);

  /* void setBooleanValue (in string name, in boolean value); */
  nsresult SetBooleanValue(char *name, PRBool value);

  /* void setLongValue (in string name, in long value); */
  nsresult SetLongValue(char *name, PRInt32 value);

  /* void setDoubleValue (in string name, in double value); */
  nsresult SetDoubleValue(char *name, double value);

  /* void setStringValue (in string name, in AString value); */
  nsresult SetStringValue(char *name, nsAString * value);

  /* void setCStringValue (in string name, in string value); */
  nsresult SetCStringValue(char *name, char *value);

  /* void setISupportsValue (in string name, in nsISupports value); */
  nsresult SetISupportsValue(char *name, nsISupports value);

  /* void removeValue (in string name); */
  nsresult RemoveValue(char *name);

  /* boolean hasMoreElements (); */
  nsresult HasMoreElements(PRBool *_retval);

  /* void first (); */
  nsresult First();

  /**
   * GetNext()
   * 
   * @return string pointer that will be allocated and is up 
   *         to the caller to free
   */
  /* string getNext (); */
  nsresult GetNext(char **_retval);

}

