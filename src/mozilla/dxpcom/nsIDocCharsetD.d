/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocCharset.idl
 */

module mozilla.dxpcom.nsIDocCharsetD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocCharset;


public import mozilla.dxpcom.nsIDocCharsetD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDocCharset */
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
class nsIDocCharsetD : public nsISupportsD {

  static const nsIID IID = NS_IDOCCHARSET_IID;


  alias nsIDocCharset InnerType;

  this(nsIDocCharset intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocCharset opCast() {
    return inner;
  }

  void opAssign(nsIDocCharset value) {
    inner = value;
  }

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
  char* Charset(){
    char* value;
    nsresult __result = inner.GetCharset(&value);
    CheckException(__result);
    return value;
  }
  void Charset(char* aCharset){
    nsresult __result = inner.SetCharset(aCharset);
    CheckException(__result);
  }

private:
  nsIDocCharset inner;

}

