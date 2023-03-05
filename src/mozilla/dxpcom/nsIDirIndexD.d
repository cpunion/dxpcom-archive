/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDirIndex.idl
 */

module mozilla.dxpcom.nsIDirIndexD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDirIndex;


public import mozilla.dxpcom.nsIDirIndexD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDirIndex */
/** A class holding information about a directory index.
 * These have no reference back to their original source -
 * changing these attributes won't affect the directory
 */
class nsIDirIndexD : public nsISupportsD {

  static const nsIID IID = NS_IDIRINDEX_IID;


  alias nsIDirIndex InnerType;

  this(nsIDirIndex intr){
    super(intr);
    this.inner = intr;
  }

  nsIDirIndex opCast() {
    return inner;
  }

  void opAssign(nsIDirIndex value) {
    inner = value;
  }

  /**
     * Entry's type is unknown
     */
  enum { TYPE_UNKNOWN = 0U }

  /**
     * Entry is a directory
     */
  enum { TYPE_DIRECTORY = 1U }

  /**
     * Entry is a file
     */
  enum { TYPE_FILE = 2U }

  /**
     * Entry is a symlink
     */
  enum { TYPE_SYMLINK = 3U }

  /**
     * The type of the entry - one of the constants above
     */
  /* attribute unsigned long type; */
  PRUint32 Type(){
    PRUint32 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }
  void Type(PRUint32 aType){
    nsresult __result = inner.SetType(aType);
    CheckException(__result);
  }

  /**
     * The content type - may be null if it is unknown.
     * Unspecified for directories
     */
  /* attribute string contentType; */
  char* ContentType(){
    char* value;
    nsresult __result = inner.GetContentType(&value);
    CheckException(__result);
    return value;
  }
  void ContentType(char* aContentType){
    nsresult __result = inner.SetContentType(aContentType);
    CheckException(__result);
  }

  /**
     * The fully qualified filename, expressed as a uri
     *
     * This is encoded with the encoding specified in
     * the nsIDirIndexParser, and is also escaped.
     */
  /* attribute string location; */
  char* Location(){
    char* value;
    nsresult __result = inner.GetLocation(&value);
    CheckException(__result);
    return value;
  }
  void Location(char* aLocation){
    nsresult __result = inner.SetLocation(aLocation);
    CheckException(__result);
  }

  /**
     * A description for the filename, which should be
     * displayed by a viewer
     */
  /* attribute wstring description; */
  PRUnichar* Description(){
    PRUnichar* value;
    nsresult __result = inner.GetDescription(&value);
    CheckException(__result);
    return value;
  }
  void Description(PRUnichar* aDescription){
    nsresult __result = inner.SetDescription(aDescription);
    CheckException(__result);
  }

  /**
     * File size, with -1 meaning "unknown"
     */
  /* attribute long long size; */
  PRInt64 Size(){
    PRInt64 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }
  void Size(PRInt64 aSize){
    nsresult __result = inner.SetSize(aSize);
    CheckException(__result);
  }

  /**
     * Last-modified time in seconds-since-epoch.
     * -1 means unknown - this is valid, because there were no
     * ftp servers in 1969
     */
  /* attribute PRTime lastModified; */
  PRTime LastModified(){
    PRTime value;
    nsresult __result = inner.GetLastModified(&value);
    CheckException(__result);
    return value;
  }
  void LastModified(PRTime aLastModified){
    PRTime value;
    nsresult __result = inner.SetLastModified(value);
    CheckException(__result);
  }

private:
  nsIDirIndex inner;

}

