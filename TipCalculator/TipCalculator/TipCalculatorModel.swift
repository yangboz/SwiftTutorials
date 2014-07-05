//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by yangboz on 14-7-5.
//  Copyright (c) 2014年 GODPAPER. All rights reserved.
//

import Foundation
class TipCalculatorModel{
    //2
    var total:Double
    var taxPct:Double
//    let subtotal:Double
    var subtotal:Double{
        get{
            return total/(taxPct+1);
        }
        set(newSubtotal){
            
        }
    }
    //3
    init(total:Double,taxPct:Double){
        self.total = total;
        self.taxPct = taxPct;
//        subtotal = total/(taxPct+1);
    }
    //4
    func calcTipWithTipPct(tipPct:Double)->Double{
        return subtotal * tipPct;
    }
    //1
    func returnPossibleTips()->Dictionary<Int,Double>{
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:Double[] = [0.15,0.18,0.20]
        //2
        var retval = Dictionary<Int,Double>()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip);
        }
        return retval;
    }
    
}
