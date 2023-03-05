/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSerializer.idl
 */

module mozilla.xpcom.nsIDOMSerializer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsIDOMSerializer */
const char[] NS_IDOMSERIALIZER_IID_STR = "9fd4ba15-e67c-4c98-b52c-7715f62c9196";

const nsIID NS_IDOMSERIALIZER_IID= 
  {0x9fd4ba15, 0xe67c, 0x4c98, 
    [ 0xb5, 0x2c, 0x77, 0x15, 0xf6, 0x2c, 0x91, 0x96 ]};

/**
 * The nsIDOMSerializer interface is really a placeholder till the W3C
 * DOM Working Group defines a mechanism for serializing DOM nodes.
 * An instance of this interface can be used to serialize a DOM document
 * or any DOM subtree.
 */
extern(Windows)
interface nsIDOMSerializer : nsISupports {
  static const char[] IID_STR = NS_IDOMSERIALIZER_IID_STR;
  static const nsIID IID = NS_IDOMSERIALIZER_IID;

  /**
   * The subtree rooted by the specified element is serialized to
   * a string.
   * 
   * @param root The root of the subtree to be serialized. This could
   *             be any node, including a Document.
   * @returns The serialized subtree in the form of a Unicode string
   */
  /* AString serializeToString (in nsIDOMNode root); */
  nsresult SerializeToString(nsIDOMNode root, nsAString * _retval);

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
  nsresult SerializeToStream(nsIDOMNode root, nsIOutputStream stream, nsACString * charset);

}

