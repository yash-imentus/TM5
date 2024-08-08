//+------------------------------------------------------------------+
//|                                                PriceAlertEA.mq5  |
//|                        Continuous Price Alert                    |
//+------------------------------------------------------------------+
#property strict

// Input parameters
input double alert_threshold = 146.190;  // Alert threshold price

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   // Initialization code
   Print("Price Alert EA initialized.");
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   // Cleanup code
   Print("Price Alert EA deinitialized.");
  }

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   // Get the current ask price
   double current_price = SymbolInfoDouble(_Symbol, SYMBOL_ASK);

   // Check if the current price exceeds the alert threshold
   if (current_price > alert_threshold)
     {
      // Trigger an alert
      Alert("Price Alert! Current price (", DoubleToString(current_price, _Digits), 
            ") has exceeded the threshold (", DoubleToString(alert_threshold, _Digits), ").");
     }
  }
//+------------------------------------------------------------------+
