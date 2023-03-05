/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICRLInfo.idl
 */

module mozilla.dxpcom.nsICRLInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICRLInfo;


public import mozilla.dxpcom.nsICRLInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICRLInfo */
/**
 * Information on a Certificate Revocation List (CRL)
 * issued by a Aertificate Authority (CA).
 *
 * @status FROZEN
 */
class nsICRLInfoD : public nsISupportsD {

  static const nsIID IID = NS_ICRLINFO_IID;


  alias nsICRLInfo InnerType;

  this(nsICRLInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsICRLInfo opCast() {
    return inner;
  }

  void opAssign(nsICRLInfo value) {
    inner = value;
  }

  /**
   *  The issuing CA's organization.
   */
  /* readonly attribute AString organization; */
  wchar[] Organization(){
    scope auto value = new AString();
    nsresult __result = inner.GetOrganization(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The issuing CA's organizational unit.
   */
  /* readonly attribute AString organizationalUnit; */
  wchar[] OrganizationalUnit(){
    scope auto value = new AString();
    nsresult __result = inner.GetOrganizationalUnit(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The time this CRL was created at.
   */
  /* readonly attribute PRTime lastUpdate; */
  PRTime LastUpdate(){
    PRTime value;
    nsresult __result = inner.GetLastUpdate(&value);
    CheckException(__result);
    return value;
  }

  /**
   *  The time the suggested next update for this CRL.
   */
  /* readonly attribute PRTime nextUpdate; */
  PRTime NextUpdate(){
    PRTime value;
    nsresult __result = inner.GetNextUpdate(&value);
    CheckException(__result);
    return value;
  }

  /**
   *  lastUpdate formatted as a human readable string
   *  formatted according to the environment locale.
   */
  /* readonly attribute AString lastUpdateLocale; */
  wchar[] LastUpdateLocale(){
    scope auto value = new AString();
    nsresult __result = inner.GetLastUpdateLocale(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  nextUpdate formatted as a human readable string
   *  formatted according to the environment locale.
   */
  /* readonly attribute AString nextUpdateLocale; */
  wchar[] NextUpdateLocale(){
    scope auto value = new AString();
    nsresult __result = inner.GetNextUpdateLocale(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The key identifying the CRL in the database.
   */
  /* readonly attribute AString nameInDb; */
  wchar[] NameInDb(){
    scope auto value = new AString();
    nsresult __result = inner.GetNameInDb(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   *  The URL this CRL was last fetched from.
   */
  /* readonly attribute AUTF8String lastFetchURL; */
  char[] LastFetchURL(){
    scope auto value = new ACString();
    nsresult __result = inner.GetLastFetchURL(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsICRLInfo inner;

}

