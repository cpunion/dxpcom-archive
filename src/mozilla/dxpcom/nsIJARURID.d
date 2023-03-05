/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJARURI.idl
 */

module mozilla.dxpcom.nsIJARURID;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJARURI;


public import mozilla.dxpcom.nsIJARURID;

public import mozilla.xpcom.nsIURL;
public import mozilla.dxpcom.nsIURLD;


/* starting wrapper class:    nsIJARURI */
/**
 * JAR URLs have the following syntax
 *
 * jar:<jar-file-uri>!/<jar-entry>
 *
 * EXAMPLE: jar:http://www.big.com/blue.jar!/ocean.html
 *
 * The nsIURL methods operate on the <jar-entry> part of the spec.
 */
class nsIJARURID : public nsIURLD {

  static const nsIID IID = NS_IJARURI_IID;


  alias nsIJARURI InnerType;

  this(nsIJARURI intr){
    super(intr);
    this.inner = intr;
  }

  nsIJARURI opCast() {
    return inner;
  }

  void opAssign(nsIJARURI value) {
    inner = value;
  }

  /**
     * Returns the root URI (the one for the actual JAR file) for this JAR.
     * eg http://www.big.com/blue.jar
     */
  /* attribute nsIURI JARFile; */
  nsIURID  JARFile(){
    nsIURI value;
    nsresult __result = inner.GetJARFile(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void JARFile(nsIURID  aJARFile){
    nsIURI value;
    nsresult __result = inner.SetJARFile(value);
    CheckException(__result);
  }

  /**
     * Returns the entry specified for this JAR URI.
     * eg ocean.html
     */
  /* attribute AUTF8String JAREntry; */
  char[] JAREntry(){
    scope auto value = new ACString();
    nsresult __result = inner.GetJAREntry(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void JAREntry(char[] aJAREntry){
    scope auto value = new ACString(aJAREntry);
    nsresult __result = inner.SetJAREntry(cast(nsACString*)value);
    CheckException(__result);
  }

private:
  nsIJARURI inner;

}

