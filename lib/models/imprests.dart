import 'dart:convert';
import 'dart:html';


ID ImprestsFromJson(String str) => ID.fromJson(json.decode(str));
String ImprestsToJson(ID data)=>
json.encode(data.toJson());

class ID {
  List<Imprests>? Imp_Data;

  ID({
    this.Imp_Data,
  });

  factory ID.fromJson(Map<String, dynamic> json) => ID(
    Imp_Data: List<Imprests>.from(
        json["data"].map((x) => Imprests.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(Imp_Data!.map((x) => x.toJson())),
  };

}


class Imprests {

  String? No;

  bool? Apply_on_behalf;
  String? Account_No_;
  String? Account_Name;
  String? Responsibility_Center;
  String? Travel_Type;
  String? Payee;
  String? Payment_Narration;
  String? Due_Date;
  String? Date;
  String? Time_Inserted;
  String? User_Id;
  String? Status;
  String? Staff_No_;
  String? Account_Type;
  String? Salary_Scale;
  String? TrainingNo;
  String? Cashier;
  String? Personal_No_;
  String? ID_Passport;
  bool? Imprest;
  bool? DSA;
  bool? Surrendered;
  bool? Posted;
  String? Shortcut_Dimension_1_Code;
  String? Shortcut_Dimension_2_Code;
  String? Shortcut_Dimension_3_Code;
  String? Shortcut_Dimension_4_Code;
  bool? Rejected_By_Approver;
  int? Imprest_Amount;
  int? DSA_Allowance_Amount;
  String? imprestNo;
  String? accountNo;
  String? responsibilityCenter;
  int? travelType;
  String? purpose;
  String? usersId;
  String? personalNo;
  String? myAction;

  Imprests({
    this.No,
    this.Apply_on_behalf,
    this.Account_No_,
    this.Account_Name,
    this.Responsibility_Center,
    this.Travel_Type,
    this.Payee,
    this.Payment_Narration,
    this.Due_Date,
    this.Date,
    this.Time_Inserted,
    this.User_Id,
    this.Status,
    this.Staff_No_,
    this.Account_Type,
    this.Salary_Scale,
    this.TrainingNo,
    this.Cashier,
    this.Personal_No_,
    this.ID_Passport,
    this.Imprest,
    this.DSA,
    this.Surrendered,
    this.Posted,
    this.Shortcut_Dimension_1_Code,
    this.Shortcut_Dimension_2_Code,
    this.Shortcut_Dimension_3_Code,
    this.Shortcut_Dimension_4_Code,
    this.Rejected_By_Approver,
    this.Imprest_Amount,
    this.DSA_Allowance_Amount,
    this.imprestNo,
    this.accountNo,
    this.responsibilityCenter,
    this.travelType,
    this.purpose,
    this.usersId,
    this.personalNo,
    this.myAction,
  });

  Imprests.fromJson(Map<String, dynamic> Json)
  {
    No = Json['No'];
    Apply_on_behalf = Json['Apply_on_behalf'];
    Account_No_ = Json['Account_No_'];
    Account_Name = Json['Account_Name'];
    Responsibility_Center = Json['Responsibility_Center'];
    Travel_Type = Json['Travel_Type'];
    Payee = Json['Payee'];
    Payment_Narration = Json['Payment_Narration'];
    Due_Date = Json['Due_Date'];
    Date = Json['Date'];
    Time_Inserted = Json['Time_Inserted'];
    User_Id = Json['User_Id'];
    Status = Json['Status'];
    Staff_No_ = Json['Staff_No_'];
    Account_Type = Json['Account_Type'];
    Salary_Scale = Json['Salary_Scale'];
    TrainingNo = Json['TrainingNo'];
    Cashier = Json['Cashier'];
    Personal_No_ = Json['Personal_No_'];
    ID_Passport = Json['ID_Passport'];
    Imprest = Json['Imprest'];
    DSA = Json['DSA'];
    Surrendered = Json['Surrendered'];
    Posted = Json['Posted'];
    Shortcut_Dimension_1_Code = Json['Shortcut_Dimension_1_Code'];
    Shortcut_Dimension_2_Code = Json['Shortcut_Dimension_2_Code'];
    Shortcut_Dimension_3_Code = Json['Shortcut_Dimension_3_Code'];
    Shortcut_Dimension_4_Code = Json['Shortcut_Dimension_4_Code'];
    Rejected_By_Approver = Json['Rejected_By_Approver'];
    Imprest_Amount = Json['Imprest_Amount'];
    DSA_Allowance_Amount = Json['DSA_Allowance_Amount'];
    imprestNo = Json['imprestNo'];
    accountNo = Json['accountNo'];
    responsibilityCenter = Json['responsibilityCenter'];
    travelType = Json['travelType'];
    purpose = Json['purpose'];
    usersId = Json['usersId'];
    personalNo = Json['personalNo'];
    myAction = Json['myAction'];
  }
 Map<String, dynamic> toJson(){
   final Map<String, dynamic> data = new Map<String, dynamic>();
data['No'] = this.No;
data['Apply_on_behalf'] = this.Apply_on_behalf;
data['Account_No_'] = this.Account_No_;
data['Account_Name'] = this.Account_Name;
data['Responsibility_Center'] = this.Responsibility_Center;
data['Travel_Type'] = this.Travel_Type;
data['Payee'] = this.Payee;
data['Payment_Narration'] = this.Payment_Narration;
data['Due_Date'] = this.Due_Date;
data['Date'] = this.Date;
data['Time_Inserted'] = this.Time_Inserted;
data['User_Id'] = this.User_Id;
data['Status'] = this.Status;
data['Staff_No_'] = this.Staff_No_;
data['Account_Type'] = this.Account_Type;
data['Salary_Scale'] = this.Salary_Scale;
data['TrainingNo'] = this.TrainingNo;

data['Cashier'] = this.Cashier;
data['Personal_No_'] = this.Personal_No_;
data['ID_Passport'] = this.ID_Passport;
data['Imprest'] = this.Imprest;
data['DSA'] = this.DSA;
data['Surrendered'] = this.Surrendered;
data['Posted'] = this.Posted;
data['Shortcut_Dimension_1_Code'] = this.Shortcut_Dimension_1_Code;
data['Shortcut_Dimension_2_Code'] = this.Shortcut_Dimension_2_Code;
data['Shortcut_Dimension_3_Code'] = this.Shortcut_Dimension_3_Code;
data['Shortcut_Dimension_4_Code'] = this.Shortcut_Dimension_4_Code;
data['Rejected_By_Approver'] = this.Rejected_By_Approver;
data['Imprest_Amount'] = this.Imprest_Amount;
data['DSA_Allowance_Amount'] = this.DSA_Allowance_Amount;
data['imprestNo'] = this.imprestNo;
data['accountNo'] = this.accountNo;
data['responsibilityCenter'] = this.responsibilityCenter;
data['travelType'] = this.travelType;
data['purpose'] = this.purpose;
data['usersId'] = this.usersId;
data['personalNo'] = this.personalNo;
data['myAction'] = this.myAction;
   return data;
 }

}