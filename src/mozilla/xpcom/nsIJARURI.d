/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJARURI.idl
 */

module mozilla.xpcom.nsIJARURI;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIURL;


/* starting interface:    nsIJARURI */
const char[] NS_IJARURI_IID_STR = "c7e410d3-85f2-11d3-9f63-006008a6efe9";

const nsIID NS_IJARURI_IID= 
  {0xc7e410d3, 0x85f2, 0x11d3, 
    [ 0x9f, 0x63, 0x00, 0x60, 0x08, 0xa6, 0xef, 0xe9 ]};

/**
 * JAR URLs have the following syntax
 *
 * jar:<jar-file-uri>!/<jar-entry>
 *
 * EXAMPLE: jar:http://www.big.com/blue.jar!/ocean.html
 *
 * The nsIURL methods operate on the <jar-entry> part of the spec.
 */
extern(Windows)
interface nsIJARURI : nsIURL {
  static const char[] IID_STR = NS_IJARURI_IID_STR;
  static const nsIID IID = NS_IJARURI_IID;

  /**
     * Returns the root URI (the one for the actual JAR file) for this JAR.
     * eg http://www.big.com/blue.jar
     */
  /* attribute nsIURI JARFile; */
  nsresult GetJARFile(nsIURI  *aJARFile);
  nsresult SetJARFile(nsIURI  aJARFile);

  /**
     * Returns the entry specified for this JAR URI.
     * eg ocean.html
     */
  /* attribute AUTF8String JAREntry; */
  nsresult GetJAREntry(nsACString * aJAREntry);
  nsresult SetJAREntry(nsACString * aJAREntry);

}

