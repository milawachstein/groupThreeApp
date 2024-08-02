//
//  Resources.swift
//  groupThreeApp
//
//  Created by Mila Wachstein on 8/1/24.
//

import SwiftUI

struct Resources: View {
    
    func hotlineNumber(title: String, number: String) -> some View {
        Text("\(title) -> \(number)")
            .foregroundColor(Color.white)
            .font(.headline)
    }
    
    var body: some View {
        
        ZStack {
            Color(red: 0.2, green: 0.6, blue: 0.9, opacity: 0.5).ignoresSafeArea()
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(red: 0.2, green: 0.4, blue: 0.6, opacity: 1.0))
                .frame(width: 350, height: 200)
                .position(x: 200, y: 220)
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(red: 0.2, green: 0.4, blue: 0.6, opacity: 1.0))
                .frame(width: 350, height: 160)
                .position(x: 200, y: 420)
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(red: 0.2, green: 0.4, blue: 0.6, opacity: 1.0))
                .frame(width: 350, height: 200)
                .position(x: 200, y: 620)
            
            
            VStack {
                VStack {
                    Text("Resources, Brain Breaks, & Hotlines")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.2, green: 0.5, blue: 1.0, opacity: 1.0))
                }
                .position(x: 195, y: 60)
                
                // Resources
                VStack {
                    Text("Resources")
                        .font(.title)
                        .foregroundColor(Color.white)
                    Link("Mental Health Support",
                         destination: URL(string: "https://www.cdc.gov/mentalhealth/tools-resources/index.htm")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    Link("About Mental Health", destination: URL(string: "https://www.who.int/news-room/fact-sheets/detail/mental-health-strengthening-our-response")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    Link("Mental Disorders", destination: URL(string: "https://www.who.int/news-room/fact-sheets/detail/mental-disorders")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    Link("Mental Health Foundation", destination: URL(string: "https://www.mentalhealth.org.uk/get-involved")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    Link("Youth Health Center", destination: URL(string: "https://www.nyp.org/youthmentalhealth?gbraid=0AAAAAD5MYxDiBfC_l_8opSr43vc7GL_iC&gclid=CjwKCAjw5Ky1BhAgEiwA5jGujuuut0PPuJp0a2GOZ1FE4OKC-8EFWCHXrEdNce38mA-_TgDf_nHBzRoCIv8QAvD_BwE")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                        
                }
                .position(x: 195, y: 25)
                
                // Brain Breaks
                VStack {
                    Text("Brain Breaks")
                        .font(.title)
                        .foregroundColor(Color.white)
                    Link("Calming Exercises",
                         destination: URL(string: "https://www.healthline.com/health/anxiety-exercises#mindfulness")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    Link("Mental Care",
                         destination: URL(string: "https://www.nimh.nih.gov/health/topics/caring-for-your-mental-health")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    Link("Benefits of Exercise",
                         destination: URL(string: "https://www.helpguide.org/articles/healthy-living/the-mental-health-benefits-of-exercise.htm")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    Link("Adult Brain Breaks",
                         destination: URL(string: "https://woliba.io/blog/brain-breaks-for-adults/")!)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    
                    
                }
                .position(x: 195, y: 50)
                
                // Hotlines
                VStack {
                    Text("Hotlines")
                        .font(.title)
                        .foregroundColor(Color.white)
                    hotlineNumber(title: "Depression hotline", number: "1-844-400-2659")
                    hotlineNumber(title: "National Grad Crisis", number: "1-877-472-3457")
                    hotlineNumber(title: "SAMHSA", number: "1-800-662-4357")
                    hotlineNumber(title: "NAMI", number: "1-800-950-NAMI")
                    hotlineNumber(title: "Self-harm", number: "1-800-366-8288")
                    hotlineNumber(title: "ADHD", number: "1-866-200-8098")
                }
                .position(x: 200, y: 70)
                
            }
            
        }
        
    }
}

#Preview {
    Resources()
}
