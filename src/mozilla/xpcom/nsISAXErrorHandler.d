/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXErrorHandler.idl
 */

module mozilla.xpcom.nsISAXErrorHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISAXLocator; /* forward declaration */


/* starting interface:    nsISAXErrorHandler */
const char[] NS_ISAXERRORHANDLER_IID_STR = "e02b6693-6cca-11da-be43-001422106990";

const nsIID NS_ISAXERRORHANDLER_IID= 
  {0xe02b6693, 0x6cca, 0x11da, 
    [ 0xbe, 0x43, 0x00, 0x14, 0x22, 0x10, 0x69, 0x90 ]};

/**
 * Basic interface for SAX error handlers.
 *
 * If a SAX application needs to implement customized error
 * handling, it must implement this interface and then register an
 * instance with the XML reader.  The parser will then report all
 * errors and warnings through this interface.
 *
 * WARNING: If an application does not register an ErrorHandler,
 * XML parsing errors will go unreported. In order to detect validity
 * errors, an ErrorHandler that does something with error() calls must
 * be registered.
 *
 */
extern(Windows)
interface nsISAXErrorHandler : nsISupports {
  static const char[] IID_STR = NS_ISAXERRORHANDLER_IID_STR;
  static const nsIID IID = NS_ISAXERRORHANDLER_IID;

  /**
   * Receive notification of a recoverable error.
   *
   * This corresponds to the definition of "error" in section 1.2
   * of the W3C XML 1.0 Recommendation. For example, a validating
   * parser would use this callback to report the violation of a
   * validity constraint. The default behaviour is to take no
   * action.
   *
   * The SAX parser must continue to provide normal parsing events
   * after invoking this method: it should still be possible for the
   * application to process the document through to the end. If the
   * application cannot do so, then the parser should report a fatal
   * error even if the XML recommendation does not require it to do
   * so.
   *
   * Filters may use this method to report other, non-XML errors as
   * well.
   *
   * @param locator The locator object for the error (may be null).
   * @param error The error message.
   */
  /* void error (in nsISAXLocator locator, in AString error); */
  nsresult Error(nsISAXLocator locator, nsAString * error);

  /**
   * Receive notification of a non-recoverable error.
   *
   * There is an apparent contradiction between the documentation
   * for this method and the documentation for
   * ContentHandler.endDocument(). Until this ambiguity is resolved in
   * a future major release, clients should make no assumptions about
   * whether endDocument() will or will not be invoked when the parser
   * has reported a fatalError() or thrown an exception.
   *
   * This corresponds to the definition of "fatal error" in section
   * 1.2 of the W3C XML 1.0 Recommendation. For example, a parser
   * would use this callback to report the violation of a
   * well-formedness constraint.
   *
   * The application must assume that the document is unusable
   * after the parser has invoked this method, and should continue (if
   * at all) only for the sake of collecting additional error
   * messages: in fact, SAX parsers are free to stop reporting any
   * other events once this method has been invoked.
   *
   * @param locator The locator object for the error (may be null).
   * @param error The error message.
   */
  /* void fatalError (in nsISAXLocator locator, in AString error); */
  nsresult FatalError(nsISAXLocator locator, nsAString * error);

  /**
   * Receive notification of a warning.
   *
   * SAX parsers will use this method to report conditions that are
   * not errors or fatal errors as defined by the XML
   * recommendation. The default behaviour is to take no action.
   *
   * The SAX parser must continue to provide normal parsing events
   * after invoking this method: it should still be possible for the
   * application to process the document through to the end.
   *
   * Filters may use this method to report other, non-XML warnings
   * as well.
   *
   * @param locator The locator object for the warning (may be null).
   * @param error The warning message.
   */
  /* void ignorableWarning (in nsISAXLocator locator, in AString error); */
  nsresult IgnorableWarning(nsISAXLocator locator, nsAString * error);

}

