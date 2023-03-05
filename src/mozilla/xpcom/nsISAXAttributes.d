/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXAttributes.idl
 */

module mozilla.xpcom.nsISAXAttributes;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISAXAttributes */
const char[] NS_ISAXATTRIBUTES_IID_STR = "e347005e-6cd0-11da-be43-001422106990";

const nsIID NS_ISAXATTRIBUTES_IID= 
  {0xe347005e, 0x6cd0, 0x11da, 
    [ 0xbe, 0x43, 0x00, 0x14, 0x22, 0x10, 0x69, 0x90 ]};

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
extern(Windows)
interface nsISAXAttributes : nsISupports {
  static const char[] IID_STR = NS_ISAXATTRIBUTES_IID_STR;
  static const nsIID IID = NS_ISAXATTRIBUTES_IID;

  /**
   * Look up the index of an attribute by Namespace name.
   * @param uri The Namespace URI, or the empty string
   *            if the name has no Namespace URI.
   * @param localName The attribute's local name.
   * @return The index of the attribute, or -1
   *         if it does not appear in the list.
   */
  /* long getIndexFromName (in AString uri, in AString localName); */
  nsresult GetIndexFromName(nsAString * uri, nsAString * localName, PRInt32 *_retval);

  /**
   * Look up the index of an attribute by XML qualified name.
   * @param qName The qualified name.
   * @return The index of the attribute, or -1
   *         if it does not appear in the list.
   */
  /* long getIndexFromQName (in AString qName); */
  nsresult GetIndexFromQName(nsAString * qName, PRInt32 *_retval);

  /**
   * Return the number of attributes in the list. Once you know the
   * number of attributes, you can iterate through the list.
   *
   * @return The number of attributes in the list.
   */
  /* readonly attribute long length; */
  nsresult GetLength(PRInt32 *aLength);

  /**
   * Look up an attribute's local name by index.
   * @param index The attribute index (zero-based).
   * @return The local name, or null if the index is out of range.
   */
  /* AString getLocalName (in unsigned long index); */
  nsresult GetLocalName(PRUint32 index, nsAString * _retval);

  /**
   * Look up an attribute's XML qualified name by index.
   * @param index The attribute index (zero-based).
   * @return The XML qualified name, or the empty string if none is
   *         available, or null if the index is out of range.
   */
  /* AString getQName (in unsigned long index); */
  nsresult GetQName(PRUint32 index, nsAString * _retval);

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
  nsresult GetType(PRUint32 index, nsAString * _retval);

  /**
   * Look up an attribute's type by Namespace name.
   * @param uri The Namespace URI, or the empty string
   *             if the name has no Namespace URI.
   * @param localName The attribute's local name.
   * @return The attribute type as a string, or null if the attribute
   *         is not in the list.
   */
  /* AString getTypeFromName (in AString uri, in AString localName); */
  nsresult GetTypeFromName(nsAString * uri, nsAString * localName, nsAString * _retval);

  /**
   * Look up an attribute's type by XML qualified name.
   * @param qName The qualified name.
   * @return The attribute type as a string, or null if the attribute
   *         is not in the list.
   */
  /* AString getTypeFromQName (in AString qName); */
  nsresult GetTypeFromQName(nsAString * qName, nsAString * _retval);

  /**
   * Look up an attribute's Namespace URI by index.
   * @param index The attribute index (zero-based).
   * @return The Namespace URI, or the empty string if none is available,
   *         or null if the index is out of range.
   */
  /* AString getURI (in unsigned long index); */
  nsresult GetURI(PRUint32 index, nsAString * _retval);

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
  nsresult GetValue(PRUint32 index, nsAString * _retval);

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
  nsresult GetValueFromName(nsAString * uri, nsAString * localName, nsAString * _retval);

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
  nsresult GetValueFromQName(nsAString * qName, nsAString * _retval);

}

