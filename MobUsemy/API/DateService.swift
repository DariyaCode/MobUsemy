//
//  DateService.swift
//  MobUsemy
//
//  Created by Dariya Gecher on 08.02.2023.
//
import Foundation

class DateService{
    func getDate(completion: @escaping (Date) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            completion(Date())
        }
    }
}
