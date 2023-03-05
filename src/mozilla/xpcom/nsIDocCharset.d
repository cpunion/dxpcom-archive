/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocCharset.idl
 */

module mozilla.xpcom.nsIDocCharset;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDocCharset */
const char[] NS_IDOCCHARSET_IID_STR = "9c18bb4e-1dd1-11b2-bf91-9cc82c275823";

const nsIID NS_IDOCCHARSET_IID= 
  {0x9c18bb4e, 0x1dd1, 0x11b2, 
    [ 0xbf, 0x91, 0x9c, 0xc8, 0x2c, 0x27, 0x58, 0x23 ]};

/**
 * The nsIDocCharset interface allows the user to view, 
 * hint, and set which converter is used to read the document's 
 * data.
 *
 * <P>Inside Mozilla all text is encoded as Unicode. By standardizing  
 * on Unicode every piece of code that handles characters no longer 
 * needs to: 
 *
 *     Have access to a character encoding parameter.
 *     Ask is the data stateful?
 *     Ask is the data single byte?
 *     Ask is the data multi-byte?
 *     If multi-byte: have access to a routine that can
 *         determine how many bytes in the current character.
 *
 * When the document is read in a converter is used to convert 
 * the document's data to Unicode.
 *
 * nsIDocCharset provides the ability to:
 *
 *   See what converter was used when inputting the documents
 *   data.
 *
 *   Override the character set for documents where the specified 
 *   fallback, or auto-detected character set is incorrect
 *
 */
extern(Windows)
interface nsIDocCharset : nsISupports {
  static const char[] IID_STR = NS_IDOCCHARSET_IID_STR;
  static const nsIID IID = NS_IDOCCHARSET_IID;

  /**
     * Get/sets the encoding (converter) used to read the 
     * document. Get returns the encoding used. Set forces 
     * (overrides) the encoding. After forcing the charset the 
     * embedding application will need to cause the data to be 
     * reparsed in order to update the DOM / display.
     *
     * A force also sets the fallback encoding for this frame.
     */
  /* attribute string charset; */
  nsresult GetCharset(char * *aCharset);
  nsresult SetCharset(char * aCharset);

}

