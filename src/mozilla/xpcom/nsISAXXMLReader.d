/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXXMLReader.idl
 */

module mozilla.xpcom.nsISAXXMLReader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIRequestObserver; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsISAXContentHandler; /* forward declaration */

public import mozilla.xpcom.nsISAXDTDHandler; /* forward declaration */

public import mozilla.xpcom.nsISAXErrorHandler; /* forward declaration */

public import mozilla.xpcom.nsISAXLexicalHandler; /* forward declaration */


/* starting interface:    nsISAXXMLReader */
const char[] NS_ISAXXMLREADER_IID_STR = "5556997e-d816-4218-8b54-803d4261206e";

const nsIID NS_ISAXXMLREADER_IID= 
  {0x5556997e, 0xd816, 0x4218, 
    [ 0x8b, 0x54, 0x80, 0x3d, 0x42, 0x61, 0x20, 0x6e ]};

/**
 * Interface for reading an XML document using callbacks.
 *
 * nsISAXXMLReader is the interface that an XML parser's SAX2
 * driver must implement.  This interface allows an application to set
 * and query features and properties in the parser, to register event
 * handlers for document processing, and to initiate a document
 * parse.
 */
extern(Windows)
interface nsISAXXMLReader : nsIStreamListener {
  static const char[] IID_STR = NS_ISAXXMLREADER_IID_STR;
  static const nsIID IID = NS_ISAXXMLREADER_IID;

  /**
   * The base URI.
   */
  /* attribute nsIURI baseURI; */
  nsresult GetBaseURI(nsIURI  *aBaseURI);
  nsresult SetBaseURI(nsIURI  aBaseURI);

  /**
   * If the application does not register a content handler, all
   * content events reported by the SAX parser will be silently
   * ignored.
   *
   * Applications may register a new or different handler in the
   * middle of a parse, and the SAX parser must begin using the new
   * handler immediately.
   */
  /* attribute nsISAXContentHandler contentHandler; */
  nsresult GetContentHandler(nsISAXContentHandler  *aContentHandler);
  nsresult SetContentHandler(nsISAXContentHandler  aContentHandler);

  /**
   * If the application does not register a DTD handler, all DTD
   * events reported by the SAX parser will be silently ignored.
   *
   * Applications may register a new or different handler in the
   * middle of a parse, and the SAX parser must begin using the new
   * handler immediately.
   */
  /* attribute nsISAXDTDHandler dtdHandler; */
  nsresult GetDtdHandler(nsISAXDTDHandler  *aDtdHandler);
  nsresult SetDtdHandler(nsISAXDTDHandler  aDtdHandler);

  /**
   * If the application does not register an error handler, all
   * error events reported by the SAX parser will be silently ignored;
   * however, normal processing may not continue.  It is highly
   * recommended that all SAX applications implement an error handler
   * to avoid unexpected bugs.
   *
   * Applications may register a new or different handler in the
   * middle of a parse, and the SAX parser must begin using the new
   * handler immediately.
   */
  /* attribute nsISAXErrorHandler errorHandler; */
  nsresult GetErrorHandler(nsISAXErrorHandler  *aErrorHandler);
  nsresult SetErrorHandler(nsISAXErrorHandler  aErrorHandler);

  /**
   * If the application does not register a lexical handler, all
   * lexical events (e.g. startDTD) reported by the SAX parser will be
   * silently ignored.
   *
   * Applications may register a new or different handler in the
   * middle of a parse, and the SAX parser must begin using the new
   * handler immediately.
   */
  /* attribute nsISAXLexicalHandler lexicalHandler; */
  nsresult GetLexicalHandler(nsISAXLexicalHandler  *aLexicalHandler);
  nsresult SetLexicalHandler(nsISAXLexicalHandler  aLexicalHandler);

