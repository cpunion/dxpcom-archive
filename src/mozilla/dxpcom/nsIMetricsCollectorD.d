/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMetricsCollector.idl
 */

module mozilla.dxpcom.nsIMetricsCollectorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMetricsCollector;


public import mozilla.dxpcom.nsIMetricsCollectorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMetricsCollector */
/**
 * The nsIMetricsCollector interface is implemented by any object that collects
 * data on behalf of the MetricsService.  When the configuration file reequests
 * collector "foo" in namespace "http://www.mozilla.org/metrics",
 * the contract id
 * "@mozilla.org/metrics/collector;1?name=http://www.mozilla.org/metrics:foo"
 * is instantiated (using getSerivce).  The collector is responsible for
 * calling nsIMetricsService::logEvent() when it has something to log.
 */
class nsIMetricsCollectorD : public nsISupportsD {

  static const nsIID IID = NS_IMETRICSCOLLECTOR_IID;


  alias nsIMetricsCollector InnerType;

  this(nsIMetricsCollector intr){
    super(intr);
    this.inner = intr;
  }

  nsIMetricsCollector opCast() {
    return inner;
  }

  void opAssign(nsIMetricsCollector value) {
    inner = value;
  }

  /**
   * Notification that this collector should be enabled.  The collector
   * should register itself for observer and event notifications as
   * necessary.
   */
  /* void onAttach (); */
  void OnAttach(){
    nsresult __result = inner.OnAttach();
    CheckException(__result);
  }

  /**
   * Notification that this collector is no longer enabled.  The collector
   * should unregister itself from observer and event notifications so that
   * the object can be freed.
   */
  /* void onDetach (); */
  void OnDetach(){
    nsresult __result = inner.OnDetach();
    CheckException(__result);
  }

  /**
   * Notification that the MetricsService is starting a new event log.
   * This happens after any onDetach() notifications that result from parsing
   * the new configuration.
   */
  /* void onNewLog (); */
  void OnNewLog(){
    nsresult __result = inner.OnNewLog();
    CheckException(__result);
  }

private:
  nsIMetricsCollector inner;

}

