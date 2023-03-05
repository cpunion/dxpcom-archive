/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbCard.idl
 */

module mozilla.xpcom.nsIAbCard;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAbPreferMailFormat */
const char[] NS_IABPREFERMAILFORMAT_IID_STR = "97448252-f189-11d4-a422-001083003d0c";

const nsIID NS_IABPREFERMAILFORMAT_IID= 
  {0x97448252, 0xf189, 0x11d4, 
    [ 0xa4, 0x22, 0x00, 0x10, 0x83, 0x00, 0x3d, 0x0c ]};

extern(Windows)
interface nsIAbPreferMailFormat {
  static const char[] IID_STR = NS_IABPREFERMAILFORMAT_IID_STR;
  static const nsIID IID = NS_IABPREFERMAILFORMAT_IID;

  enum { unknown = 0U };

  enum { plaintext = 1U };

  enum { html = 2U };

}


/* starting interface:    nsIAbCard */
const char[] NS_IABCARD_IID_STR = "6b46bdd5-10db-44f4-99c9-c7ffe0d3d954";

const nsIID NS_IABCARD_IID= 
  {0x6b46bdd5, 0x10db, 0x44f4, 
    [ 0x99, 0xc9, 0xc7, 0xff, 0xe0, 0xd3, 0xd9, 0x54 ]};

extern(Windows)
interface nsIAbCard : nsISupports {
  static const char[] IID_STR = NS_IABCARD_IID_STR;
  static const nsIID IID = NS_IABCARD_IID;

  /* attribute wstring firstName; */
  nsresult GetFirstName(PRUnichar * *aFirstName);
  nsresult SetFirstName(PRUnichar * aFirstName);

  /* attribute wstring lastName; */
  nsresult GetLastName(PRUnichar * *aLastName);
  nsresult SetLastName(PRUnichar * aLastName);

  /* attribute wstring phoneticFirstName; */
  nsresult GetPhoneticFirstName(PRUnichar * *aPhoneticFirstName);
  nsresult SetPhoneticFirstName(PRUnichar * aPhoneticFirstName);

  /* attribute wstring phoneticLastName; */
  nsresult GetPhoneticLastName(PRUnichar * *aPhoneticLastName);
  nsresult SetPhoneticLastName(PRUnichar * aPhoneticLastName);

  /* attribute wstring displayName; */
  nsresult GetDisplayName(PRUnichar * *aDisplayName);
  nsresult SetDisplayName(PRUnichar * aDisplayName);

  /* attribute wstring nickName; */
  nsresult GetNickName(PRUnichar * *aNickName);
  nsresult SetNickName(PRUnichar * aNickName);

  /* attribute wstring primaryEmail; */
  nsresult GetPrimaryEmail(PRUnichar * *aPrimaryEmail);
  nsresult SetPrimaryEmail(PRUnichar * aPrimaryEmail);

  /* attribute wstring secondEmail; */
  nsresult GetSecondEmail(PRUnichar * *aSecondEmail);
  nsresult SetSecondEmail(PRUnichar * aSecondEmail);

  /* attribute wstring defaultEmail; */
  nsresult GetDefaultEmail(PRUnichar * *aDefaultEmail);
  nsresult SetDefaultEmail(PRUnichar * aDefaultEmail);

  /* attribute wstring cardType; */
  nsresult GetCardType(PRUnichar * *aCardType);
  nsresult SetCardType(PRUnichar * aCardType);

  /* attribute wstring workPhone; */
  nsresult GetWorkPhone(PRUnichar * *aWorkPhone);
  nsresult SetWorkPhone(PRUnichar * aWorkPhone);

  /* attribute wstring homePhone; */
  nsresult GetHomePhone(PRUnichar * *aHomePhone);
  nsresult SetHomePhone(PRUnichar * aHomePhone);

  /* attribute wstring faxNumber; */
  nsresult GetFaxNumber(PRUnichar * *aFaxNumber);
  nsresult SetFaxNumber(PRUnichar * aFaxNumber);

  /* attribute wstring pagerNumber; */
  nsresult GetPagerNumber(PRUnichar * *aPagerNumber);
  nsresult SetPagerNumber(PRUnichar * aPagerNumber);

  /* attribute wstring cellularNumber; */
  nsresult GetCellularNumber(PRUnichar * *aCellularNumber);
  nsresult SetCellularNumber(PRUnichar * aCellularNumber);

  /* attribute wstring workPhoneType; */
  nsresult GetWorkPhoneType(PRUnichar * *aWorkPhoneType);
  nsresult SetWorkPhoneType(PRUnichar * aWorkPhoneType);

  /* attribute wstring homePhoneType; */
  nsresult GetHomePhoneType(PRUnichar * *aHomePhoneType);
  nsresult SetHomePhoneType(PRUnichar * aHomePhoneType);

