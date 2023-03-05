/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPAutoCompFormatter.idl
 */

module mozilla.xpcom.nsIAbLDAPAutoCompFormatter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsILDAPAutoCompFormatter;


/* starting interface:    nsIAbLDAPAutoCompFormatter */
const char[] NS_IABLDAPAUTOCOMPFORMATTER_IID_STR = "cde8836e-1dd1-11b2-baff-a6d918243e80";

const nsIID NS_IABLDAPAUTOCOMPFORMATTER_IID= 
  {0xcde8836e, 0x1dd1, 0x11b2, 
    [ 0xba, 0xff, 0xa6, 0xd9, 0x18, 0x24, 0x3e, 0x80 ]};

/** 
 * An interface for formatter LDAP messages to be used as nsAutoCompleteItems
 * for use in RFC 2822 message headers.
 */
extern(Windows)
interface nsIAbLDAPAutoCompFormatter : nsILDAPAutoCompFormatter {
  static const char[] IID_STR = NS_IABLDAPAUTOCOMPFORMATTER_IID_STR;
  static const nsIID IID = NS_IABLDAPAUTOCOMPFORMATTER_IID;

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
  nsresult GetNameFormat(nsAString * aNameFormat);
  nsresult SetNameFormat(nsAString * aNameFormat);

  /* attribute AString addressFormat; */
  nsresult GetAddressFormat(nsAString * aAddressFormat);
  nsresult SetAddressFormat(nsAString * aAddressFormat);

  /* attribute AString commentFormat; */
  nsresult GetCommentFormat(nsAString * aCommentFormat);
  nsresult SetCommentFormat(nsAString * aCommentFormat);

}

