/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICRLInfo.idl
 */

module mozilla.xpcom.nsICRLInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICRLInfo */
const char[] NS_ICRLINFO_IID_STR = "c185d920-4a3e-11d5-ba27-00108303b117";

const nsIID NS_ICRLINFO_IID= 
  {0xc185d920, 0x4a3e, 0x11d5, 
    [ 0xba, 0x27, 0x00, 0x10, 0x83, 0x03, 0xb1, 0x17 ]};

/**
 * Information on a Certificate Revocation List (CRL)
 * issued by a Aertificate Authority (CA).
 *
 * @status FROZEN
 */
extern(Windows)
interface nsICRLInfo : nsISupports {
  static const char[] IID_STR = NS_ICRLINFO_IID_STR;
  static const nsIID IID = NS_ICRLINFO_IID;

  /**
   *  The issuing CA's organization.
   */
  /* readonly attribute AString organization; */
  nsresult GetOrganization(nsAString * aOrganization);

  /**
   *  The issuing CA's organizational unit.
   */
  /* readonly attribute AString organizationalUnit; */
  nsresult GetOrganizationalUnit(nsAString * aOrganizationalUnit);

  /**
   *  The time this CRL was created at.
   */
  /* readonly attribute PRTime lastUpdate; */
  nsresult GetLastUpdate(PRTime *aLastUpdate);

  /**
   *  The time the suggested next update for this CRL.
   */
  /* readonly attribute PRTime nextUpdate; */
  nsresult GetNextUpdate(PRTime *aNextUpdate);

  /**
   *  lastUpdate formatted as a human readable string
   *  formatted according to the environment locale.
   */
  /* readonly attribute AString lastUpdateLocale; */
  nsresult GetLastUpdateLocale(nsAString * aLastUpdateLocale);

  /**
   *  nextUpdate formatted as a human readable string
   *  formatted according to the environment locale.
   */
  /* readonly attribute AString nextUpdateLocale; */
  nsresult GetNextUpdateLocale(nsAString * aNextUpdateLocale);

  /**
   *  The key identifying the CRL in the database.
   */
  /* readonly attribute AString nameInDb; */
  nsresult GetNameInDb(nsAString * aNameInDb);

  /**
   *  The URL this CRL was last fetched from.
   */
  /* readonly attribute AUTF8String lastFetchURL; */
  nsresult GetLastFetchURL(nsACString * aLastFetchURL);

}

