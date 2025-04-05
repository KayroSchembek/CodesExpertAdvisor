//+------------------------------------------------------------------+
//|                                                DistancePrice.mq5 |
//|                                  Copyright 2025, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2025, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
   {
      
      double distance_point = DistancePrices(1.1000, 1.1100);
   
   }
//+------------------------------------------------------------------+

double DistancePrices(double price_1, double price_2)
   {
      double reslt = (price_1 - price_2)*MathPow(10,_Digits);
      return reslt;
   }