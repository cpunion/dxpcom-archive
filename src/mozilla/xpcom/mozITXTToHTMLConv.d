/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozITXTToHTMLConv.idl
 */

module mozilla.xpcom.mozITXTToHTMLConv;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamConverter;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    mozITXTToHTMLConv */
const char[] MOZITXTTOHTMLCONV_IID_STR = "77c0e42a-1dd2-11b2-8ebf-edc6606f2f4b";

const nsIID MOZITXTTOHTMLCONV_IID= 
  {0x77c0e42a, 0x1dd2, 0x11b2, 
    [ 0x8e, 0xbf, 0xed, 0xc6, 0x60, 0x6f, 0x2f, 0x4b ]};

extern(Windows)
interface mozITXTToHTMLConv : nsIStreamConverter {
  static const char[] IID_STR = MOZITXTTOHTMLCONV_IID_STR;
  static const nsIID IID = MOZITXTTOHTMLCONV_IID;

  enum { kEntities = 0U };

  enum { kURLs = 2U };

  enum { kGlyphSubstitution = 4U };

  enum { kStructPhrase = 8U };

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
  nsresult ScanTXT(PRUnichar *text, PRUint32 whattodo, PRUnichar **_retval);

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
  nsresult ScanHTML(PRUnichar *text, PRUint32 whattodo, PRUnichar **_retval);

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
  nsresult CiteLevelTXT(PRUnichar *line, PRUint32 *logLineStart, PRUint32 *_retval);

  /** 
 @param a wide string to scan for the presence of a URL.
 @param aLength --> the length of the buffer to be scanned
 @param aPos --> the position in the buffer to start scanning for a url

 aStartPos --> index into the start of a url (-1 if no url found)
 aEndPos --> index of the last character in the url (-1 if no url found)
 */
  /* void findURLInPlaintext (in wstring text, in long aLength, in long aPos, out long aStartPos, out long aEndPos); */
  nsresult FindURLInPlaintext(PRUnichar *text, PRInt32 aLength, PRInt32 aPos, PRInt32 *aStartPos, PRInt32 *aEndPos);

}

