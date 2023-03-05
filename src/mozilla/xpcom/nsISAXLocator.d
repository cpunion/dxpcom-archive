/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXLocator.idl
 */

module mozilla.xpcom.nsISAXLocator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISAXLocator */
const char[] NS_ISAXLOCATOR_IID_STR = "7a307c6c-6cc9-11da-be43-001422106990";

const nsIID NS_ISAXLOCATOR_IID= 
  {0x7a307c6c, 0x6cc9, 0x11da, 
    [ 0xbe, 0x43, 0x00, 0x14, 0x22, 0x10, 0x69, 0x90 ]};

/**
 * Interface for associating a SAX event with a document location.
 *
 * Note that the results returned by the object will be valid only
 * during the scope of each callback method: the application will
 * receive unpredictable results if it attempts to use the locator at
 * any other time, or after parsing completes.
 */
extern(Windows)
interface nsISAXLocator : nsISupports {
  static const char[] IID_STR = NS_ISAXLOCATOR_IID_STR;
  static const nsIID IID = NS_ISAXLOCATOR_IID;

  /**
   * Return the column number where the current document event ends.
   *
   * Warning: The return value from the method is intended only as an
   * approximation for the sake of diagnostics; it is not intended to
   * provide sufficient information to edit the character content of
   * the original XML document.  For example, when lines contain
   * combining character sequences, wide characters, surrogate pairs,
   * or bi-directional text, the value may not correspond to the
   * column in a text editor's display.
   *
   * The return value is an approximation of the column number in the
   * document entity or external parsed entity where the markup
   * triggering the event appears.
   *
   * If possible, the SAX driver should provide the line position of
   * the first character after the text associated with the document
   * event.  The first column in each line is column 1.
   *
   * @return The column number, or -1 if none is available.
   */
  /* readonly attribute long columnNumber; */
  nsresult GetColumnNumber(PRInt32 *aColumnNumber);

  /**
   * Return the line number where the current document event ends.
   * Lines are delimited by line ends, which are defined in the XML
   * specification.
   *
   * Warning: The return value from the method is intended only as an
   * approximation for the sake of diagnostics; it is not intended to
   * provide sufficient information to edit the character content of
   * the original XML document.  In some cases, these "line" numbers
   * match what would be displayed as columns, and in others they may
   * not match the source text due to internal entity expansion.
   *
   * The return value is an approximation of the line number in the
   * document entity or external parsed entity where the markup
   * triggering the event appears.
   *
   * If possible, the SAX driver should provide the line position of
   * the first character after the text associated with the document
   * event.  The first line is line 1.
   *
   * @return The line number, or -1 if none is available.
   */
  /* readonly attribute long lineNumber; */
  nsresult GetLineNumber(PRInt32 *aLineNumber);

  /**
   * Return the public identifier for the current document event.
   *
   * The return value is the public identifier of the document entity
   * or of the external parsed entity in which the markup triggering
   * the event appears.
   *
   * @return A string containing the public identifier, or
   *         null if none is available.
   */
  /* readonly attribute AString publicId; */
  nsresult GetPublicId(nsAString * aPublicId);

  /**
   * Return the system identifier for the current document event.
   *
   * The return value is the system identifier of the document entity
   * or of the external parsed entity in which the markup triggering
   * the event appears.
   *
   * @return A string containing the system identifier, or null
   *         if none is available.
   */
  /* readonly attribute AString systemId; */
  nsresult GetSystemId(nsAString * aSystemId);

}

