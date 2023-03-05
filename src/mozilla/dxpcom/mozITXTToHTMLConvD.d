/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozITXTToHTMLConv.idl
 */

module mozilla.dxpcom.mozITXTToHTMLConvD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozITXTToHTMLConv;


public import mozilla.dxpcom.mozITXTToHTMLConvD;

public import mozilla.xpcom.nsIStreamConverter;
public import mozilla.dxpcom.nsIStreamConverterD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    mozITXTToHTMLConv */
class mozITXTToHTMLConvD : public nsIStreamConverterD {

  static const nsIID IID = MOZITXTTOHTMLCONV_IID;


  alias mozITXTToHTMLConv InnerType;

  this(mozITXTToHTMLConv intr){
    super(intr);
    this.inner = intr;
  }

  mozITXTToHTMLConv opCast() {
    return inner;
  }

  void opAssign(mozITXTToHTMLConv value) {
    inner = value;
  }

  enum { kEntities = 0U }

  enum { kURLs = 2U }

  enum { kGlyphSubstitution = 4U }

  enum { kStructPhrase = 8U }

  /**
  @param text: plain text to scan. May be a line, paragraph (recommended)
               or just a substring.<p>
               Must be non-escaped, pure unicode.<p>
               <em>Note:</em> ScanTXT(a, o) + ScanTXT(b, o) may be !=
               Scan(a + b, o)
  @param whattodo: Bitfield describing the modes of operation
  @result      "<", ">" and "&" are escaped and HTML tags are inserted where
               appropriate.
 */
  /* wstring scanTXT (in wstring text, in unsigned long whattodo); */
  PRUnichar* ScanTXT(PRUnichar*text, PRUint32 whattodo){
    PRUnichar* _retval;
    nsresult __result = inner.ScanTXT(text, whattodo, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
  Adds additional formatting to user edited text, that the user was too lazy
  or "unknowledged" (DELETEME: is that a word?) to make.
  <p>
  <em>Note:</em> Don't use kGlyphSubstitution with this function. This option
  generates tags, that are unuseable for UAs other than Mozilla. This would
  be a data loss bug.

  @param text: HTML source to scan. May be a line, paragraph (recommended)
               or just a substring.<p>
               Must be correct HTML. "<", ">" and "&" must be escaped,
               other chars must be pure unicode.<p>
               <em>Note:</em> ScanTXT(a, o) + ScanTXT(b, o) may be !=
               Scan(a + b, o)
  @param whattodo: Bitfield describing the modes of operation
  @result      Additional HTML tags are inserted where appropriate.
 */
  /* wstring scanHTML (in wstring text, in unsigned long whattodo); */
  PRUnichar* ScanHTML(PRUnichar*text, PRUint32 whattodo){
    PRUnichar* _retval;
    nsresult __result = inner.ScanHTML(text, whattodo, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
  @param line: line in original msg, possibly starting starting with
               txt quote tags like ">"
  @param logLineStart: pos in line, where the real content (logical line)
               begins, i.e. pos after all txt quote tags.
               E.g. position of "t" in "> > text".
               Initial value must be 0, unless line is not real line.
  @return      Cite Level, i.e. number of txt quote tags found, i.e. number of
               nested quotes.
 */
  /* unsigned long citeLevelTXT (in wstring line, out unsigned long logLineStart); */
  PRUint32 CiteLevelTXT(PRUnichar*line, out PRUint32 logLineStart){
    PRUint32 _retval;
    nsresult __result = inner.CiteLevelTXT(line, &logLineStart, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
 @param a wide string to scan for the presence of a URL.
 @param aLength --> the length of the buffer to be scanned
 @param aPos --> the position in the buffer to start scanning for a url

 aStartPos --> index into the start of a url (-1 if no url found)
 aEndPos --> index of the last character in the url (-1 if no url found)
 */
  /* void findURLInPlaintext (in wstring text, in long aLength, in long aPos, out long aStartPos, out long aEndPos); */
  void FindURLInPlaintext(PRUnichar*text, PRInt32 aLength, PRInt32 aPos, out PRInt32 aStartPos, out PRInt32 aEndPos){
    nsresult __result = inner.FindURLInPlaintext(text, aLength, aPos, &aStartPos, &aEndPos);
    CheckException(__result);
  }

private:
  mozITXTToHTMLConv inner;

}

