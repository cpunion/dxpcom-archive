/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURIFixup.idl
 */

module mozilla.xpcom.nsIURIFixup;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIURIFixup */
const char[] NS_IURIFIXUP_IID_STR = "2efd4a40-a5e1-11d4-9589-0020183bf181";

const nsIID NS_IURIFIXUP_IID= 
  {0x2efd4a40, 0xa5e1, 0x11d4, 
    [ 0x95, 0x89, 0x00, 0x20, 0x18, 0x3b, 0xf1, 0x81 ]};

/**
 * Interface implemented by objects capable of fixing up strings into URIs
 */
extern(Windows)
interface nsIURIFixup : nsISupports {
  static const char[] IID_STR = NS_IURIFIXUP_IID_STR;
  static const nsIID IID = NS_IURIFIXUP_IID;

  /** No fixup flags. */
  enum { FIXUP_FLAG_NONE = 0U };

  /**
     * Allow the fixup to use a keyword lookup service to complete the URI.
     * The fixup object implementer should honour this flag and only perform
     * any lengthy keyword (or search) operation if it is set.
     */
  enum { FIXUP_FLAG_ALLOW_KEYWORD_LOOKUP = 1U };

  /**
     * Tell the fixup to make an alternate URI from the input URI, for example
     * to turn foo into www.foo.com.
     */
  enum { FIXUP_FLAGS_MAKE_ALTERNATE_URI = 2U };

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
  nsresult CreateExposableURI(nsIURI aURI, nsIURI *_retval);

  /**
     * Converts the specified string into a URI, first attempting
     * to correct any errors in the syntax or other vagaries. Returns
     * a wellformed URI or nsnull if it can't.
     *
     * @param aURIText    Candidate URI.
     * @param aFixupFlags Flags that govern ways the URI may be fixed up.
     */
  /* nsIURI createFixupURI (in AUTF8String aURIText, in unsigned long aFixupFlags); */
  nsresult CreateFixupURI(nsACString * aURIText, PRUint32 aFixupFlags, nsIURI *_retval);

}


/* starting interface:    nsIURIFixup_MOZILLA_1_8_BRANCH */
const char[] NS_IURIFIXUP_MOZILLA_1_8_BRANCH_IID_STR = "6ca37983-16aa-4013-b753-77b770ff93d6";

const nsIID NS_IURIFIXUP_MOZILLA_1_8_BRANCH_IID= 
  {0x6ca37983, 0x16aa, 0x4013, 
    [ 0xb7, 0x53, 0x77, 0xb7, 0x70, 0xff, 0x93, 0xd6 ]};

extern(Windows)
interface nsIURIFixup_MOZILLA_1_8_BRANCH : nsIURIFixup {
  static const char[] IID_STR = NS_IURIFIXUP_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IURIFIXUP_MOZILLA_1_8_BRANCH_IID;

  /**
     * Converts the specified keyword string into a URI.  Note that it's the
     * caller's responsibility to check whether keywords are enabled and
     * whether aKeyword is a sensible keyword.
     */
  /* nsIURI keywordToURI (in AUTF8String aKeyword); */
  nsresult KeywordToURI(nsACString * aKeyword, nsIURI *_retval);

}

