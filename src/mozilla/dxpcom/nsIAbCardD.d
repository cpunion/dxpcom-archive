/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbCard.idl
 */

module mozilla.dxpcom.nsIAbCardD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbCard;


public import mozilla.dxpcom.nsIAbCardD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAbPreferMailFormat */
class nsIAbPreferMailFormatD {

  static const nsIID IID = NS_IABPREFERMAILFORMAT_IID;


  alias nsIAbPreferMailFormat InnerType;

  this(nsIAbPreferMailFormat intr){
    this.inner = intr;
  }

  nsIAbPreferMailFormat opCast() {
    return inner;
  }

  void opAssign(nsIAbPreferMailFormat value) {
    inner = value;
  }

  enum { unknown = 0U }

  enum { plaintext = 1U }

  enum { html = 2U }

private:
  nsIAbPreferMailFormat inner;

}


/* starting wrapper class:    nsIAbCard */
class nsIAbCardD : public nsISupportsD {

  static const nsIID IID = NS_IABCARD_IID;


  alias nsIAbCard InnerType;

  this(nsIAbCard intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbCard opCast() {
    return inner;
  }

  void opAssign(nsIAbCard value) {
    inner = value;
  }

  /* attribute wstring firstName; */
  PRUnichar* FirstName(){
    PRUnichar* value;
    nsresult __result = inner.GetFirstName(&value);
    CheckException(__result);
    return value;
  }
  void FirstName(PRUnichar* aFirstName){
    nsresult __result = inner.SetFirstName(aFirstName);
    CheckException(__result);
  }

  /* attribute wstring lastName; */
  PRUnichar* LastName(){
    PRUnichar* value;
    nsresult __result = inner.GetLastName(&value);
    CheckException(__result);
    return value;
  }
  void LastName(PRUnichar* aLastName){
    nsresult __result = inner.SetLastName(aLastName);
    CheckException(__result);
  }

  /* attribute wstring phoneticFirstName; */
  PRUnichar* PhoneticFirstName(){
    PRUnichar* value;
    nsresult __result = inner.GetPhoneticFirstName(&value);
    CheckException(__result);
    return value;
  }
  void PhoneticFirstName(PRUnichar* aPhoneticFirstName){
    nsresult __result = inner.SetPhoneticFirstName(aPhoneticFirstName);
    CheckException(__result);
  }

  /* attribute wstring phoneticLastName; */
  PRUnichar* PhoneticLastName(){
    PRUnichar* value;
    nsresult __result = inner.GetPhoneticLastName(&value);
    CheckException(__result);
    return value;
  }
  void PhoneticLastName(PRUnichar* aPhoneticLastName){
    nsresult __result = inner.SetPhoneticLastName(aPhoneticLastName);
    CheckException(__result);
  }

  /* attribute wstring displayName; */
  PRUnichar* DisplayName(){
    PRUnichar* value;
    nsresult __result = inner.GetDisplayName(&value);
    CheckException(__result);
    return value;
  }
  void DisplayName(PRUnichar* aDisplayName){
    nsresult __result = inner.SetDisplayName(aDisplayName);
    CheckException(__result);
  }

  /* attribute wstring nickName; */
  PRUnichar* NickName(){
    PRUnichar* value;
    nsresult __result = inner.GetNickName(&value);
    CheckException(__result);
    return value;
  }
  void NickName(PRUnichar* aNickName){
    nsresult __result = inner.SetNickName(aNickName);
    CheckException(__result);
  }

  /* attribute wstring primaryEmail; */
  PRUnichar* PrimaryEmail(){
    PRUnichar* value;
    nsresult __result = inner.GetPrimaryEmail(&value);
    CheckException(__result);
    return value;
  }
  void PrimaryEmail(PRUnichar* aPrimaryEmail){
    nsresult __result = inner.SetPrimaryEmail(aPrimaryEmail);
    CheckException(__result);
  }

  /* attribute wstring secondEmail; */
  PRUnichar* SecondEmail(){
    PRUnichar* value;
    nsresult __result = inner.GetSecondEmail(&value);
    CheckException(__result);
    return value;
  }
  void SecondEmail(PRUnichar* aSecondEmail){
    nsresult __result = inner.SetSecondEmail(aSecondEmail);
    CheckException(__result);
  }

  /* attribute wstring defaultEmail; */
  PRUnichar* DefaultEmail(){
    PRUnichar* value;
    nsresult __result = inner.GetDefaultEmail(&value);
    CheckException(__result);
    return value;
  }
  void DefaultEmail(PRUnichar* aDefaultEmail){
    nsresult __result = inner.SetDefaultEmail(aDefaultEmail);
    CheckException(__result);
  }

  /* attribute wstring cardType; */
  PRUnichar* CardType(){
    PRUnichar* value;
    nsresult __result = inner.GetCardType(&value);
    CheckException(__result);
    return value;
  }
  void CardType(PRUnichar* aCardType){
    nsresult __result = inner.SetCardType(aCardType);
    CheckException(__result);
  }

  /* attribute wstring workPhone; */
  PRUnichar* WorkPhone(){
    PRUnichar* value;
    nsresult __result = inner.GetWorkPhone(&value);
    CheckException(__result);
    return value;
  }
  void WorkPhone(PRUnichar* aWorkPhone){
    nsresult __result = inner.SetWorkPhone(aWorkPhone);
    CheckException(__result);
  }

  /* attribute wstring homePhone; */
  PRUnichar* HomePhone(){
    PRUnichar* value;
    nsresult __result = inner.GetHomePhone(&value);
    CheckException(__result);
    return value;
  }
  void HomePhone(PRUnichar* aHomePhone){
    nsresult __result = inner.SetHomePhone(aHomePhone);
    CheckException(__result);
  }

  /* attribute wstring faxNumber; */
  PRUnichar* FaxNumber(){
    PRUnichar* value;
    nsresult __result = inner.GetFaxNumber(&value);
    CheckException(__result);
    return value;
  }
  void FaxNumber(PRUnichar* aFaxNumber){
    nsresult __result = inner.SetFaxNumber(aFaxNumber);
    CheckException(__result);
  }

  /* attribute wstring pagerNumber; */
  PRUnichar* PagerNumber(){
    PRUnichar* value;
    nsresult __result = inner.GetPagerNumber(&value);
    CheckException(__result);
    return value;
  }
  void PagerNumber(PRUnichar* aPagerNumber){
    nsresult __result = inner.SetPagerNumber(aPagerNumber);
    CheckException(__result);
  }

  /* attribute wstring cellularNumber; */
  PRUnichar* CellularNumber(){
    PRUnichar* value;
    nsresult __result = inner.GetCellularNumber(&value);
    CheckException(__result);
    return value;
  }
  void CellularNumber(PRUnichar* aCellularNumber){
    nsresult __result = inner.SetCellularNumber(aCellularNumber);
    CheckException(__result);
  }

  /* attribute wstring workPhoneType; */
  PRUnichar* WorkPhoneType(){
    PRUnichar* value;
    nsresult __result = inner.GetWorkPhoneType(&value);
    CheckException(__result);
    return value;
  }
  void WorkPhoneType(PRUnichar* aWorkPhoneType){
    nsresult __result = inner.SetWorkPhoneType(aWorkPhoneType);
    CheckException(__result);
  }

  /* attribute wstring homePhoneType; */
  PRUnichar* HomePhoneType(){
    PRUnichar* value;
    nsresult __result = inner.GetHomePhoneType(&value);
    CheckException(__result);
    return value;
  }
  void HomePhoneType(PRUnichar* aHomePhoneType){
    nsresult __result = inner.SetHomePhoneType(aHomePhoneType);
    CheckException(__result);
  }

  /* attribute wstring faxNumberType; */
  PRUnichar* FaxNumberType(){
    PRUnichar* value;
    nsresult __result = inner.GetFaxNumberType(&value);
    CheckException(__result);
    return value;
  }
  void FaxNumberType(PRUnichar* aFaxNumberType){
    nsresult __result = inner.SetFaxNumberType(aFaxNumberType);
    CheckException(__result);
  }

  /* attribute wstring pagerNumberType; */
  PRUnichar* PagerNumberType(){
    PRUnichar* value;
    nsresult __result = inner.GetPagerNumberType(&value);
    CheckException(__result);
    return value;
  }
  void PagerNumberType(PRUnichar* aPagerNumberType){
    nsresult __result = inner.SetPagerNumberType(aPagerNumberType);
    CheckException(__result);
  }

  /* attribute wstring cellularNumberType; */
  PRUnichar* CellularNumberType(){
    PRUnichar* value;
    nsresult __result = inner.GetCellularNumberType(&value);
    CheckException(__result);
    return value;
  }
  void CellularNumberType(PRUnichar* aCellularNumberType){
    nsresult __result = inner.SetCellularNumberType(aCellularNumberType);
    CheckException(__result);
  }

  /* attribute wstring homeAddress; */
  PRUnichar* HomeAddress(){
    PRUnichar* value;
    nsresult __result = inner.GetHomeAddress(&value);
    CheckException(__result);
    return value;
  }
  void HomeAddress(PRUnichar* aHomeAddress){
    nsresult __result = inner.SetHomeAddress(aHomeAddress);
    CheckException(__result);
  }

  /* attribute wstring homeAddress2; */
  PRUnichar* HomeAddress2(){
    PRUnichar* value;
    nsresult __result = inner.GetHomeAddress2(&value);
    CheckException(__result);
    return value;
  }
  void HomeAddress2(PRUnichar* aHomeAddress2){
    nsresult __result = inner.SetHomeAddress2(aHomeAddress2);
    CheckException(__result);
  }

  /* attribute wstring homeCity; */
  PRUnichar* HomeCity(){
    PRUnichar* value;
    nsresult __result = inner.GetHomeCity(&value);
    CheckException(__result);
    return value;
  }
  void HomeCity(PRUnichar* aHomeCity){
    nsresult __result = inner.SetHomeCity(aHomeCity);
    CheckException(__result);
  }

  /* attribute wstring homeState; */
  PRUnichar* HomeState(){
    PRUnichar* value;
    nsresult __result = inner.GetHomeState(&value);
    CheckException(__result);
    return value;
  }
  void HomeState(PRUnichar* aHomeState){
    nsresult __result = inner.SetHomeState(aHomeState);
    CheckException(__result);
  }

  /* attribute wstring homeZipCode; */
  PRUnichar* HomeZipCode(){
    PRUnichar* value;
    nsresult __result = inner.GetHomeZipCode(&value);
    CheckException(__result);
    return value;
  }
  void HomeZipCode(PRUnichar* aHomeZipCode){
    nsresult __result = inner.SetHomeZipCode(aHomeZipCode);
    CheckException(__result);
  }

  /* attribute wstring homeCountry; */
  PRUnichar* HomeCountry(){
    PRUnichar* value;
    nsresult __result = inner.GetHomeCountry(&value);
    CheckException(__result);
    return value;
  }
  void HomeCountry(PRUnichar* aHomeCountry){
    nsresult __result = inner.SetHomeCountry(aHomeCountry);
    CheckException(__result);
  }

  /* attribute wstring workAddress; */
  PRUnichar* WorkAddress(){
    PRUnichar* value;
    nsresult __result = inner.GetWorkAddress(&value);
    CheckException(__result);
    return value;
  }
  void WorkAddress(PRUnichar* aWorkAddress){
    nsresult __result = inner.SetWorkAddress(aWorkAddress);
    CheckException(__result);
  }

  /* attribute wstring workAddress2; */
  PRUnichar* WorkAddress2(){
    PRUnichar* value;
    nsresult __result = inner.GetWorkAddress2(&value);
    CheckException(__result);
    return value;
  }
  void WorkAddress2(PRUnichar* aWorkAddress2){
    nsresult __result = inner.SetWorkAddress2(aWorkAddress2);
    CheckException(__result);
  }

  /* attribute wstring workCity; */
  PRUnichar* WorkCity(){
    PRUnichar* value;
    nsresult __result = inner.GetWorkCity(&value);
    CheckException(__result);
    return value;
  }
  void WorkCity(PRUnichar* aWorkCity){
    nsresult __result = inner.SetWorkCity(aWorkCity);
    CheckException(__result);
  }

  /* attribute wstring workState; */
  PRUnichar* WorkState(){
    PRUnichar* value;
    nsresult __result = inner.GetWorkState(&value);
    CheckException(__result);
    return value;
  }
  void WorkState(PRUnichar* aWorkState){
    nsresult __result = inner.SetWorkState(aWorkState);
    CheckException(__result);
  }

  /* attribute wstring workZipCode; */
  PRUnichar* WorkZipCode(){
    PRUnichar* value;
    nsresult __result = inner.GetWorkZipCode(&value);
    CheckException(__result);
    return value;
  }
  void WorkZipCode(PRUnichar* aWorkZipCode){
    nsresult __result = inner.SetWorkZipCode(aWorkZipCode);
    CheckException(__result);
  }

  /* attribute wstring workCountry; */
  PRUnichar* WorkCountry(){
    PRUnichar* value;
    nsresult __result = inner.GetWorkCountry(&value);
    CheckException(__result);
    return value;
  }
  void WorkCountry(PRUnichar* aWorkCountry){
    nsresult __result = inner.SetWorkCountry(aWorkCountry);
    CheckException(__result);
  }

  /* attribute wstring jobTitle; */
  PRUnichar* JobTitle(){
    PRUnichar* value;
    nsresult __result = inner.GetJobTitle(&value);
    CheckException(__result);
    return value;
  }
  void JobTitle(PRUnichar* aJobTitle){
    nsresult __result = inner.SetJobTitle(aJobTitle);
    CheckException(__result);
  }

  /* attribute wstring department; */
  PRUnichar* Department(){
    PRUnichar* value;
    nsresult __result = inner.GetDepartment(&value);
    CheckException(__result);
    return value;
  }
  void Department(PRUnichar* aDepartment){
    nsresult __result = inner.SetDepartment(aDepartment);
    CheckException(__result);
  }

  /* attribute wstring company; */
  PRUnichar* Company(){
    PRUnichar* value;
    nsresult __result = inner.GetCompany(&value);
    CheckException(__result);
    return value;
  }
  void Company(PRUnichar* aCompany){
    nsresult __result = inner.SetCompany(aCompany);
    CheckException(__result);
  }

  /* attribute wstring aimScreenName; */
  PRUnichar* AimScreenName(){
    PRUnichar* value;
    nsresult __result = inner.GetAimScreenName(&value);
    CheckException(__result);
    return value;
  }
  void AimScreenName(PRUnichar* aAimScreenName){
    nsresult __result = inner.SetAimScreenName(aAimScreenName);
    CheckException(__result);
  }

  /* attribute wstring anniversaryYear; */
  PRUnichar* AnniversaryYear(){
    PRUnichar* value;
    nsresult __result = inner.GetAnniversaryYear(&value);
    CheckException(__result);
    return value;
  }
  void AnniversaryYear(PRUnichar* aAnniversaryYear){
    nsresult __result = inner.SetAnniversaryYear(aAnniversaryYear);
    CheckException(__result);
  }

  /* attribute wstring anniversaryMonth; */
  PRUnichar* AnniversaryMonth(){
    PRUnichar* value;
    nsresult __result = inner.GetAnniversaryMonth(&value);
    CheckException(__result);
    return value;
  }
  void AnniversaryMonth(PRUnichar* aAnniversaryMonth){
    nsresult __result = inner.SetAnniversaryMonth(aAnniversaryMonth);
    CheckException(__result);
  }

  /* attribute wstring anniversaryDay; */
  PRUnichar* AnniversaryDay(){
    PRUnichar* value;
    nsresult __result = inner.GetAnniversaryDay(&value);
    CheckException(__result);
    return value;
  }
  void AnniversaryDay(PRUnichar* aAnniversaryDay){
    nsresult __result = inner.SetAnniversaryDay(aAnniversaryDay);
    CheckException(__result);
  }

  /* attribute wstring spouseName; */
  PRUnichar* SpouseName(){
    PRUnichar* value;
    nsresult __result = inner.GetSpouseName(&value);
    CheckException(__result);
    return value;
  }
  void SpouseName(PRUnichar* aSpouseName){
    nsresult __result = inner.SetSpouseName(aSpouseName);
    CheckException(__result);
  }

  /* attribute wstring familyName; */
  PRUnichar* FamilyName(){
    PRUnichar* value;
    nsresult __result = inner.GetFamilyName(&value);
    CheckException(__result);
    return value;
  }
  void FamilyName(PRUnichar* aFamilyName){
    nsresult __result = inner.SetFamilyName(aFamilyName);
    CheckException(__result);
  }

  /* attribute wstring defaultAddress; */
  PRUnichar* DefaultAddress(){
    PRUnichar* value;
    nsresult __result = inner.GetDefaultAddress(&value);
    CheckException(__result);
    return value;
  }
  void DefaultAddress(PRUnichar* aDefaultAddress){
    nsresult __result = inner.SetDefaultAddress(aDefaultAddress);
    CheckException(__result);
  }

  /* attribute wstring category; */
  PRUnichar* Category(){
    PRUnichar* value;
    nsresult __result = inner.GetCategory(&value);
    CheckException(__result);
    return value;
  }
  void Category(PRUnichar* aCategory){
    nsresult __result = inner.SetCategory(aCategory);
    CheckException(__result);
  }

  /**
	 * webPage1 is work web page
	 */
  /* attribute wstring webPage1; */
  PRUnichar* WebPage1(){
    PRUnichar* value;
    nsresult __result = inner.GetWebPage1(&value);
    CheckException(__result);
    return value;
  }
  void WebPage1(PRUnichar* aWebPage1){
    nsresult __result = inner.SetWebPage1(aWebPage1);
    CheckException(__result);
  }

  /**
	 * webPage2 is home web page
	 */
  /* attribute wstring webPage2; */
  PRUnichar* WebPage2(){
    PRUnichar* value;
    nsresult __result = inner.GetWebPage2(&value);
    CheckException(__result);
    return value;
  }
  void WebPage2(PRUnichar* aWebPage2){
    nsresult __result = inner.SetWebPage2(aWebPage2);
    CheckException(__result);
  }

  /* attribute wstring birthYear; */
  PRUnichar* BirthYear(){
    PRUnichar* value;
    nsresult __result = inner.GetBirthYear(&value);
    CheckException(__result);
    return value;
  }
  void BirthYear(PRUnichar* aBirthYear){
    nsresult __result = inner.SetBirthYear(aBirthYear);
    CheckException(__result);
  }

  /* attribute wstring birthMonth; */
  PRUnichar* BirthMonth(){
    PRUnichar* value;
    nsresult __result = inner.GetBirthMonth(&value);
    CheckException(__result);
    return value;
  }
  void BirthMonth(PRUnichar* aBirthMonth){
    nsresult __result = inner.SetBirthMonth(aBirthMonth);
    CheckException(__result);
  }

  /* attribute wstring birthDay; */
  PRUnichar* BirthDay(){
    PRUnichar* value;
    nsresult __result = inner.GetBirthDay(&value);
    CheckException(__result);
    return value;
  }
  void BirthDay(PRUnichar* aBirthDay){
    nsresult __result = inner.SetBirthDay(aBirthDay);
    CheckException(__result);
  }

  /* attribute wstring custom1; */
  PRUnichar* Custom1(){
    PRUnichar* value;
    nsresult __result = inner.GetCustom1(&value);
    CheckException(__result);
    return value;
  }
  void Custom1(PRUnichar* aCustom1){
    nsresult __result = inner.SetCustom1(aCustom1);
    CheckException(__result);
  }

  /* attribute wstring custom2; */
  PRUnichar* Custom2(){
    PRUnichar* value;
    nsresult __result = inner.GetCustom2(&value);
    CheckException(__result);
    return value;
  }
  void Custom2(PRUnichar* aCustom2){
    nsresult __result = inner.SetCustom2(aCustom2);
    CheckException(__result);
  }

  /* attribute wstring custom3; */
  PRUnichar* Custom3(){
    PRUnichar* value;
    nsresult __result = inner.GetCustom3(&value);
    CheckException(__result);
    return value;
  }
  void Custom3(PRUnichar* aCustom3){
    nsresult __result = inner.SetCustom3(aCustom3);
    CheckException(__result);
  }

  /* attribute wstring custom4; */
  PRUnichar* Custom4(){
    PRUnichar* value;
    nsresult __result = inner.GetCustom4(&value);
    CheckException(__result);
    return value;
  }
  void Custom4(PRUnichar* aCustom4){
    nsresult __result = inner.SetCustom4(aCustom4);
    CheckException(__result);
  }

  /* attribute wstring notes; */
  PRUnichar* Notes(){
    PRUnichar* value;
    nsresult __result = inner.GetNotes(&value);
    CheckException(__result);
    return value;
  }
  void Notes(PRUnichar* aNotes){
    nsresult __result = inner.SetNotes(aNotes);
    CheckException(__result);
  }

  /* attribute unsigned long lastModifiedDate; */
  PRUint32 LastModifiedDate(){
    PRUint32 value;
    nsresult __result = inner.GetLastModifiedDate(&value);
    CheckException(__result);
    return value;
  }
  void LastModifiedDate(PRUint32 aLastModifiedDate){
    nsresult __result = inner.SetLastModifiedDate(aLastModifiedDate);
    CheckException(__result);
  }

  /* attribute unsigned long popularityIndex; */
  PRUint32 PopularityIndex(){
    PRUint32 value;
    nsresult __result = inner.GetPopularityIndex(&value);
    CheckException(__result);
    return value;
  }
  void PopularityIndex(PRUint32 aPopularityIndex){
    nsresult __result = inner.SetPopularityIndex(aPopularityIndex);
    CheckException(__result);
  }

  /* attribute unsigned long preferMailFormat; */
  PRUint32 PreferMailFormat(){
    PRUint32 value;
    nsresult __result = inner.GetPreferMailFormat(&value);
    CheckException(__result);
    return value;
  }
  void PreferMailFormat(PRUint32 aPreferMailFormat){
    nsresult __result = inner.SetPreferMailFormat(aPreferMailFormat);
    CheckException(__result);
  }

  /* attribute boolean isMailList; */
  PRBool IsMailList(){
    PRBool value;
    nsresult __result = inner.GetIsMailList(&value);
    CheckException(__result);
    return value;
  }
  void IsMailList(PRBool aIsMailList){
    nsresult __result = inner.SetIsMailList(aIsMailList);
    CheckException(__result);
  }

  /**
	 * If isMailList is true then mailListURI
	 * will contain the URI of the associated
	 * mail list
	 */
  /* attribute string mailListURI; */
  char* MailListURI(){
    char* value;
    nsresult __result = inner.GetMailListURI(&value);
    CheckException(__result);
    return value;
  }
  void MailListURI(char* aMailListURI){
    nsresult __result = inner.SetMailListURI(aMailListURI);
    CheckException(__result);
  }

  /**
   * allowRemoteContent to be displayed in HTML mail received from this contact.
   */
  /* attribute boolean allowRemoteContent; */
  PRBool AllowRemoteContent(){
    PRBool value;
    nsresult __result = inner.GetAllowRemoteContent(&value);
    CheckException(__result);
    return value;
  }
  void AllowRemoteContent(PRBool aAllowRemoteContent){
    nsresult __result = inner.SetAllowRemoteContent(aAllowRemoteContent);
    CheckException(__result);
  }

  /**
   * Card type helper attributes
   */
  /* readonly attribute boolean isANormalCard; */
  PRBool IsANormalCard(){
    PRBool value;
    nsresult __result = inner.GetIsANormalCard(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean isASpecialGroup; */
  PRBool IsASpecialGroup(){
    PRBool value;
    nsresult __result = inner.GetIsASpecialGroup(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean isAnEmailAddress; */
  PRBool IsAnEmailAddress(){
    PRBool value;
    nsresult __result = inner.GetIsAnEmailAddress(&value);
    CheckException(__result);
    return value;
  }

  /* wstring getCardValue (in string name); */
  PRUnichar* GetCardValue(char*name){
    PRUnichar* _retval;
    nsresult __result = inner.GetCardValue(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCardValue (in string attrname, in wstring value); */
  void SetCardValue(char*attrname, PRUnichar*value){
    nsresult __result = inner.SetCardValue(attrname, value);
    CheckException(__result);
  }

  /* void copy (in nsIAbCard srcCard); */
  void Copy(nsIAbCardD srcCard){
    nsresult __result = inner.Copy(srcCard ? cast(nsIAbCard)srcCard : null);
    CheckException(__result);
  }

  /* void editCardToDatabase (in string uri); */
  void EditCardToDatabase(char*uri){
    nsresult __result = inner.EditCardToDatabase(uri);
    CheckException(__result);
  }

  /* boolean equals (in nsIAbCard card); */
  PRBool Equals(nsIAbCardD card){
    PRBool _retval;
    nsresult __result = inner.Equals(card ? cast(nsIAbCard)card : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string convertToBase64EncodedXML (); */
  char* ConvertToBase64EncodedXML(){
    char* _retval;
    nsresult __result = inner.ConvertToBase64EncodedXML(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring convertToXMLPrintData (); */
  PRUnichar* ConvertToXMLPrintData(){
    PRUnichar* _retval;
    nsresult __result = inner.ConvertToXMLPrintData(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* string convertToEscapedVCard (); */
  char* ConvertToEscapedVCard(){
    char* _retval;
    nsresult __result = inner.ConvertToEscapedVCard(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAbCard inner;

}

