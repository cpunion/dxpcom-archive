/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDirIndexListener.idl
 */

module mozilla.xpcom.nsIDirIndexListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIDirIndex; /* forward declaration */


/* starting interface:    nsIDirIndexListener */
const char[] NS_IDIRINDEXLISTENER_IID_STR = "fae4e9a8-1dd1-11b2-b53c-8f3aa1bbf8f5";

const nsIID NS_IDIRINDEXLISTENER_IID= 
  {0xfae4e9a8, 0x1dd1, 0x11b2, 
    [ 0xb5, 0x3c, 0x8f, 0x3a, 0xa1, 0xbb, 0xf8, 0xf5 ]};

/**
 * This interface is used to receive contents of directory index listings
 * from a protocol. They can then be transformed into an output format
 * (such as rdf, html, etc)
 */
extern(Windows)
interface nsIDirIndexListener : nsISupports {
  static const char[] IID_STR = NS_IDIRINDEXLISTENER_IID_STR;
  static const nsIID IID = NS_IDIRINDEXLISTENER_IID;

  /**
     * Called for each directory entry
     *
     * @param request - the request
     * @param ctxt - opaque parameter
     * @param index - new index to add
     */
  /* void onIndexAvailable (in nsIRequest aRequest, in nsISupports aCtxt, in nsIDirIndex aIndex); */
  nsresult OnIndexAvailable(nsIRequest aRequest, nsISupports aCtxt, nsIDirIndex aIndex);

  /**
     * Called for each information line
     *
     * @param request - the request
     * @param ctxt - opaque parameter
     * @param info - new info to add
     */
  /* void onInformationAvailable (in nsIRequest aRequest, in nsISupports aCtxt, in AString aInfo); */
  nsresult OnInformationAvailable(nsIRequest aRequest, nsISupports aCtxt, nsAString * aInfo);

}


/* starting interface:    nsIDirIndexParser */
const char[] NS_IDIRINDEXPARSER_IID_STR = "38e3066c-1dd2-11b2-9b59-8be515c1ee3f";

const nsIID NS_IDIRINDEXPARSER_IID= 
  {0x38e3066c, 0x1dd2, 0x11b2, 
    [ 0x9b, 0x59, 0x8b, 0xe5, 0x15, 0xc1, 0xee, 0x3f ]};

/**
 * A parser for application/http-index-format
 */
extern(Windows)
interface nsIDirIndexParser : nsIStreamListener {
  static const char[] IID_STR = NS_IDIRINDEXPARSER_IID_STR;
  static const nsIID IID = NS_IDIRINDEXPARSER_IID;

  /**
     * The interface to use as a callback for new entries
     */
  /* attribute nsIDirIndexListener listener; */
  nsresult GetListener(nsIDirIndexListener  *aListener);
  nsresult SetListener(nsIDirIndexListener  aListener);

  /**
     * The comment given, if any
     * This result is only valid _after_ OnStopRequest has occurred,
     * because it can occur anywhere in the datastream
     */
  /* readonly attribute string comment; */
  nsresult GetComment(char * *aComment);

  /**
     * The encoding to use
     */
  /* attribute string encoding; */
  nsresult GetEncoding(char * *aEncoding);
  nsresult SetEncoding(char * aEncoding);

}

