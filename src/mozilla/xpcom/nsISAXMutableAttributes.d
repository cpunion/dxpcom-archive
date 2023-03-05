/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXMutableAttributes.idl
 */

module mozilla.xpcom.nsISAXMutableAttributes;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISAXAttributes;


/* starting interface:    nsISAXMutableAttributes */
const char[] NS_ISAXMUTABLEATTRIBUTES_IID_STR = "8b1de83d-cebb-49fa-8245-c0fe319eb7b6";

const nsIID NS_ISAXMUTABLEATTRIBUTES_IID= 
  {0x8b1de83d, 0xcebb, 0x49fa, 
    [ 0x82, 0x45, 0xc0, 0xfe, 0x31, 0x9e, 0xb7, 0xb6 ]};

/**
 * This interface extends the nsISAXAttributes interface with
 * manipulators so that the list can be modified or reused.
 */
extern(Windows)
interface nsISAXMutableAttributes : nsISAXAttributes {
  static const char[] IID_STR = NS_ISAXMUTABLEATTRIBUTES_IID_STR;
  static const nsIID IID = NS_ISAXMUTABLEATTRIBUTES_IID;

  /**
   * Add an attribute to the end of the list.
   *
   * For the sake of speed, this method does no checking
   * to see if the attribute is already in the list: that is
   * the responsibility of the application.
   *
   * @param uri The Namespace URI, or the empty string if
   *        none is available or Namespace processing is not
   *        being performed.
   * @param localName The local name, or the empty string if
   *        Namespace processing is not being performed.
   * @param qName The qualified (prefixed) name, or the empty string
   *        if qualified names are not available.
   * @param type The attribute type as a string.
   * @param value The attribute value.
   */
  /* void addAttribute (in AString uri, in AString localName, in AString qName, in AString type, in AString value); */
  nsresult AddAttribute(nsAString * uri, nsAString * localName, nsAString * qName, nsAString * type, nsAString * value);

  /**
   * Clear the attribute list for reuse.
   */
  /* void clear (); */
  nsresult Clear();

  /**
   * Remove an attribute from the list.
   *
   * @param index The index of the attribute (zero-based).
   */
  /* void removeAttribute (in unsigned long index); */
  nsresult RemoveAttribute(PRUint32 index);

  /**
   * Set the attributes list. This method will clear any attributes in
   * the list before adding the attributes from the argument.
   *
   * @param attributes The attributes object to replace populate the
   *                   list with.
   */
  /* void setAttributes (in nsISAXAttributes attributes); */
  nsresult SetAttributes(nsISAXAttributes attributes);

  /**
   * Set an attribute in the list.
   *
   * For the sake of speed, this method does no checking for name
   * conflicts or well-formedness: such checks are the responsibility
   * of the application.
   *
   * @param index The index of the attribute (zero-based).
   * @param uri The Namespace URI, or the empty string if
   *        none is available or Namespace processing is not
   *        being performed.
   * @param localName The local name, or the empty string if
   *        Namespace processing is not being performed.
   * @param qName The qualified name, or the empty string
   *        if qualified names are not available.
   * @param type The attribute type as a string.
   * @param value The attribute value.
   */
  /* void setAttribute (in unsigned long index, in AString uri, in AString localName, in AString qName, in AString type, in AString value); */
  nsresult SetAttribute(PRUint32 index, nsAString * uri, nsAString * localName, nsAString * qName, nsAString * type, nsAString * value);

  /**
   * Set the local name of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param localName The attribute's local name, or the empty
   *        string for none.
   */
  /* void setLocalName (in unsigned long index, in AString localName); */
  nsresult SetLocalName(PRUint32 index, nsAString * localName);

  /**
   * Set the qualified name of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param qName The attribute's qualified name, or the empty
   *        string for none.
   */
  /* void setQName (in unsigned long index, in AString qName); */
  nsresult SetQName(PRUint32 index, nsAString * qName);

  /**
   * Set the type of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param type The attribute's type.
   */
  /* void setType (in unsigned long index, in AString type); */
  nsresult SetType(PRUint32 index, nsAString * type);

  /**
   * Set the Namespace URI of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param uri The attribute's Namespace URI, or the empty
   *        string for none.
   */
  /* void setURI (in unsigned long index, in AString uri); */
  nsresult SetURI(PRUint32 index, nsAString * uri);

  /**
   * Set the value of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param value The attribute's value.
   */
  /* void setValue (in unsigned long index, in AString value); */
  nsresult SetValue(PRUint32 index, nsAString * value);

}

