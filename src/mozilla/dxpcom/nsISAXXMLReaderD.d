/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXXMLReader.idl
 */

module mozilla.dxpcom.nsISAXXMLReaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISAXXMLReader;


public import mozilla.dxpcom.nsISAXXMLReaderD;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.dxpcom.nsIRequestObserverD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsISAXContentHandler;

public import mozilla.dxpcom.nsISAXContentHandlerD;

public import mozilla.xpcom.nsISAXDTDHandler;

public import mozilla.dxpcom.nsISAXDTDHandlerD;

public import mozilla.xpcom.nsISAXErrorHandler;

public import mozilla.dxpcom.nsISAXErrorHandlerD;

public import mozilla.xpcom.nsISAXLexicalHandler;

public import mozilla.dxpcom.nsISAXLexicalHandlerD;


/* starting wrapper class:    nsISAXXMLReader */
/**
 * Interface for reading an XML document using callbacks.
 *
 * nsISAXXMLReader is the interface that an XML parser's SAX2
 * driver must implement.  This interface allows an application to set
 * and query features and properties in the parser, to register event
 * handlers for document processing, and to initiate a document
 * parse.
 */
class nsISAXXMLReaderD : public nsIStreamListenerD {

  static const nsIID IID = NS_ISAXXMLREADER_IID;


  alias nsISAXXMLReader InnerType;

  this(nsISAXXMLReader intr){
    super(intr);
    this.inner = intr;
  }

  nsISAXXMLReader opCast() {
    return inner;
  }

  void opAssign(nsISAXXMLReader value) {
    inner = value;
  }

  /**
   * The base URI.
   */
  /* attribute nsIURI baseURI; */
  nsIURID  BaseURI(){
    nsIURI value;
    nsresult __result = inner.GetBaseURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void BaseURI(nsIURID  aBaseURI){
    nsIURI value;
    nsresult __result = inner.SetBaseURI(value);
    CheckException(__result);
  }

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
  nsISAXContentHandlerD  ContentHandler(){
    nsISAXContentHandler value;
    nsresult __result = inner.GetContentHandler(&value);
    CheckException(__result);
    return new nsISAXContentHandlerD(value);
  }
  void ContentHandler(nsISAXContentHandlerD  aContentHandler){
    nsISAXContentHandler value;
    nsresult __result = inner.SetContentHandler(value);
    CheckException(__result);
  }

  /**
   * If the application does not register a DTD handler, all DTD
   * events reported by the SAX parser will be silently ignored.
   *
   * Applications may register a new or different handler in the
   * middle of a parse, and the SAX parser must begin using the new
   * handler immediately.
   */
  /* attribute nsISAXDTDHandler dtdHandler; */
  nsISAXDTDHandlerD  DtdHandler(){
    nsISAXDTDHandler value;
    nsresult __result = inner.GetDtdHandler(&value);
    CheckException(__result);
    return new nsISAXDTDHandlerD(value);
  }
  void DtdHandler(nsISAXDTDHandlerD  aDtdHandler){
    nsISAXDTDHandler value;
    nsresult __result = inner.SetDtdHandler(value);
    CheckException(__result);
  }

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
  nsISAXErrorHandlerD  ErrorHandler(){
    nsISAXErrorHandler value;
    nsresult __result = inner.GetErrorHandler(&value);
    CheckException(__result);
    return new nsISAXErrorHandlerD(value);
  }
  void ErrorHandler(nsISAXErrorHandlerD  aErrorHandler){
    nsISAXErrorHandler value;
    nsresult __result = inner.SetErrorHandler(value);
    CheckException(__result);
  }

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
  nsISAXLexicalHandlerD  LexicalHandler(){
    nsISAXLexicalHandler value;
    nsresult __result = inner.GetLexicalHandler(&value);
    CheckException(__result);
    return new nsISAXLexicalHandlerD(value);
  }
  void LexicalHandler(nsISAXLexicalHandlerD  aLexicalHandler){
    nsISAXLexicalHandler value;
    nsresult __result = inner.SetLexicalHandler(value);
    CheckException(__result);
  }

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
  void SetFeature(wchar[] name, PRBool value){
    scope auto _name = new AString(name);
    nsresult __result = inner.SetFeature(cast(nsAString*)_name, value);
    CheckException(__result);
  }

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
  PRBool GetFeature(wchar[] name){
    scope auto _name = new AString(name);
    PRBool _retval;
    nsresult __result = inner.GetFeature(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  void SetProperty(wchar[] name, nsISupportsD value){
    scope auto _name = new AString(name);
    nsresult __result = inner.SetProperty(cast(nsAString*)_name, value ? cast(nsISupports)value : null);
    CheckException(__result);
  }

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
  PRBool GetProperty(wchar[] name){
    scope auto _name = new AString(name);
    PRBool _retval;
    nsresult __result = inner.GetProperty(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   *
   * @param str The UTF16 string to be parsed
   * @param contentType The content type of the string (see parseFromStream)
   *
   */
  /* void parseFromString (in AString str, in string contentType); */
  void ParseFromString(wchar[] str, char*contentType){
    scope auto _str = new AString(str);
    nsresult __result = inner.ParseFromString(cast(nsAString*)_str, contentType);
    CheckException(__result);
  }

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
  void ParseFromStream(nsIInputStreamD stream, char*charset, char*contentType){
    nsresult __result = inner.ParseFromStream(stream ? cast(nsIInputStream)stream : null, charset, contentType);
    CheckException(__result);
  }

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
  void ParseAsync(nsIRequestObserverD observer){
    nsresult __result = inner.ParseAsync(observer ? cast(nsIRequestObserver)observer : null);
    CheckException(__result);
  }

private:
  nsISAXXMLReader inner;

}

