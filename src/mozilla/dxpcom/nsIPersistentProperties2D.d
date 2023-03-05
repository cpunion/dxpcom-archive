/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPersistentProperties2.idl
 */

module mozilla.dxpcom.nsIPersistentProperties2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPersistentProperties2;


public import mozilla.dxpcom.nsIPersistentProperties2D;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIProperties;
public import mozilla.dxpcom.nsIPropertiesD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIPropertyElement */
class nsIPropertyElementD : public nsISupportsD {

  static const nsIID IID = NS_IPROPERTYELEMENT_IID;


  alias nsIPropertyElement InnerType;

  this(nsIPropertyElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIPropertyElement opCast() {
    return inner;
  }

  void opAssign(nsIPropertyElement value) {
    inner = value;
  }

  /* attribute AUTF8String key; */
  char[] Key(){
    scope auto value = new ACString();
    nsresult __result = inner.GetKey(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Key(char[] aKey){
    scope auto value = new ACString(aKey);
    nsresult __result = inner.SetKey(cast(nsACString*)value);
    CheckException(__result);
  }

  /* attribute AString value; */
  wchar[] Value(){
    scope auto value = new AString();
    nsresult __result = inner.GetValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Value(wchar[] aValue){
    scope auto value = new AString(aValue);
    nsresult __result = inner.SetValue(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIPropertyElement inner;

}


/* starting wrapper class:    nsIPersistentProperties */
class nsIPersistentPropertiesD : public nsIPropertiesD {

  static const nsIID IID = NS_IPERSISTENTPROPERTIES_IID;


  alias nsIPersistentProperties InnerType;

  this(nsIPersistentProperties intr){
    super(intr);
    this.inner = intr;
  }

  nsIPersistentProperties opCast() {
    return inner;
  }

  void opAssign(nsIPersistentProperties value) {
    inner = value;
  }

  /**
   * load a set of name/value pairs from the input stream
   * names and values should be in UTF8
   */
  /* void load (in nsIInputStream input); */
  void Load(nsIInputStreamD input){
    nsresult __result = inner.Load(input ? cast(nsIInputStream)input : null);
    CheckException(__result);
  }

  /**
   * output the values to the stream - results will be in UTF8
   */
  /* void save (in nsIOutputStream output, in AUTF8String header); */
  void Save(nsIOutputStreamD output, char[] header){
    scope auto _header = new ACString(header);
    nsresult __result = inner.Save(output ? cast(nsIOutputStream)output : null, cast(nsACString*)_header);
    CheckException(__result);
  }

  /**
   * call subclass() to make future calls to load() set the properties
   * in this "superclass" instead
   */
  /* void subclass (in nsIPersistentProperties superclass); */
  void Subclass(nsIPersistentPropertiesD superclass){
    nsresult __result = inner.Subclass(superclass ? cast(nsIPersistentProperties)superclass : null);
    CheckException(__result);
  }

  /**
   * get an enumeration of nsIPropertyElement objects,
   * which are read-only (i.e. setting properties on the element will
   * not make changes back into the source nsIPersistentProperties
   */
  /* nsISimpleEnumerator enumerate (); */
  nsISimpleEnumeratorD  Enumerate(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.Enumerate(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
   * shortcut to nsIProperty's get() which retrieves a string value
   * directly (and thus faster)
   */
  /* AString getStringProperty (in AUTF8String key); */
  wchar[] GetStringProperty(char[] key){
    scope auto _key = new ACString(key);
    scope auto _retval = new AString;
    nsresult __result = inner.GetStringProperty(cast(nsACString*)_key, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * shortcut to nsIProperty's set() which sets a string value
   * directly (and thus faster)
   */
  /* AString setStringProperty (in AUTF8String key, in AString value); */
  wchar[] SetStringProperty(char[] key, wchar[] value){
    scope auto _key = new ACString(key);
    scope auto _value = new AString(value);
    scope auto _retval = new AString;
    nsresult __result = inner.SetStringProperty(cast(nsACString*)_key, cast(nsAString*)_value, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIPersistentProperties inner;

}