  /* attribute wstring faxNumberType; */
  nsresult GetFaxNumberType(PRUnichar * *aFaxNumberType);
  nsresult SetFaxNumberType(PRUnichar * aFaxNumberType);

  /* attribute wstring pagerNumberType; */
  nsresult GetPagerNumberType(PRUnichar * *aPagerNumberType);
  nsresult SetPagerNumberType(PRUnichar * aPagerNumberType);

  /* attribute wstring cellularNumberType; */
  nsresult GetCellularNumberType(PRUnichar * *aCellularNumberType);
  nsresult SetCellularNumberType(PRUnichar * aCellularNumberType);

  /* attribute wstring homeAddress; */
  nsresult GetHomeAddress(PRUnichar * *aHomeAddress);
  nsresult SetHomeAddress(PRUnichar * aHomeAddress);

  /* attribute wstring homeAddress2; */
  nsresult GetHomeAddress2(PRUnichar * *aHomeAddress2);
  nsresult SetHomeAddress2(PRUnichar * aHomeAddress2);

  /* attribute wstring homeCity; */
  nsresult GetHomeCity(PRUnichar * *aHomeCity);
  nsresult SetHomeCity(PRUnichar * aHomeCity);

  /* attribute wstring homeState; */
  nsresult GetHomeState(PRUnichar * *aHomeState);
  nsresult SetHomeState(PRUnichar * aHomeState);

  /* attribute wstring homeZipCode; */
  nsresult GetHomeZipCode(PRUnichar * *aHomeZipCode);
  nsresult SetHomeZipCode(PRUnichar * aHomeZipCode);

  /* attribute wstring homeCountry; */
  nsresult GetHomeCountry(PRUnichar * *aHomeCountry);
  nsresult SetHomeCountry(PRUnichar * aHomeCountry);

  /* attribute wstring workAddress; */
  nsresult GetWorkAddress(PRUnichar * *aWorkAddress);
  nsresult SetWorkAddress(PRUnichar * aWorkAddress);

  /* attribute wstring workAddress2; */
  nsresult GetWorkAddress2(PRUnichar * *aWorkAddress2);
  nsresult SetWorkAddress2(PRUnichar * aWorkAddress2);

  /* attribute wstring workCity; */
  nsresult GetWorkCity(PRUnichar * *aWorkCity);
  nsresult SetWorkCity(PRUnichar * aWorkCity);

  /* attribute wstring workState; */
  nsresult GetWorkState(PRUnichar * *aWorkState);
  nsresult SetWorkState(PRUnichar * aWorkState);

  /* attribute wstring workZipCode; */
  nsresult GetWorkZipCode(PRUnichar * *aWorkZipCode);
  nsresult SetWorkZipCode(PRUnichar * aWorkZipCode);

  /* attribute wstring workCountry; */
  nsresult GetWorkCountry(PRUnichar * *aWorkCountry);
  nsresult SetWorkCountry(PRUnichar * aWorkCountry);

  /* attribute wstring jobTitle; */
  nsresult GetJobTitle(PRUnichar * *aJobTitle);
  nsresult SetJobTitle(PRUnichar * aJobTitle);

  /* attribute wstring department; */
  nsresult GetDepartment(PRUnichar * *aDepartment);
  nsresult SetDepartment(PRUnichar * aDepartment);

  /* attribute wstring company; */
  nsresult GetCompany(PRUnichar * *aCompany);
  nsresult SetCompany(PRUnichar * aCompany);

  /* attribute wstring aimScreenName; */
  nsresult GetAimScreenName(PRUnichar * *aAimScreenName);
  nsresult SetAimScreenName(PRUnichar * aAimScreenName);

  /* attribute wstring anniversaryYear; */
  nsresult GetAnniversaryYear(PRUnichar * *aAnniversaryYear);
  nsresult SetAnniversaryYear(PRUnichar * aAnniversaryYear);

  /* attribute wstring anniversaryMonth; */
  nsresult GetAnniversaryMonth(PRUnichar * *aAnniversaryMonth);
  nsresult SetAnniversaryMonth(PRUnichar * aAnniversaryMonth);

  /* attribute wstring anniversaryDay; */
  nsresult GetAnniversaryDay(PRUnichar * *aAnniversaryDay);
  nsresult SetAnniversaryDay(PRUnichar * aAnniversaryDay);

  /* attribute wstring spouseName; */
  nsresult GetSpouseName(PRUnichar * *aSpouseName);
  nsresult SetSpouseName(PRUnichar * aSpouseName);

  /* attribute wstring familyName; */
  nsresult GetFamilyName(PRUnichar * *aFamilyName);
  nsresult SetFamilyName(PRUnichar * aFamilyName);

  /* attribute wstring defaultAddress; */
  nsresult GetDefaultAddress(PRUnichar * *aDefaultAddress);
  nsresult SetDefaultAddress(PRUnichar * aDefaultAddress);

