//+------------------------------------------------------------------+
//|                                                     AskPrice.mq5 |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property script_show_inputs

//--- input parameters

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   double current_price=SymbolInfoDouble(_Symbol,SYMBOL_ASK);
     Alert("the symbol is:",_Symbol, "and the current price is",DoubleToString(current_price,_Digits));
   
  }
//+------------------------------------------------------------------+
