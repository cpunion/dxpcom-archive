/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXMutableAttributes.idl
 */

module mozilla.dxpcom.nsISAXMutableAttributesD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISAXMutableAttributes;


public import mozilla.dxpcom.nsISAXMutableAttributesD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISAXAttributes;
public import mozilla.dxpcom.nsISAXAttributesD;


/* starting wrapper class:    nsISAXMutableAttributes */
/**
 * This interface extends the nsISAXAttributes interface with
 * manipulators so that the list can be modified or reused.
 */
class nsISAXMutableAttributesD : public nsISAXAttributesD {

  static const nsIID IID = NS_ISAXMUTABLEATTRIBUTES_IID;


  alias nsISAXMutableAttributes InnerType;

  this(nsISAXMutableAttributes intr){
    super(intr);
    this.inner = intr;
  }

  nsISAXMutableAttributes opCast() {
    return inner;
  }

  void opAssign(nsISAXMutableAttributes value) {
    inner = value;
  }

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
  void AddAttribute(wchar[] uri, wchar[] localName, wchar[] qName, wchar[] type, wchar[] value){
    scope auto _uri = new AString(uri);
    scope auto _localName = new AString(localName);
    scope auto _qName = new AString(qName);
    scope auto _type = new AString(type);
    scope auto _value = new AString(value);
    nsresult __result = inner.AddAttribute(cast(nsAString*)_uri, cast(nsAString*)_localName, cast(nsAString*)_qName, cast(nsAString*)_type, cast(nsAString*)_value);
    CheckException(__result);
  }

  /**
   * Clear the attribute list for reuse.
   */
  /* void clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

  /**
   * Remove an attribute from the list.
   *
   * @param index The index of the attribute (zero-based).
   */
  /* void removeAttribute (in unsigned long index); */
  void RemoveAttribute(PRUint32 index){
    nsresult __result = inner.RemoveAttribute(index);
    CheckException(__result);
  }

  /**
   * Set the attributes list. This method will clear any attributes in
   * the list before adding the attributes from the argument.
   *
   * @param attributes The attributes object to replace populate the
   *                   list with.
   */
  /* void setAttributes (in nsISAXAttributes attributes); */
  void SetAttributes(nsISAXAttributesD attributes){
    nsresult __result = inner.SetAttributes(attributes ? cast(nsISAXAttributes)attributes : null);
    CheckException(__result);
  }

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
  void SetAttribute(PRUint32 index, wchar[] uri, wchar[] localName, wchar[] qName, wchar[] type, wchar[] value){
    scope auto _uri = new AString(uri);
    scope auto _localName = new AString(localName);
    scope auto _qName = new AString(qName);
    scope auto _type = new AString(type);
    scope auto _value = new AString(value);
    nsresult __result = inner.SetAttribute(index, cast(nsAString*)_uri, cast(nsAString*)_localName, cast(nsAString*)_qName, cast(nsAString*)_type, cast(nsAString*)_value);
    CheckException(__result);
  }

  /**
   * Set the local name of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param localName The attribute's local name, or the empty
   *        string for none.
   */
  /* void setLocalName (in unsigned long index, in AString localName); */
  void SetLocalName(PRUint32 index, wchar[] localName){
    scope auto _localName = new AString(localName);
    nsresult __result = inner.SetLocalName(index, cast(nsAString*)_localName);
    CheckException(__result);
  }

  /**
   * Set the qualified name of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param qName The attribute's qualified name, or the empty
   *        string for none.
   */
  /* void setQName (in unsigned long index, in AString qName); */
  void SetQName(PRUint32 index, wchar[] qName){
    scope auto _qName = new AString(qName);
    nsresult __result = inner.SetQName(index, cast(nsAString*)_qName);
    CheckException(__result);
  }

  /**
   * Set the type of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param type The attribute's type.
   */
  /* void setType (in unsigned long index, in AString type); */
  void SetType(PRUint32 index, wchar[] type){
    scope auto _type = new AString(type);
    nsresult __result = inner.SetType(index, cast(nsAString*)_type);
    CheckException(__result);
  }

  /**
   * Set the Namespace URI of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param uri The attribute's Namespace URI, or the empty
   *        string for none.
   */
  /* void setURI (in unsigned long index, in AString uri); */
  void SetURI(PRUint32 index, wchar[] uri){
    scope auto _uri = new AString(uri);
    nsresult __result = inner.SetURI(index, cast(nsAString*)_uri);
    CheckException(__result);
  }

  /**
   * Set the value of a specific attribute.
   *
   * @param index The index of the attribute (zero-based).
   * @param value The attribute's value.
   */
  /* void setValue (in unsigned long index, in AString value); */
  void SetValue(PRUint32 index, wchar[] value){
    scope auto _value = new AString(value);
    nsresult __result = inner.SetValue(index, cast(nsAString*)_value);
    CheckException(__result);
  }

private:
  nsISAXMutableAttributes inner;

}