  /* attribute wstring category; */
  nsresult GetCategory(PRUnichar * *aCategory);
  nsresult SetCategory(PRUnichar * aCategory);

  /**
	 * webPage1 is work web page
	 */
  /* attribute wstring webPage1; */
  nsresult GetWebPage1(PRUnichar * *aWebPage1);
  nsresult SetWebPage1(PRUnichar * aWebPage1);

  /**
	 * webPage2 is home web page
	 */
  /* attribute wstring webPage2; */
  nsresult GetWebPage2(PRUnichar * *aWebPage2);
  nsresult SetWebPage2(PRUnichar * aWebPage2);

  /* attribute wstring birthYear; */
  nsresult GetBirthYear(PRUnichar * *aBirthYear);
  nsresult SetBirthYear(PRUnichar * aBirthYear);

  /* attribute wstring birthMonth; */
  nsresult GetBirthMonth(PRUnichar * *aBirthMonth);
  nsresult SetBirthMonth(PRUnichar * aBirthMonth);

  /* attribute wstring birthDay; */
  nsresult GetBirthDay(PRUnichar * *aBirthDay);
  nsresult SetBirthDay(PRUnichar * aBirthDay);

  /* attribute wstring custom1; */
  nsresult GetCustom1(PRUnichar * *aCustom1);
  nsresult SetCustom1(PRUnichar * aCustom1);

  /* attribute wstring custom2; */
  nsresult GetCustom2(PRUnichar * *aCustom2);
  nsresult SetCustom2(PRUnichar * aCustom2);

  /* attribute wstring custom3; */
  nsresult GetCustom3(PRUnichar * *aCustom3);
  nsresult SetCustom3(PRUnichar * aCustom3);

  /* attribute wstring custom4; */
  nsresult GetCustom4(PRUnichar * *aCustom4);
  nsresult SetCustom4(PRUnichar * aCustom4);

  /* attribute wstring notes; */
  nsresult GetNotes(PRUnichar * *aNotes);
  nsresult SetNotes(PRUnichar * aNotes);

  /* attribute unsigned long lastModifiedDate; */
  nsresult GetLastModifiedDate(PRUint32 *aLastModifiedDate);
  nsresult SetLastModifiedDate(PRUint32 aLastModifiedDate);

  /* attribute unsigned long popularityIndex; */
  nsresult GetPopularityIndex(PRUint32 *aPopularityIndex);
  nsresult SetPopularityIndex(PRUint32 aPopularityIndex);

  /* attribute unsigned long preferMailFormat; */
  nsresult GetPreferMailFormat(PRUint32 *aPreferMailFormat);
  nsresult SetPreferMailFormat(PRUint32 aPreferMailFormat);

  /* attribute boolean isMailList; */
  nsresult GetIsMailList(PRBool *aIsMailList);
  nsresult SetIsMailList(PRBool aIsMailList);

  /**
	 * If isMailList is true then mailListURI
	 * will contain the URI of the associated
	 * mail list
	 */
  /* attribute string mailListURI; */
  nsresult GetMailListURI(char * *aMailListURI);
  nsresult SetMailListURI(char * aMailListURI);

  /**
   * allowRemoteContent to be displayed in HTML mail received from this contact.
   */
  /* attribute boolean allowRemoteContent; */
  nsresult GetAllowRemoteContent(PRBool *aAllowRemoteContent);
  nsresult SetAllowRemoteContent(PRBool aAllowRemoteContent);

  /**
   * Card type helper attributes
   */
  /* readonly attribute boolean isANormalCard; */
  nsresult GetIsANormalCard(PRBool *aIsANormalCard);

  /* readonly attribute boolean isASpecialGroup; */
  nsresult GetIsASpecialGroup(PRBool *aIsASpecialGroup);

  /* readonly attribute boolean isAnEmailAddress; */
  nsresult GetIsAnEmailAddress(PRBool *aIsAnEmailAddress);

  /* wstring getCardValue (in string name); */
  nsresult GetCardValue(char *name, PRUnichar **_retval);

  /* void setCardValue (in string attrname, in wstring value); */
  nsresult SetCardValue(char *attrname, PRUnichar *value);

  /* void copy (in nsIAbCard srcCard); */
  nsresult Copy(nsIAbCard srcCard);

  /* void editCardToDatabase (in string uri); */
  nsresult EditCardToDatabase(char *uri);

  /* boolean equals (in nsIAbCard card); */
  nsresult Equals(nsIAbCard card, PRBool *_retval);

  /* string convertToBase64EncodedXML (); */
  nsresult ConvertToBase64EncodedXML(char **_retval);

  /* wstring convertToXMLPrintData (); */
  nsresult ConvertToXMLPrintData(PRUnichar **_retval);

  /* string convertToEscapedVCard (); */
  nsresult ConvertToEscapedVCard(char **_retval);

}

