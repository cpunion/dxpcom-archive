/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINNTPNewsgroupPost.idl
 */

module mozilla.dxpcom.nsINNTPNewsgroupPostD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINNTPNewsgroupPost;


public import mozilla.dxpcom.nsINNTPNewsgroupPostD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsINNTPNewsgroupPost */
class nsINNTPNewsgroupPostD : public nsISupportsD {

  static const nsIID IID = NS_INNTPNEWSGROUPPOST_IID;


  alias nsINNTPNewsgroupPost InnerType;

  this(nsINNTPNewsgroupPost intr){
    super(intr);
    this.inner = intr;
  }

  nsINNTPNewsgroupPost opCast() {
    return inner;
  }

  void opAssign(nsINNTPNewsgroupPost value) {
    inner = value;
  }

  /* attribute string relayVersion; */
  char* RelayVersion(){
    char* value;
    nsresult __result = inner.GetRelayVersion(&value);
    CheckException(__result);
    return value;
  }
  void RelayVersion(char* aRelayVersion){
    nsresult __result = inner.SetRelayVersion(aRelayVersion);
    CheckException(__result);
  }

  /* attribute string postingVersion; */
  char* PostingVersion(){
    char* value;
    nsresult __result = inner.GetPostingVersion(&value);
    CheckException(__result);
    return value;
  }
  void PostingVersion(char* aPostingVersion){
    nsresult __result = inner.SetPostingVersion(aPostingVersion);
    CheckException(__result);
  }

  /* attribute string from; */
  char* From(){
    char* value;
    nsresult __result = inner.GetFrom(&value);
    CheckException(__result);
    return value;
  }
  void From(char* aFrom){
    nsresult __result = inner.SetFrom(aFrom);
    CheckException(__result);
  }

  /* attribute string date; */
  char* Date(){
    char* value;
    nsresult __result = inner.GetDate(&value);
    CheckException(__result);
    return value;
  }
  void Date(char* aDate){
    nsresult __result = inner.SetDate(aDate);
    CheckException(__result);
  }

  /* void AddNewsgroup (in string newsgroupName); */
  void AddNewsgroup(char*newsgroupName){
    nsresult __result = inner.AddNewsgroup(newsgroupName);
    CheckException(__result);
  }

  /* readonly attribute string newsgroups; */
  char* Newsgroups(){
    char* value;
    nsresult __result = inner.GetNewsgroups(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string subject; */
  char* Subject(){
    char* value;
    nsresult __result = inner.GetSubject(&value);
    CheckException(__result);
    return value;
  }
  void Subject(char* aSubject){
    nsresult __result = inner.SetSubject(aSubject);
    CheckException(__result);
  }

  /* attribute string path; */
  char* Path(){
    char* value;
    nsresult __result = inner.GetPath(&value);
    CheckException(__result);
    return value;
  }
  void Path(char* aPath){
    nsresult __result = inner.SetPath(aPath);
    CheckException(__result);
  }

  /* attribute string replyTo; */
  char* ReplyTo(){
    char* value;
    nsresult __result = inner.GetReplyTo(&value);
    CheckException(__result);
    return value;
  }
  void ReplyTo(char* aReplyTo){
    nsresult __result = inner.SetReplyTo(aReplyTo);
    CheckException(__result);
  }

  /* attribute string sender; */
  char* Sender(){
    char* value;
    nsresult __result = inner.GetSender(&value);
    CheckException(__result);
    return value;
  }
  void Sender(char* aSender){
    nsresult __result = inner.SetSender(aSender);
    CheckException(__result);
  }

  /* attribute string followupTo; */
  char* FollowupTo(){
    char* value;
    nsresult __result = inner.GetFollowupTo(&value);
    CheckException(__result);
    return value;
  }
  void FollowupTo(char* aFollowupTo){
    nsresult __result = inner.SetFollowupTo(aFollowupTo);
    CheckException(__result);
  }

  /* attribute string dateRecieved; */
  char* DateRecieved(){
    char* value;
    nsresult __result = inner.GetDateRecieved(&value);
    CheckException(__result);
    return value;
  }
  void DateRecieved(char* aDateRecieved){
    nsresult __result = inner.SetDateRecieved(aDateRecieved);
    CheckException(__result);
  }

  /* attribute string expires; */
  char* Expires(){
    char* value;
    nsresult __result = inner.GetExpires(&value);
    CheckException(__result);
    return value;
  }
  void Expires(char* aExpires){
    nsresult __result = inner.SetExpires(aExpires);
    CheckException(__result);
  }

  /* readonly attribute string references; */
  char* References(){
    char* value;
    nsresult __result = inner.GetReferences(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string control; */
  char* Control(){
    char* value;
    nsresult __result = inner.GetControl(&value);
    CheckException(__result);
    return value;
  }
  void Control(char* aControl){
    nsresult __result = inner.SetControl(aControl);
    CheckException(__result);
  }

  /* attribute string distribution; */
  char* Distribution(){
    char* value;
    nsresult __result = inner.GetDistribution(&value);
    CheckException(__result);
    return value;
  }
  void Distribution(char* aDistribution){
    nsresult __result = inner.SetDistribution(aDistribution);
    CheckException(__result);
  }

  /* attribute string organization; */
  char* Organization(){
    char* value;
    nsresult __result = inner.GetOrganization(&value);
    CheckException(__result);
    return value;
  }
  void Organization(char* aOrganization){
    nsresult __result = inner.SetOrganization(aOrganization);
    CheckException(__result);
  }

  /* attribute string body; */
  char* Body(){
    char* value;
    nsresult __result = inner.GetBody(&value);
    CheckException(__result);
    return value;
  }
  void Body(char* aBody){
    nsresult __result = inner.SetBody(aBody);
    CheckException(__result);
  }

  /* readonly attribute boolean isControl; */
  PRBool IsControl(){
    PRBool value;
    nsresult __result = inner.GetIsControl(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsIFileSpec postMessageFile; */
  nsIFileSpecD  PostMessageFile(){
    nsIFileSpec value;
    nsresult __result = inner.GetPostMessageFile(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void PostMessageFile(nsIFileSpecD  aPostMessageFile){
    nsIFileSpec value;
    nsresult __result = inner.SetPostMessageFile(value);
    CheckException(__result);
  }

private:
  nsINNTPNewsgroupPost inner;

}

