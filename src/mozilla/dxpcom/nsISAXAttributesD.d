/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXAttributes.idl
 */

module mozilla.dxpcom.nsISAXAttributesD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISAXAttributes;


public import mozilla.dxpcom.nsISAXAttributesD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISAXAttributes */
/**
 * Interface for a list of XML attributes.
 *
 * This interface allows access to a list of attributes in
 * three different ways:
 *
 * 1.) by attribute index;
 * 2.) by Namespace-qualified name; or
 * 3.) by XML qualified name.
 *
 * The list will not contain attributes that were declared #IMPLIED
 * but not specified in the start tag.  It will also not contain
 * attributes used as Namespace declarations (xmlns*) unless the
 * http://xml.org/sax/features/namespace-prefixes feature
 * is set to true (it is false by default).
 *
 * The order of attributes in the list is unspecified.
 */
class nsISAXAttributesD : public nsISupportsD {

  static const nsIID IID = NS_ISAXATTRIBUTES_IID;


  alias nsISAXAttributes InnerType;

  this(nsISAXAttributes intr){
    super(intr);
    this.inner = intr;
  }

  nsISAXAttributes opCast() {
    return inner;
  }

  void opAssign(nsISAXAttributes value) {
    inner = value;
  }

  /**
   * Look up the index of an attribute by Namespace name.
   * @param uri The Namespace URI, or the empty string
   *            if the name has no Namespace URI.
   * @param localName The attribute's local name.
   * @return The index of the attribute, or -1
   *         if it does not appear in the list.
   */
  /* long getIndexFromName (in AString uri, in AString localName); */
  PRInt32 GetIndexFromName(wchar[] uri, wchar[] localName){
    scope auto _uri = new AString(uri);
    scope auto _localName = new AString(localName);
    PRInt32 _retval;
    nsresult __result = inner.GetIndexFromName(cast(nsAString*)_uri, cast(nsAString*)_localName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Look up the index of an attribute by XML qualified name.
   * @param qName The qualified name.
   * @return The index of the attribute, or -1
   *         if it does not appear in the list.
   */
  /* long getIndexFromQName (in AString qName); */
  PRInt32 GetIndexFromQName(wchar[] qName){
    scope auto _qName = new AString(qName);
    PRInt32 _retval;
    nsresult __result = inner.GetIndexFromQName(cast(nsAString*)_qName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Return the number of attributes in the list. Once you know the
   * number of attributes, you can iterate through the list.
   *
   * @return The number of attributes in the list.
   */
  /* readonly attribute long length; */
  PRInt32 Length(){
    PRInt32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Look up an attribute's local name by index.
   * @param index The attribute index (zero-based).
   * @return The local name, or null if the index is out of range.
   */
  /* AString getLocalName (in unsigned long index); */
  wchar[] GetLocalName(PRUint32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetLocalName(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Look up an attribute's XML qualified name by index.
   * @param index The attribute index (zero-based).
   * @return The XML qualified name, or the empty string if none is
   *         available, or null if the index is out of range.
   */
  /* AString getQName (in unsigned long index); */
  wchar[] GetQName(PRUint32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetQName(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Look up an attribute's type by index. The attribute type is one
   * of the strings "CDATA", "ID", "IDREF", "IDREFS", "NMTOKEN",
   * "NMTOKENS", "ENTITY", "ENTITIES", or "NOTATION" (always in upper
   * case). If the parser has not read a declaration for the
   * attribute, or if the parser does not report attribute types, then
   * it must return the value "CDATA" as stated in the XML 1.0
   * Recommendation (clause 3.3.3, "Attribute-Value
   * Normalization"). For an enumerated attribute that is not a
   * notation, the parser will report the type as "NMTOKEN".
   *
   * @param index The attribute index (zero-based).
   * @return The attribute's type as a string, or null if the index is
   *         out of range.
   */
  /* AString getType (in unsigned long index); */
  wchar[] GetType(PRUint32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetType(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Look up an attribute's type by Namespace name.
   * @param uri The Namespace URI, or the empty string
   *             if the name has no Namespace URI.
   * @param localName The attribute's local name.
   * @return The attribute type as a string, or null if the attribute
   *         is not in the list.
   */
  /* AString getTypeFromName (in AString uri, in AString localName); */
  wchar[] GetTypeFromName(wchar[] uri, wchar[] localName){
    scope auto _uri = new AString(uri);
    scope auto _localName = new AString(localName);
    scope auto _retval = new AString;
    nsresult __result = inner.GetTypeFromName(cast(nsAString*)_uri, cast(nsAString*)_localName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Look up an attribute's type by XML qualified name.
   * @param qName The qualified name.
   * @return The attribute type as a string, or null if the attribute
   *         is not in the list.
   */
  /* AString getTypeFromQName (in AString qName); */
  wchar[] GetTypeFromQName(wchar[] qName){
    scope auto _qName = new AString(qName);
    scope auto _retval = new AString;
    nsresult __result = inner.GetTypeFromQName(cast(nsAString*)_qName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Look up an attribute's Namespace URI by index.
   * @param index The attribute index (zero-based).
   * @return The Namespace URI, or the empty string if none is available,
   *         or null if the index is out of range.
   */
  /* AString getURI (in unsigned long index); */
  wchar[] GetURI(PRUint32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetURI(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Look up an attribute's value by index.  If the attribute value is
   * a list of tokens (IDREFS, ENTITIES, or NMTOKENS), the tokens will
   * be concatenated into a single string with each token separated by
   * a single space.
   *
   * @param index The attribute index (zero-based).
   * @return The attribute's value as a string, or null if the index is
   *         out of range.
   */
  /* AString getValue (in unsigned long index); */
  wchar[] GetValue(PRUint32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetValue(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Look up an attribute's value by Namespace name.  If the attribute
   * value is a list of tokens (IDREFS, ENTITIES, or NMTOKENS), the
   * tokens will be concatenated into a single string with each token
   * separated by a single space.
   *
   * @param uri The Namespace URI, or the empty string
   *             if the name has no Namespace URI.
   * @param localName The attribute's local name.
   * @return The attribute's value as a string, or null if the attribute is
   *         not in the list.
   */
  /* AString getValueFromName (in AString uri, in AString localName); */
  wchar[] GetValueFromName(wchar[] uri, wchar[] localName){
    scope auto _uri = new AString(uri);
    scope auto _localName = new AString(localName);
    scope auto _retval = new AString;
    nsresult __result = inner.GetValueFromName(cast(nsAString*)_uri, cast(nsAString*)_localName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Look up an attribute's value by XML qualified (prefixed) name.
   * If the attribute value is a list of tokens (IDREFS, ENTITIES, or
   * NMTOKENS), the tokens will be concatenated into a single string
   * with each token separated by a single space.
   *
   * @param qName The qualified (prefixed) name.
   * @return The attribute's value as a string, or null if the attribute is
   *         not in the list.
   */
  /* AString getValueFromQName (in AString qName); */
  wchar[] GetValueFromQName(wchar[] qName){
    scope auto _qName = new AString(qName);
    scope auto _retval = new AString;
    nsresult __result = inner.GetValueFromQName(cast(nsAString*)_qName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsISAXAttributes inner;

}

