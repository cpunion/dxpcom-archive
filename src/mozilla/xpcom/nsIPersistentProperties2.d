/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPersistentProperties2.idl
 */

module mozilla.xpcom.nsIPersistentProperties2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIProperties;
public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsIPropertyElement */
const char[] NS_IPROPERTYELEMENT_IID_STR = "283ee646-1aef-11d4-98b3-00c04fa0ce9a";

const nsIID NS_IPROPERTYELEMENT_IID= 
  {0x283ee646, 0x1aef, 0x11d4, 
    [ 0x98, 0xb3, 0x00, 0xc0, 0x4f, 0xa0, 0xce, 0x9a ]};

extern(Windows)
interface nsIPropertyElement : nsISupports {
  static const char[] IID_STR = NS_IPROPERTYELEMENT_IID_STR;
  static const nsIID IID = NS_IPROPERTYELEMENT_IID;

  /* attribute AUTF8String key; */
  nsresult GetKey(nsACString * aKey);
  nsresult SetKey(nsACString * aKey);

  /* attribute AString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

}


/* starting interface:    nsIPersistentProperties */
const char[] NS_IPERSISTENTPROPERTIES_IID_STR = "1a180f60-93b2-11d2-9b8b-00805f8a16d9";

const nsIID NS_IPERSISTENTPROPERTIES_IID= 
  {0x1a180f60, 0x93b2, 0x11d2, 
    [ 0x9b, 0x8b, 0x00, 0x80, 0x5f, 0x8a, 0x16, 0xd9 ]};

extern(Windows)
interface nsIPersistentProperties : nsIProperties {
  static const char[] IID_STR = NS_IPERSISTENTPROPERTIES_IID_STR;
  static const nsIID IID = NS_IPERSISTENTPROPERTIES_IID;

  /**
   * load a set of name/value pairs from the input stream
   * names and values should be in UTF8
   */
  /* void load (in nsIInputStream input); */
  nsresult Load(nsIInputStream input);

  /**
   * output the values to the stream - results will be in UTF8
   */
  /* void save (in nsIOutputStream output, in AUTF8String header); */
  nsresult Save(nsIOutputStream output, nsACString * header);

  /**
   * call subclass() to make future calls to load() set the properties
   * in this "superclass" instead
   */
  /* void subclass (in nsIPersistentProperties superclass); */
  nsresult Subclass(nsIPersistentProperties superclass);

  /**
   * get an enumeration of nsIPropertyElement objects,
   * which are read-only (i.e. setting properties on the element will
   * not make changes back into the source nsIPersistentProperties
   */
  /* nsISimpleEnumerator enumerate (); */
  nsresult Enumerate(nsISimpleEnumerator *_retval);

  /**
   * shortcut to nsIProperty's get() which retrieves a string value
   * directly (and thus faster)
   */
  /* AString getStringProperty (in AUTF8String key); */
  nsresult GetStringProperty(nsACString * key, nsAString * _retval);

  /**
   * shortcut to nsIProperty's set() which sets a string value
   * directly (and thus faster)
   */
  /* AString setStringProperty (in AUTF8String key, in AString value); */
  nsresult SetStringProperty(nsACString * key, nsAString * value, nsAString * _retval);

}

