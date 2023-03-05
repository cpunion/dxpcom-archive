/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXDTDHandler.idl
 */

module mozilla.dxpcom.nsISAXDTDHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISAXDTDHandler;


public import mozilla.dxpcom.nsISAXDTDHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISAXDTDHandler */
/**
 * Receive notification of basic DTD-related events.
 *
 * If a SAX application needs information about notations and
 * unparsed entities, then the application implements this interface
 * and registers an instance with the SAX parser using the parser's
 * setDTDHandler method. The parser uses the instance to report
 * notation and unparsed entity declarations to the application.
 *
 * Note that this interface includes only those DTD events that the
 * XML recommendation requires processors to report: notation and
 * unparsed entity declarations.
 *
 * The SAX parser may report these events in any order, regardless
 * of the order in which the notations and unparsed entities were
 * declared; however, all DTD events must be reported after the
 * document handler's startDocument event, and before the first
 * startElement event. (If the LexicalHandler is used, these events
 * must also be reported before the endDTD event.)
 */
class nsISAXDTDHandlerD : public nsISupportsD {

  static const nsIID IID = NS_ISAXDTDHANDLER_IID;


  alias nsISAXDTDHandler InnerType;

  this(nsISAXDTDHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsISAXDTDHandler opCast() {
    return inner;
  }

  void opAssign(nsISAXDTDHandler value) {
    inner = value;
  }

  /**
   * Receive notification of a notation declaration event.
   *
   * It is up to the application to record the notation for later
   * reference, if necessary; notations may appear as attribute values
   * and in unparsed entity declarations, and are sometime used with
   * processing instruction target names.
   *
   * At least one of publicId and systemId must be non-null. If a
   * system identifier is present, and it is a URL, the SAX parser
   * must resolve it fully before passing it to the application
   * through this event.
   *
   * There is no guarantee that the notation declaration will be
   * reported before any unparsed entities that use it.
   *
   * @param name The notation name.
   * @param publicId The notation's public identifier, or null if none was
   *                  given.
   * @param systemId The notation's system identifier, or null if none was
   *                  given.
   */
  /* void notationDecl (in AString name, in AString publicId, in AString systemId); */
  void NotationDecl(wchar[] name, wchar[] publicId, wchar[] systemId){
    scope auto _name = new AString(name);
    scope auto _publicId = new AString(publicId);
    scope auto _systemId = new AString(systemId);
    nsresult __result = inner.NotationDecl(cast(nsAString*)_name, cast(nsAString*)_publicId, cast(nsAString*)_systemId);
    CheckException(__result);
  }

  /**
   * Receive notification of an unparsed entity declaration event.
   *
   * Note that the notation name corresponds to a notation reported
   * by the notationDecl event. It is up to the application to record
   * the entity for later reference, if necessary; unparsed entities
   * may appear as attribute values.
   *
   * If the system identifier is a URL, the parser must resolve it
   * fully before passing it to the application.
   *
   * @param name The unparsed entity's name.
   * @param publicId The entity's public identifier, or null if none was
   *                  given.
   * @param systemId The entity's system identifier, or null if none was
   *                  given.
   * @param notationName The name of the associated notation.
   */
  /* void unparsedEntityDecl (in AString name, in AString publicId, in AString systemId, in AString notationName); */
  void UnparsedEntityDecl(wchar[] name, wchar[] publicId, wchar[] systemId, wchar[] notationName){
    scope auto _name = new AString(name);
    scope auto _publicId = new AString(publicId);
    scope auto _systemId = new AString(systemId);
    scope auto _notationName = new AString(notationName);
    nsresult __result = inner.UnparsedEntityDecl(cast(nsAString*)_name, cast(nsAString*)_publicId, cast(nsAString*)_systemId, cast(nsAString*)_notationName);
    CheckException(__result);
  }

private:
  nsISAXDTDHandler inner;

}