  /**
   * Set the value of a feature flag. NOT CURRENTLY IMPLEMENTED.
   *
   * The feature name is any fully-qualified URI.  It is possible
   * for an XMLReader to expose a feature value but to be unable to
   * change the current value.  Some feature values may be immutable
   * or mutable only in specific contexts, such as before, during, or
   * after a parse.
   *
   * All XMLReaders are required to support setting
   * http://xml.org/sax/features/namespaces to true and
   * http://xml.org/sax/features/namespace-prefixes to false.
   *
   * @param name String flag for a parser feature.
   * @param value Turn the feature on/off.
   */
  /* void setFeature (in AString name, in boolean value); */
  nsresult SetFeature(nsAString * name, PRBool value);

  /**
   * Look up the value of a feature flag. NOT CURRENTLY IMPLEMENTED.
   *
   * The feature name is any fully-qualified URI.  It is
   * possible for an XMLReader to recognize a feature name but
   * temporarily be unable to return its value.
   * Some feature values may be available only in specific
   * contexts, such as before, during, or after a parse.
   *
   * All XMLReaders are required to recognize the
   * http://xml.org/sax/features/namespaces and the
   * http://xml.org/sax/features/namespace-prefixes feature names.
   *
   * @param name String flag for a parser feature.
   */
  /* boolean getFeature (in AString name); */
  nsresult GetFeature(nsAString * name, PRBool *_retval);

  /**
   * Set the value of a property. NOT CURRENTLY IMPLEMENTED.
   *
   * The property name is any fully-qualified URI.  It is possible
   * for an XMLReader to recognize a property name but to be unable to
   * change the current value.  Some property values may be immutable
   * or mutable only in specific contexts, such as before, during, or
   * after a parse.
   *
   * XMLReaders are not required to recognize setting any specific
   * property names, though a core set is defined by SAX2.
   *
   * This method is also the standard mechanism for setting
   * extended handlers.
   *
   * @param name String flag for a parser feature
   * @param value Turn the feature on/off.
   */
  /* void setProperty (in AString name, in nsISupports value); */
  nsresult SetProperty(nsAString * name, nsISupports value);

  /**
   * Look up the value of a property. NOT CURRENTLY IMPLEMENTED.
   *
   * The property name is any fully-qualified URI.  It is
   * possible for an XMLReader to recognize a property name but
   * temporarily be unable to return its value.
   * Some property values may be available only in specific
   * contexts, such as before, during, or after a parse.
   *
   * XMLReaders are not required to recognize any specific
   * property names, though an initial core set is documented for
   * SAX2.
   *
   * Implementors are free (and encouraged) to invent their own properties,
   * using names built on their own URIs.
   *
   * @param name The property name, which is a fully-qualified URI.
   * @return The current value of the property.
   */
  /* boolean getProperty (in AString name); */
  nsresult GetProperty(nsAString * name, PRBool *_retval);

  /**
   *
   * @param str The UTF16 string to be parsed
   * @param contentType The content type of the string (see parseFromStream)
   *
   */
  /* void parseFromString (in AString str, in string contentType); */
  nsresult ParseFromString(nsAString * str, char *contentType);

  /**
   *
   * @param stream The byte stream whose contents are parsed
   * @param charset The character set that was used to encode the byte
   *                stream. NULL if not specified.
   * @param contentType The content type of the string - either text/xml,
   *                    application/xml, or application/xhtml+xml.
   *                    Must not be NULL.
   *
   */
  /* void parseFromStream (in nsIInputStream stream, in string charset, in string contentType); */
  nsresult ParseFromStream(nsIInputStream stream, char *charset, char *contentType);

  /**
   * Begin an asynchronous parse. This method initializes the parser,
   * and must be called before any nsIStreamListener methods. It is
   * then the caller's duty to call nsIStreamListener methods to drive
   * the parser. Once this method is called, the caller must not call
   * one of the other parse methods.
   *
   * @param observer The nsIRequestObserver to notify upon start or stop.
   *                 Can be NULL.
   */
  /* void parseAsync (in nsIRequestObserver observer); */
  nsresult ParseAsync(nsIRequestObserver observer);

}

