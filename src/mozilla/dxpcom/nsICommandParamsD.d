/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandParams.idl
 */

module mozilla.dxpcom.nsICommandParamsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICommandParams;


public import mozilla.dxpcom.nsICommandParamsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICommandParams */
class nsICommandParamsD : public nsISupportsD {

  static const nsIID IID = NS_ICOMMANDPARAMS_IID;


  alias nsICommandParams InnerType;

  this(nsICommandParams intr){
    super(intr);
    this.inner = intr;
  }

  nsICommandParams opCast() {
    return inner;
  }

  void opAssign(nsICommandParams value) {
    inner = value;
  }

  enum { eNoType = 0 }

  enum { eBooleanType = 1 }

  enum { eLongType = 2 }

  enum { eDoubleType = 3 }

  enum { eWStringType = 4 }

  enum { eISupportsType = 5 }

  enum { eStringType = 6 }

  /* short getValueType (in string name); */
  PRInt16 GetValueType(char*name){
    PRInt16 _retval;
    nsresult __result = inner.GetValueType(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean getBooleanValue (in string name); */
  PRBool GetBooleanValue(char*name){
    PRBool _retval;
    nsresult __result = inner.GetBooleanValue(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long getLongValue (in string name); */
  PRInt32 GetLongValue(char*name){
    PRInt32 _retval;
    nsresult __result = inner.GetLongValue(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* double getDoubleValue (in string name); */
  double GetDoubleValue(char*name){
    double _retval;
    nsresult __result = inner.GetDoubleValue(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString getStringValue (in string name); */
  wchar[] GetStringValue(char*name){
    scope auto _retval = new AString;
    nsresult __result = inner.GetStringValue(name, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* string getCStringValue (in string name); */
  char* GetCStringValue(char*name){
    char* _retval;
    nsresult __result = inner.GetCStringValue(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsISupports getISupportsValue (in string name); */
  nsISupportsD  GetISupportsValue(char*name){
    nsISupports _retval;
    nsresult __result = inner.GetISupportsValue(name, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* void setBooleanValue (in string name, in boolean value); */
  void SetBooleanValue(char*name, PRBool value){
    nsresult __result = inner.SetBooleanValue(name, value);
    CheckException(__result);
  }

  /* void setLongValue (in string name, in long value); */
  void SetLongValue(char*name, PRInt32 value){
    nsresult __result = inner.SetLongValue(name, value);
    CheckException(__result);
  }

  /* void setDoubleValue (in string name, in double value); */
  void SetDoubleValue(char*name, double value){
    nsresult __result = inner.SetDoubleValue(name, value);
    CheckException(__result);
  }

  /* void setStringValue (in string name, in AString value); */
  void SetStringValue(char*name, wchar[] value){
    scope auto _value = new AString(value);
    nsresult __result = inner.SetStringValue(name, cast(nsAString*)_value);
    CheckException(__result);
  }

  /* void setCStringValue (in string name, in string value); */
  void SetCStringValue(char*name, char*value){
    nsresult __result = inner.SetCStringValue(name, value);
    CheckException(__result);
  }

  /* void setISupportsValue (in string name, in nsISupports value); */
  void SetISupportsValue(char*name, nsISupportsD value){
    nsresult __result = inner.SetISupportsValue(name, value ? cast(nsISupports)value : null);
    CheckException(__result);
  }

  /* void removeValue (in string name); */
  void RemoveValue(char*name){
    nsresult __result = inner.RemoveValue(name);
    CheckException(__result);
  }

  /* boolean hasMoreElements (); */
  PRBool HasMoreElements(){
    PRBool _retval;
    nsresult __result = inner.HasMoreElements(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void first (); */
  void First(){
    nsresult __result = inner.First();
    CheckException(__result);
  }

  /**
   * GetNext()
   * 
   * @return string pointer that will be allocated and is up 
   *         to the caller to free
   */
  /* string getNext (); */
  char* GetNext(){
    char* _retval;
    nsresult __result = inner.GetNext(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICommandParams inner;

}

