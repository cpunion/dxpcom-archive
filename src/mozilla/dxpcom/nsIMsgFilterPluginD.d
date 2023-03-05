/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilterPlugin.idl
 */

module mozilla.dxpcom.nsIMsgFilterPluginD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFilterPlugin;


public import mozilla.dxpcom.nsIMsgFilterPluginD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIMsgFilterHitNotify;

public import mozilla.dxpcom.nsIMsgFilterHitNotifyD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;


/* starting wrapper class:    nsIMsgFilterPlugin */
/**
 * This interface is still very much under development, and is not yet stable.
 */
class nsIMsgFilterPluginD : public nsISupportsD {

  static const nsIID IID = NS_IMSGFILTERPLUGIN_IID;


  alias nsIMsgFilterPlugin InnerType;

  this(nsIMsgFilterPlugin intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFilterPlugin opCast() {
    return inner;
  }

  void opAssign(nsIMsgFilterPlugin value) {
    inner = value;
  }

  /**
     * Do any necessary cleanup: flush and close any open files, etc.
     */
  /* void shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

  /**
     * Some protocols (ie IMAP) can, as an optimization, avoid
     * downloading all message header lines.  If your plugin doesn't need
     * any more than the minimal set, it can return false for this attribute.
     */
  /* readonly attribute boolean shouldDownloadAllHeaders; */
  PRBool ShouldDownloadAllHeaders(){
    PRBool value;
    nsresult __result = inner.GetShouldDownloadAllHeaders(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMsgFilterPlugin inner;

}


/* starting wrapper class:    nsIJunkMailClassificationListener */
/**
 * Rather than passing low level details about scores and such, abstract
 * this away by informing a listener of a message's classification, which
 * can be one of 3 values:  UNCLASSIFIED, GOOD, or JUNK.
 */
class nsIJunkMailClassificationListenerD : public nsISupportsD {

  static const nsIID IID = NS_IJUNKMAILCLASSIFICATIONLISTENER_IID;


  alias nsIJunkMailClassificationListener InnerType;

  this(nsIJunkMailClassificationListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIJunkMailClassificationListener opCast() {
    return inner;
  }

  void opAssign(nsIJunkMailClassificationListener value) {
    inner = value;
  }

  /* void onMessageClassified (in string aMsgURI, in nsMsgJunkStatus aClassification); */
  void OnMessageClassified(char*aMsgURI, nsMsgJunkStatus aClassification){
    nsresult __result = inner.OnMessageClassified(aMsgURI, aClassification);
    CheckException(__result);
  }

private:
  nsIJunkMailClassificationListener inner;

}


/* starting wrapper class:    nsIJunkMailPlugin */
class nsIJunkMailPluginD : public nsIMsgFilterPluginD {

  static const nsIID IID = NS_IJUNKMAILPLUGIN_IID;


  alias nsIJunkMailPlugin InnerType;

  this(nsIJunkMailPlugin intr){
    super(intr);
    this.inner = intr;
  }

  nsIJunkMailPlugin opCast() {
    return inner;
  }

  void opAssign(nsIJunkMailPlugin value) {
    inner = value;
  }

  /**
     * Message classifications.
     */
  enum { UNCLASSIFIED = 0U }

  enum { GOOD = 1U }

  enum { JUNK = 2U }

  /**
     * Given a message URI, determine what its current classification is
     * according to the current training set.
     */
  /* void classifyMessage (in string aMsgURI, in nsIMsgWindow aMsgWindow, in nsIJunkMailClassificationListener aListener); */
  void ClassifyMessage(char*aMsgURI, nsIMsgWindowD aMsgWindow, nsIJunkMailClassificationListenerD aListener){
    nsresult __result = inner.ClassifyMessage(aMsgURI, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aListener ? cast(nsIJunkMailClassificationListener)aListener : null);
    CheckException(__result);
  }

  /* void classifyMessages (in unsigned long aCount, [array, size_is (aCount)] in string aMsgURIs, in nsIMsgWindow aMsgWindow, in nsIJunkMailClassificationListener aListener); */
  void ClassifyMessages(PRUint32 aCount, char**aMsgURIs, nsIMsgWindowD aMsgWindow, nsIJunkMailClassificationListenerD aListener){
    nsresult __result = inner.ClassifyMessages(aCount, aMsgURIs, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aListener ? cast(nsIJunkMailClassificationListener)aListener : null);
    CheckException(__result);
  }

  /**
     * Called when a user forces the classification of a message. Should
     * cause the training set to be updated appropriately.
     *
     * @arg aMsgURI                     URI of the message to be classified
     * @arg aOldUserClassification      Was it previous manually classified 
     *                                  by the user?  If so, how?
     * @arg aNewClassification          New manual classification.
     * @arg aListener                   Callback
     */
  /* void setMessageClassification (in string aMsgURI, in nsMsgJunkStatus aOldUserClassification, in nsMsgJunkStatus aNewClassification, in nsIMsgWindow aMsgWindow, in nsIJunkMailClassificationListener aListener); */
  void SetMessageClassification(char*aMsgURI, nsMsgJunkStatus aOldUserClassification, nsMsgJunkStatus aNewClassification, nsIMsgWindowD aMsgWindow, nsIJunkMailClassificationListenerD aListener){
    nsresult __result = inner.SetMessageClassification(aMsgURI, aOldUserClassification, aNewClassification, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aListener ? cast(nsIJunkMailClassificationListener)aListener : null);
    CheckException(__result);
  }

  /* readonly attribute boolean userHasClassified; */
  PRBool UserHasClassified(){
    PRBool value;
    nsresult __result = inner.GetUserHasClassified(&value);
    CheckException(__result);
    return value;
  }

  /** Removes the training file and clears out any in memory training tokens. 
        User must retrain after doing this.
    **/
  /* void resetTrainingData (); */
  void ResetTrainingData(){
    nsresult __result = inner.ResetTrainingData();
    CheckException(__result);
  }

private:
  nsIJunkMailPlugin inner;

}

