/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509CertValidity.idl
 */

module mozilla.xpcom.nsIX509CertValidity;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIX509CertValidity */
const char[] NS_IX509CERTVALIDITY_IID_STR = "e701dfd8-1dd1-11b2-a172-ffa6cc6156ad";

const nsIID NS_IX509CERTVALIDITY_IID= 
  {0xe701dfd8, 0x1dd1, 0x11b2, 
    [ 0xa1, 0x72, 0xff, 0xa6, 0xcc, 0x61, 0x56, 0xad ]};

/**
 * Information on the validity period of a X.509 certificate.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIX509CertValidity : nsISupports {
  static const char[] IID_STR = NS_IX509CERTVALIDITY_IID_STR;
  static const nsIID IID = NS_IX509CERTVALIDITY_IID;

  /**
   *  The earliest point in time where
   *  a certificate is valid.
   */
  /* readonly attribute PRTime notBefore; */
  nsresult GetNotBefore(PRTime *aNotBefore);

  /**
   *  "notBefore" attribute formatted as a time string
   *  according to the environment locale,
   *  according to the environment time zone.
   */
  /* readonly attribute AString notBeforeLocalTime; */
  nsresult GetNotBeforeLocalTime(nsAString * aNotBeforeLocalTime);

  /**
   *  The day portion of "notBefore" 
   *  formatted as a time string
   *  according to the environment locale,
   *  according to the environment time zone.
   */
  /* readonly attribute AString notBeforeLocalDay; */
  nsresult GetNotBeforeLocalDay(nsAString * aNotBeforeLocalDay);

  /**
   *  "notBefore" attribute formatted as a string
   *  according to the environment locale,
   *  displayed as GMT / UTC.
   */
  /* readonly attribute AString notBeforeGMT; */
  nsresult GetNotBeforeGMT(nsAString * aNotBeforeGMT);

  /**
   *  The latest point in time where
   *  a certificate is valid.
   */
  /* readonly attribute PRTime notAfter; */
  nsresult GetNotAfter(PRTime *aNotAfter);

  /**
   *  "notAfter" attribute formatted as a time string
   *  according to the environment locale,
   *  according to the environment time zone.
   */
  /* readonly attribute AString notAfterLocalTime; */
  nsresult GetNotAfterLocalTime(nsAString * aNotAfterLocalTime);

  /**
   *  The day portion of "notAfter" 
   *  formatted as a time string
   *  according to the environment locale,
   *  according to the environment time zone.
   */
  /* readonly attribute AString notAfterLocalDay; */
  nsresult GetNotAfterLocalDay(nsAString * aNotAfterLocalDay);

  /**
   *  "notAfter" attribute formatted as a time string
   *  according to the environment locale,
   *  displayed as GMT / UTC.
   */
  /* readonly attribute AString notAfterGMT; */
  nsresult GetNotAfterGMT(nsAString * aNotAfterGMT);

}

