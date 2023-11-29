import SwiftUI
import CoreData

struct AssesmentView: View {
    @EnvironmentObject var userDefaultForUser: UserDefaultForUser
    
    @StateObject private var assessmentViewModels = AssessmentViewModels()
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: AssessmentScore.entity(), sortDescriptors: []) var scores: FetchedResults<AssessmentScore>
    
    @Binding var fromProfileView: Bool
    

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Text("\(assessmentViewModels.step)/\(assessmentViewModels.totalSteps)")
                        .font(body32)
                }
                Spacer()
                Text("\(assessmentViewModels.getQuestion().questions)")
                    .font(subheadline)
                    .foregroundColor(Color.Primary.s60)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                HStack {
                    MultipleChoices(assessmentViewModels: assessmentViewModels)
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                if assessmentViewModels.step == assessmentViewModels.totalSteps {
                    HStack {
                        Spacer()
                        if assessmentViewModels.selectedAnswer.isEmpty {
                            CircleButtonNext(destination: ContentView()).disabled(assessmentViewModels.selectedAnswer.isEmpty)
                        } else {
                            if fromProfileView{
                                CircleButtonNext(destination: JournalView())
                                    .disabled(assessmentViewModels.selectedAnswer.isEmpty)
                                    .simultaneousGesture(TapGesture().onEnded{
                                        
                                        if(assessmentViewModels.getQuestion().category == .peace){
                                            assessmentViewModels.scoreATemp += assessmentViewModels.scorePlaceholder
                                        } else if(assessmentViewModels.getQuestion().category == .selfAwareness){
                                            assessmentViewModels.scoreBTemp += assessmentViewModels.scorePlaceholder
                                        } else {
                                            assessmentViewModels.scoreCTemp += assessmentViewModels.scorePlaceholder
                                        }
                                        
                                        print("A: \(assessmentViewModels.scoreATemp)")
                                        print("B: \(assessmentViewModels.scoreBTemp)")
                                        print("C: \(assessmentViewModels.scoreCTemp)")
                                        
                                        let score = AssessmentScore(context: moc)
                                        score.id = UUID()
                                        score.scoreA = Int16(assessmentViewModels.scoreATemp)
                                        score.scoreB = Int16(assessmentViewModels.scoreBTemp)
                                        score.scoreC = Int16(assessmentViewModels.scoreCTemp)
                                        score.createdAt = Date.now
                                        
                                        do{
                                            try moc.save()
                                        } catch let error {
                                            print("Error: \(error.localizedDescription)")
                                        }
                                        
                                        
                                        
                                    })
                                
                            } else {
                                CircleButtonNext(destination: ContentView())
                                    .disabled( assessmentViewModels.selectedAnswer.isEmpty)
                                    .simultaneousGesture(TapGesture().onEnded{
                                        
                                        if(assessmentViewModels.getQuestion().category == .peace){
                                            assessmentViewModels.scoreATemp += assessmentViewModels.scorePlaceholder
                                        } else if(assessmentViewModels.getQuestion().category == .selfAwareness){
                                            assessmentViewModels.scoreBTemp += assessmentViewModels.scorePlaceholder
                                        } else {
                                            assessmentViewModels.scoreCTemp += assessmentViewModels.scorePlaceholder
                                        }
                                        
                                        print("A: \(assessmentViewModels.scoreATemp)")
                                        print("B: \(assessmentViewModels.scoreBTemp)")
                                        print("C: \(assessmentViewModels.scoreCTemp)")
                                        
                                        let score = AssessmentScore(context: moc)
                                        score.id = UUID()
                                        score.scoreA = Int16(assessmentViewModels.scoreATemp)
                                        score.scoreB = Int16(assessmentViewModels.scoreBTemp)
                                        score.scoreC = Int16(assessmentViewModels.scoreCTemp)
                                        score.createdAt = Date.now
                                        
                                        do{
                                            try moc.save()
                                        } catch let error {
                                            print("Error: \(error.localizedDescription)")
                                        }

                                        
                                        UserDefaults.standard.set(true, forKey: "isCompletedAssessment")
                                        userDefaultForUser.isCompletedAssessment = UserDefaults.standard.bool(forKey: "isCompletedAssessment")
                                        print(userDefaultForUser.isCompletedAssessment)
                                    })
                            }
                        }
                        
                    }
                } else {
                    Button(action: {
                        getToTheNextStep()
                    }) {
                        HStack {
                            Spacer()
                            ZStack {
                                Circle()
                                    .frame(width: 100)
                                    .foregroundColor(Color.Primary.s60)
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color.Neutral.s10)
                                    .font(.system(size: 30))
                            }
                        }
                        
                    }
                    .navigationBarBackButtonHidden(true)
                    .disabled(assessmentViewModels.selectedAnswer.isEmpty)
                    .padding()
                }
                
                
            }
            .padding([.leading, .trailing, .top, .bottom], 40)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func getToTheNextStep() {
        if assessmentViewModels.step == assessmentViewModels.totalSteps {
//            let score = AssessmentScore(context: moc)
//            score.id = UUID()
//            score.scoreA = Int16(assessmentViewModels.scoreATemp)
//            score.scoreB = Int16(assessmentViewModels.scoreBTemp)
//            score.scoreC = Int16(assessmentViewModels.scoreCTemp)
//            score.createdAt = Date.now
//
//            try? moc.save()
        } else {
            if(assessmentViewModels.getQuestion().category == .peace){
                assessmentViewModels.scoreATemp += assessmentViewModels.scorePlaceholder
            } else if(assessmentViewModels.getQuestion().category == .selfAwareness){
                assessmentViewModels.scoreBTemp += assessmentViewModels.scorePlaceholder
            } else {
                assessmentViewModels.scoreCTemp += assessmentViewModels.scorePlaceholder
            }
            assessmentViewModels.step += 1
            assessmentViewModels.selectedAnswer = ""
            assessmentViewModels.selectedIndex = -1
        }
    }
}


struct AssesmentView_Previews: PreviewProvider {
    static var previews: some View {
        let userDefaultForUser = UserDefaultForUser()
        AssesmentView(fromProfileView: .constant(false))
    }
}
