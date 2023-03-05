/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXLexicalHandler.idl
 */

module mozilla.dxpcom.nsISAXLexicalHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISAXLexicalHandler;


public import mozilla.dxpcom.nsISAXLexicalHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISAXLexicalHandler */
/**
 * SAX2 extension handler for lexical events.
 *
 * This is an extension handler for SAX2 to provide lexical
 * information about an XML document, such as comments and CDATA
 * section boundaries.
 *
 * The events in the lexical handler apply to the entire document,
 * not just to the document element, and all lexical handler events
 * must appear between the content handler's startDocument and
 * endDocument events.
 */
class nsISAXLexicalHandlerD : public nsISupportsD {

  static const nsIID IID = NS_ISAXLEXICALHANDLER_IID;


  alias nsISAXLexicalHandler InnerType;

  this(nsISAXLexicalHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsISAXLexicalHandler opCast() {
    return inner;
  }

  void opAssign(nsISAXLexicalHandler value) {
    inner = value;
  }

  /**
   * Report an XML comment anywhere in the document.
   *
   * This callback will be used for comments inside or outside the
   * document element, including comments in the external DTD subset
   * (if read).  Comments in the DTD must be properly nested inside
   * start/endDTD and start/endEntity events (if used).
   *
   * @param chars The characters in the comment.
   */
  /* void comment (in AString chars); */
  void Comment(wchar[] chars){
    scope auto _chars = new AString(chars);
    nsresult __result = inner.Comment(cast(nsAString*)_chars);
    CheckException(__result);
  }

  /**
   * Report the start of DTD declarations, if any.
   *
   * This method is intended to report the beginning of the
   * DOCTYPE declaration; if the document has no DOCTYPE declaration,
   * this method will not be invoked.
   *
   * All declarations reported through DTDHandler or DeclHandler
   * events must appear between the startDTD and endDTD events.
   * Declarations are assumed to belong to the internal DTD subset
   * unless they appear between startEntity and endEntity events.
   * Comments and processing instructions from the DTD should also be
   * reported between the startDTD and endDTD events, in their
   * original order of (logical) occurrence; they are not required to
   * appear in their correct locations relative to DTDHandler or
   * DeclHandler events, however.
   *
   * Note that the start/endDTD events will appear within the
   * start/endDocument events from ContentHandler and before the first
   * startElement event.
   *
   * @param name The document type name.
   * @param publicId The declared public identifier for the
   *        external DTD subset, or null if none was declared.
   * @param systemId The declared system identifier for the
   *        external DTD subset, or null if none was declared.
   *        (Note that this is not resolved against the document
   *        base URI.)
   */
  /* void startDTD (in AString name, in AString publicId, in AString systemId); */
  void StartDTD(wchar[] name, wchar[] publicId, wchar[] systemId){
    scope auto _name = new AString(name);
    scope auto _publicId = new AString(publicId);
    scope auto _systemId = new AString(systemId);
    nsresult __result = inner.StartDTD(cast(nsAString*)_name, cast(nsAString*)_publicId, cast(nsAString*)_systemId);
    CheckException(__result);
  }

  /**
   * Report the end of DTD declarations.
   *
   * This method is intended to report the end of the
   * DOCTYPE declaration; if the document has no DOCTYPE declaration,
   * this method will not be invoked.
   */
  /* void endDTD (); */
  void EndDTD(){
    nsresult __result = inner.EndDTD();
    CheckException(__result);
  }

  /**
   * Report the start of a CDATA section.
   *
   * The contents of the CDATA section will be reported through the
   * regular characters event; this event is intended only to report
   * the boundary.
   */
  /* void startCDATA (); */
  void StartCDATA(){
    nsresult __result = inner.StartCDATA();
    CheckException(__result);
  }

  /**
   * Report the end of a CDATA section.
   */
  /* void endCDATA (); */
  void EndCDATA(){
    nsresult __result = inner.EndCDATA();
    CheckException(__result);
  }

  /**
   * Report the beginning of some internal and external XML entities.
   *
   * Because of the streaming event model that SAX uses, some
   * entity boundaries cannot be reported under any circumstances:
   *
   * 1.) general entities within attribute values
   * 2.) parameter entities within declarations
   *
   * These will be silently expanded, with no indication of where
   * the original entity boundaries were.
   *
   * Note also that the boundaries of character references (which
   * are not really entities anyway) are not reported.
   *
   * All start/endEntity events must be properly nested.
   *
   * @param name The name of the entity.  If it is a parameter
   *             entity, the name will begin with '%', and if it is the
   *             external DTD subset, it will be "[dtd]".
   */
  /* void startEntity (in AString name); */
  void StartEntity(wchar[] name){
    scope auto _name = new AString(name);
    nsresult __result = inner.StartEntity(cast(nsAString*)_name);
    CheckException(__result);
  }

  /**
   * Report the end of an entity.
   *
   * @param name The name of the entity that is ending.
   */
  /* void endEntity (in AString name); */
  void EndEntity(wchar[] name){
    scope auto _name = new AString(name);
    nsresult __result = inner.EndEntity(cast(nsAString*)_name);
    CheckException(__result);
  }

private:
  nsISAXLexicalHandler inner;

}

