public class NewCaseListController {
    public List<Case> caseList { get; set; }
    
    public List<Case> getNewCases() {
        List<Case> caseList = new List<Case>();
        caseList = [Select Id, CaseNumber FROM Case WHERE status =: 'New'];
        
        return caseList;
    }
}