/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPAutoCompFormatter.idl
 */

module mozilla.dxpcom.nsIAbLDAPAutoCompFormatterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbLDAPAutoCompFormatter;


public import mozilla.dxpcom.nsIAbLDAPAutoCompFormatterD;

public import mozilla.xpcom.nsILDAPAutoCompFormatter;
public import mozilla.dxpcom.nsILDAPAutoCompFormatterD;


/* starting wrapper class:    nsIAbLDAPAutoCompFormatter */
/** 
 * An interface for formatter LDAP messages to be used as nsAutoCompleteItems
 * for use in RFC 2822 message headers.
 */
class nsIAbLDAPAutoCompFormatterD : public nsILDAPAutoCompFormatterD {

  static const nsIID IID = NS_IABLDAPAUTOCOMPFORMATTER_IID;


  alias nsIAbLDAPAutoCompFormatter InnerType;

  this(nsIAbLDAPAutoCompFormatter intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDAPAutoCompFormatter opCast() {
    return inner;
  }

  void opAssign(nsIAbLDAPAutoCompFormatter value) {
    inner = value;
  }

  /**
     * All three Format attributes are templates, which work as follows:
     *
     * Required LDAP attributes are delimited by curly braces, and
     * optional LDAP attributes are determined by brackets.  Backslash
     * escapes any character, including itself.  Someday perhaps we'll rev 
     * this interface and change these to a more flexible format; perhaps 
     * something regexp based.
     *
     * If any of these are unset, components implementing this interface 
     * are free to choose reasonable defaults.  As an example, the 
     *"@mozilla.org/ldap-autocomplete-formatter;1?type=addrbook"
     * implementation currently happens to use the following default
     * strings:
     * 
     * nameFormat: "[cn]"
     * addressFormat: "{mail}"
     * commentFormat: ""
     *
     * and generates autocomplete items like this:
     *
     * value: John Doe <john.doe@foo.org>         
     * comment: Foo Organization
     *
     * Note that nsILDAPAutoCompFormatter::getAttributes() is only
     * required to be called by the nsILDAPAutoCompleteSession
     * implementation when the nsILDAPAutoCompleteSession::formatter
     * IDL attribute is set.  So if for some reason the format
     * attributes exposed through this interface get changed (eg a
     * user changes their prefs), it is the changing code's
     * responsibly to re-set the nsILDAPAutoCompleteSession::formatter
     * IDL attribute to the same object to force a new getAttributes()
     * call.
     */
  /* attribute AString nameFormat; */
  wchar[] NameFormat(){
    scope auto value = new AString();
    nsresult __result = inner.GetNameFormat(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void NameFormat(wchar[] aNameFormat){
    scope auto value = new AString(aNameFormat);
    nsresult __result = inner.SetNameFormat(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString addressFormat; */
  wchar[] AddressFormat(){
    scope auto value = new AString();
    nsresult __result = inner.GetAddressFormat(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void AddressFormat(wchar[] aAddressFormat){
    scope auto value = new AString(aAddressFormat);
    nsresult __result = inner.SetAddressFormat(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute AString commentFormat; */
  wchar[] CommentFormat(){
    scope auto value = new AString();
    nsresult __result = inner.GetCommentFormat(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void CommentFormat(wchar[] aCommentFormat){
    scope auto value = new AString(aCommentFormat);
    nsresult __result = inner.SetCommentFormat(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIAbLDAPAutoCompFormatter inner;

}

