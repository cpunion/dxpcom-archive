/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURIFixup.idl
 */

module mozilla.dxpcom.nsIURIFixupD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIURIFixup;


public import mozilla.dxpcom.nsIURIFixupD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIURIFixup */
/**
 * Interface implemented by objects capable of fixing up strings into URIs
 */
class nsIURIFixupD : public nsISupportsD {

  static const nsIID IID = NS_IURIFIXUP_IID;


  alias nsIURIFixup InnerType;

  this(nsIURIFixup intr){
    super(intr);
    this.inner = intr;
  }

  nsIURIFixup opCast() {
    return inner;
  }

  void opAssign(nsIURIFixup value) {
    inner = value;
  }

  /** No fixup flags. */
  enum { FIXUP_FLAG_NONE = 0U }

  /**
     * Allow the fixup to use a keyword lookup service to complete the URI.
     * The fixup object implementer should honour this flag and only perform
     * any lengthy keyword (or search) operation if it is set.
     */
  enum { FIXUP_FLAG_ALLOW_KEYWORD_LOOKUP = 1U }

  /**
     * Tell the fixup to make an alternate URI from the input URI, for example
     * to turn foo into www.foo.com.
     */
  enum { FIXUP_FLAGS_MAKE_ALTERNATE_URI = 2U }

  /**
     * Converts an internal URI (e.g. a wyciwyg URI) into one which we can
     * expose to the user, for example on the URL bar.
     *
     * @param  aURI       The URI to be converted
     * @return nsIURI     The converted, exposable URI
     * @throws NS_ERROR_MALFORMED_URI when the exposable portion of aURI is malformed
     * @throws NS_ERROR_UNKNOWN_PROTOCOL when we can't get a protocol handler service
     *         for the URI scheme.
     */
  /* nsIURI createExposableURI (in nsIURI aURI); */
  nsIURID  CreateExposableURI(nsIURID aURI){
    nsIURI _retval;
    nsresult __result = inner.CreateExposableURI(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
     * Converts the specified string into a URI, first attempting
     * to correct any errors in the syntax or other vagaries. Returns
     * a wellformed URI or nsnull if it can't.
     *
     * @param aURIText    Candidate URI.
     * @param aFixupFlags Flags that govern ways the URI may be fixed up.
     */
  /* nsIURI createFixupURI (in AUTF8String aURIText, in unsigned long aFixupFlags); */
  nsIURID  CreateFixupURI(char[] aURIText, PRUint32 aFixupFlags){
    scope auto _aURIText = new ACString(aURIText);
    nsIURI _retval;
    nsresult __result = inner.CreateFixupURI(cast(nsACString*)_aURIText, aFixupFlags, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsIURIFixup inner;

}


/* starting wrapper class:    nsIURIFixup_MOZILLA_1_8_BRANCH */
class nsIURIFixup_MOZILLA_1_8_BRANCHD : public nsIURIFixupD {

  static const nsIID IID = NS_IURIFIXUP_MOZILLA_1_8_BRANCH_IID;


  alias nsIURIFixup_MOZILLA_1_8_BRANCH InnerType;

  this(nsIURIFixup_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIURIFixup_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIURIFixup_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
     * Converts the specified keyword string into a URI.  Note that it's the
     * caller's responsibility to check whether keywords are enabled and
     * whether aKeyword is a sensible keyword.
     */
  /* nsIURI keywordToURI (in AUTF8String aKeyword); */
  nsIURID  KeywordToURI(char[] aKeyword){
    scope auto _aKeyword = new ACString(aKeyword);
    nsIURI _retval;
    nsresult __result = inner.KeywordToURI(cast(nsACString*)_aKeyword, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsIURIFixup_MOZILLA_1_8_BRANCH inner;

}

