/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSerializer.idl
 */

module mozilla.dxpcom.nsIDOMSerializerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSerializer;


public import mozilla.dxpcom.nsIDOMSerializerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMSerializer */
/**
 * The nsIDOMSerializer interface is really a placeholder till the W3C
 * DOM Working Group defines a mechanism for serializing DOM nodes.
 * An instance of this interface can be used to serialize a DOM document
 * or any DOM subtree.
 */
class nsIDOMSerializerD : public nsISupportsD {

  static const nsIID IID = NS_IDOMSERIALIZER_IID;


  alias nsIDOMSerializer InnerType;

  this(nsIDOMSerializer intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSerializer opCast() {
    return inner;
  }

  void opAssign(nsIDOMSerializer value) {
    inner = value;
  }

  /**
   * The subtree rooted by the specified element is serialized to
   * a string.
   * 
   * @param root The root of the subtree to be serialized. This could
   *             be any node, including a Document.
   * @returns The serialized subtree in the form of a Unicode string
   */
  /* AString serializeToString (in nsIDOMNode root); */
  wchar[] SerializeToString(nsIDOMNodeD root){
    scope auto _retval = new AString;
    nsresult __result = inner.SerializeToString(root ? cast(nsIDOMNode)root : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * The subtree rooted by the specified element is serialized to
   * a byte stream using the character set specified.
   * @param root The root of the subtree to be serialized. This could
   *             be any node, including a Document.
   * @param stream The byte stream to which the subtree is serialized.
   * @param charset The name of the character set to use for the encoding
   *                to a byte stream.
   */
  /* void serializeToStream (in nsIDOMNode root, in nsIOutputStream stream, in AUTF8String charset); */
  void SerializeToStream(nsIDOMNodeD root, nsIOutputStreamD stream, char[] charset){
    scope auto _charset = new ACString(charset);
    nsresult __result = inner.SerializeToStream(root ? cast(nsIDOMNode)root : null, stream ? cast(nsIOutputStream)stream : null, cast(nsACString*)_charset);
    CheckException(__result);
  }

private:
  nsIDOMSerializer inner;

}

