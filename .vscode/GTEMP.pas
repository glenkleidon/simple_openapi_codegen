unit ZedmedAPI.auto;

interface

uses 
  System.SysUtils, System.Classes, System.Generics.Collections,
   Spring, Spring.Container, Spring.Collections, Zedmed.JSON.Serializers;

  TAppointment = class;
  TAppointmentDetailList = class;
  TAppointmentLite = class;
  TAppointmentPatient = class;
  TBarcodeUpdate = class;
  TBlobFileType = class;
  TClaimingAdmission = class;
  TClaimingAssessmentNotes = class;
  TClaimingAuthorise = class;
  TClaimingBenefit = class;
  TClaimingClaimant = class;
  TClaimingClaimantAddress = class;
  TClaimingClaimantBank = class;
  TClaimingClaimantMedicare = class;
  TClaimingClaimantName = class;
  TClaimingClaimRequest = class;
  TClaimingClaimsRequest = class;
  TClaimingCommunityNursing = class;
  TClaimingContact = class;
  TClaimingFlags = class;
  TClaimingFlagsAdmission = class;
  TClaimingItem = class;
  TClaimingItemDental = class;
  TClaimingLocation = class;
  TClaimingPatient = class;
  TClaimingPatientAddress = class;
  TClaimingPatientAlias = class;
  TClaimingPatientConcession = class;
  TClaimingPatientDva = class;
  TClaimingPatientDvaAdl = class;
  TClaimingPatientFund = class;
  TClaimingPatientMedicare = class;
  TClaimingPatientName = class;
  TClaimingProvider = class;
  TClaimingReferral = class;
  TClaimingReferralProvider = class;
  TClaimingVerifyRequest = class;
  TClinicDetails = class;
  TClinicOpeningHours = class;
  TConcessionCardType = class;
  TConfirmationMessage = class;
  TCountValue = class;
  TDoctorDashboard = class;
  TDrugDetails = class;
  TElectronicAddress = class;
  TEncounterImmunisation = class;
  TEncounterReferral = class;
  TEncounterScript = class;
  TEncounterSegment = class;
  TFeedbackScore = class;
  TIntramail = class;
  TIntramailUnread = class;
  TIntramailUnreadParams = class;
  TLocationInfo = class;
  TOfficeTransaction = class;
  TOpeningHoursDay = class;
  TPatientEncounter = class;
  TPatientFeedback = class;
  TPatientGender = class;
  TPatientHistory = class;
  TPatientIdentity = class;
  TPbsState = class;
  TPrescriber = class;
  TPrescription = class;
  TProviderIdentifier = class;
  TProvPatientResultCount = class;
  TQuestionnaireAnswer = class;
  TQuestionnaireAnswersRequest = class;
  TRecall = class;
  TResultAction = class;
  TResultActionName = class;
  TResultPriority = class;
  TResultSummary = class;
  TScheduleSlot = class;
  TSophiaMimsValidityPassword = class;
  TStockAdjustment = class;
  TStockGroup = class;
  TStockProduct = class;
  TStockProductItem = class;
  TStockProductSupplier = class;
  TStockSplit = class;
  TStockSplitParameters = class;
  TStockSupplier = class;
  TStockUpdate = class;
  TStockUpdateFromImmunisation = class;
  TUnreadSMSMessageParams = class;
  TZedmedClientConfiguration = class;
  TZedmedPatient = class;

  TAppointment = class(TObject)
  private
    FId: integer;
    FDoctorCode: string;
    FResourceID: integer;
    FStartTime: string;
    FEndTime: string;
    FPatientName: string;
    FPatientDOB: string;
    FAppointmentType: string;
    FNotes: string;
    FStatusCode: string;
    FClinicCode: string;
    FPatientID: integer;
    FAppointmentTypeID: integer;
    FHasHistory: boolean;
    FHasResults: boolean;
    FBackgroundColor: string;

    function GetId: integer;
    function GetDoctorCode: string;
    function GetResourceID: integer;
    function GetStartTime: string;
    function GetEndTime: string;
    function GetPatientName: string;
    function GetPatientDOB: string;
    function GetAppointmentType: string;
    function GetNotes: string;
    function GetStatusCode: string;
    function GetClinicCode: string;
    function GetPatientID: integer;
    function GetAppointmentTypeID: integer;
    function GetHasHistory: boolean;
    function GetHasResults: boolean;
    function GetBackgroundColor: string;

    procedure SetId(const AValue: integer);
    procedure SetDoctorCode(const AValue: string);
    procedure SetResourceID(const AValue: integer);
    procedure SetStartTime(const AValue: string);
    procedure SetEndTime(const AValue: string);
    procedure SetPatientName(const AValue: string);
    procedure SetPatientDOB(const AValue: string);
    procedure SetAppointmentType(const AValue: string);
    procedure SetNotes(const AValue: string);
    procedure SetStatusCode(const AValue: string);
    procedure SetClinicCode(const AValue: string);
    procedure SetPatientID(const AValue: integer);
    procedure SetAppointmentTypeID(const AValue: integer);
    procedure SetHasHistory(const AValue: boolean);
    procedure SetHasResults(const AValue: boolean);
    procedure SetBackgroundColor(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property DoctorCode: string read GetDoctorCode write SetDoctorCode;
    property ResourceID: integer read GetResourceID write SetResourceID;
    property StartTime: string read GetStartTime write SetStartTime;
    property EndTime: string read GetEndTime write SetEndTime;
    property PatientName: string read GetPatientName write SetPatientName;
    property PatientDOB: string read GetPatientDOB write SetPatientDOB;
    property AppointmentType: string read GetAppointmentType write SetAppointmentType;
    property Notes: string read GetNotes write SetNotes;
    property StatusCode: string read GetStatusCode write SetStatusCode;
    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property PatientID: integer read GetPatientID write SetPatientID;
    property AppointmentTypeID: integer read GetAppointmentTypeID write SetAppointmentTypeID;
    property HasHistory: boolean read GetHasHistory write SetHasHistory;
    property HasResults: boolean read GetHasResults write SetHasResults;
    property BackgroundColor: string read GetBackgroundColor write SetBackgroundColor;

  end;

  TAppointmentDetailList = class(TObject)
  private
    FDayStartTime: string;
    FDayEndTime: string;
    FTotalCount: integer;
    FFrom: integer;

    FAppointments: IList< TAppointment >;
    FSchedule: IList< TAppointment >;

    function GetDayStartTime: string;
    function GetDayEndTime: string;
    function GetTotalCount: integer;
    function GetFrom: integer;

    procedure SetDayStartTime(const AValue: string);
    procedure SetDayEndTime(const AValue: string);
    procedure SetTotalCount(const AValue: integer);
    procedure SetFrom(const AValue: integer);

    procedure SetAppointments(const AValue: IList< TAppointment >);
    procedure SetSchedule(const AValue: IList< TAppointment >);

    function GetAppointments: IList< TAppointment >;
    function GetSchedule: IList< TAppointment >;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property DayStartTime: string read GetDayStartTime write SetDayStartTime;
    property DayEndTime: string read GetDayEndTime write SetDayEndTime;
    property TotalCount: integer read GetTotalCount write SetTotalCount;
    property From: integer read GetFrom write SetFrom;

    property Appointments: IList< TAppointment > read GetAppointments write SetAppointments;
    property Schedule: IList< TAppointment > read GetSchedule write SetSchedule;

  end;

  TAppointmentLite = class(TObject)
  private
    FAppointmentId: string;
    FExternalPatientId: string;
    FDoctorCode: string;
    FClinicCode: string;
    FStart: string;
    FEnd: string;
    FCanCancel: boolean;
    FAppointmentType: integer;

    function GetAppointmentId: string;
    function GetExternalPatientId: string;
    function GetDoctorCode: string;
    function GetClinicCode: string;
    function GetStart: string;
    function GetEnd: string;
    function GetCanCancel: boolean;
    function GetAppointmentType: integer;

    procedure SetAppointmentId(const AValue: string);
    procedure SetExternalPatientId(const AValue: string);
    procedure SetDoctorCode(const AValue: string);
    procedure SetClinicCode(const AValue: string);
    procedure SetStart(const AValue: string);
    procedure SetEnd(const AValue: string);
    procedure SetCanCancel(const AValue: boolean);
    procedure SetAppointmentType(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property AppointmentId: string read GetAppointmentId write SetAppointmentId;
    property ExternalPatientId: string read GetExternalPatientId write SetExternalPatientId;
    property DoctorCode: string read GetDoctorCode write SetDoctorCode;
    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property Start: string read GetStart write SetStart;
    property End: string read GetEnd write SetEnd;
    property CanCancel: boolean read GetCanCancel write SetCanCancel;
    property AppointmentType: integer read GetAppointmentType write SetAppointmentType;

  end;

  TAppointmentPatient = class(TObject)
  private
    FExternalId: string;
    FFamilyName: string;
    FGivenName: string;
    FPreferredName: string;
    FTitle: string;
    FEmailAddress: string;
    FMobilePhone: string;
    FDateOfBirth: string;
    FHomeAddressLine1: string;
    FHomeAddressLine2: string;
    FHomeSuburb: string;
    FHomePostcode: string;
    FMedicareCardNumber: string;
    FMedicareCardExpiry: string;
    FNOKName: string;
    FNOKRelation: string;
    FNOKMobilePhone: string;
    FEmergencyContactName: string;
    FEmergencyContactMobile: string;
    FConcessionCardNumber: string;
    FConcessionCardExpiry: string;

    Fundefined: TConcessionCardType;
    Fundefined: TPatientGender;

    function GetExternalId: string;
    function GetFamilyName: string;
    function GetGivenName: string;
    function GetPreferredName: string;
    function GetTitle: string;
    function GetEmailAddress: string;
    function GetMobilePhone: string;
    function GetDateOfBirth: string;
    function GetHomeAddressLine1: string;
    function GetHomeAddressLine2: string;
    function GetHomeSuburb: string;
    function GetHomePostcode: string;
    function GetMedicareCardNumber: string;
    function GetMedicareCardExpiry: string;
    function GetNOKName: string;
    function GetNOKRelation: string;
    function GetNOKMobilePhone: string;
    function GetEmergencyContactName: string;
    function GetEmergencyContactMobile: string;
    function GetConcessionCardNumber: string;
    function GetConcessionCardExpiry: string;

    procedure SetExternalId(const AValue: string);
    procedure SetFamilyName(const AValue: string);
    procedure SetGivenName(const AValue: string);
    procedure SetPreferredName(const AValue: string);
    procedure SetTitle(const AValue: string);
    procedure SetEmailAddress(const AValue: string);
    procedure SetMobilePhone(const AValue: string);
    procedure SetDateOfBirth(const AValue: string);
    procedure SetHomeAddressLine1(const AValue: string);
    procedure SetHomeAddressLine2(const AValue: string);
    procedure SetHomeSuburb(const AValue: string);
    procedure SetHomePostcode(const AValue: string);
    procedure SetMedicareCardNumber(const AValue: string);
    procedure SetMedicareCardExpiry(const AValue: string);
    procedure SetNOKName(const AValue: string);
    procedure SetNOKRelation(const AValue: string);
    procedure SetNOKMobilePhone(const AValue: string);
    procedure SetEmergencyContactName(const AValue: string);
    procedure SetEmergencyContactMobile(const AValue: string);
    procedure SetConcessionCardNumber(const AValue: string);
    procedure SetConcessionCardExpiry(const AValue: string);

    procedure SetConcessionCardType(const AValue: TConcessionCardType);
    procedure SetGender(const AValue: TPatientGender);

    function GetConcessionCardType: TConcessionCardType;
    function GetGender: TPatientGender;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property ExternalId: string read GetExternalId write SetExternalId;
    property FamilyName: string read GetFamilyName write SetFamilyName;
    property GivenName: string read GetGivenName write SetGivenName;
    property PreferredName: string read GetPreferredName write SetPreferredName;
    property Title: string read GetTitle write SetTitle;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property MobilePhone: string read GetMobilePhone write SetMobilePhone;
    property DateOfBirth: string read GetDateOfBirth write SetDateOfBirth;
    property HomeAddressLine1: string read GetHomeAddressLine1 write SetHomeAddressLine1;
    property HomeAddressLine2: string read GetHomeAddressLine2 write SetHomeAddressLine2;
    property HomeSuburb: string read GetHomeSuburb write SetHomeSuburb;
    property HomePostcode: string read GetHomePostcode write SetHomePostcode;
    property MedicareCardNumber: string read GetMedicareCardNumber write SetMedicareCardNumber;
    property MedicareCardExpiry: string read GetMedicareCardExpiry write SetMedicareCardExpiry;
    property NOKName: string read GetNOKName write SetNOKName;
    property NOKRelation: string read GetNOKRelation write SetNOKRelation;
    property NOKMobilePhone: string read GetNOKMobilePhone write SetNOKMobilePhone;
    property EmergencyContactName: string read GetEmergencyContactName write SetEmergencyContactName;
    property EmergencyContactMobile: string read GetEmergencyContactMobile write SetEmergencyContactMobile;
    property ConcessionCardNumber: string read GetConcessionCardNumber write SetConcessionCardNumber;
    property ConcessionCardExpiry: string read GetConcessionCardExpiry write SetConcessionCardExpiry;

    property ConcessionCardType: TConcessionCardType read GetConcessionCardType write SetConcessionCardType;
    property Gender: TPatientGender read GetGender write SetGender;

  end;

  TBarcodeUpdate = class(TObject)
  private
    FReferenceGuid: string;
    FBarcodeValue: string;

    function GetReferenceGuid: string;
    function GetBarcodeValue: string;

    procedure SetReferenceGuid(const AValue: string);
    procedure SetBarcodeValue(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property ReferenceGuid: string read GetReferenceGuid write SetReferenceGuid;
    property BarcodeValue: string read GetBarcodeValue write SetBarcodeValue;

  end;

  TBlobFileType = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TClaimingAdmission = class(TObject)
  private
    FhospitalInd: boolean;
    FadmissionDate: string;
    FdischargeDate: string;
    FaccidentInd: boolean;

    function GethospitalInd: boolean;
    function GetadmissionDate: string;
    function GetdischargeDate: string;
    function GetaccidentInd: boolean;

    procedure SethospitalInd(const AValue: boolean);
    procedure SetadmissionDate(const AValue: string);
    procedure SetdischargeDate(const AValue: string);
    procedure SetaccidentInd(const AValue: boolean);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property hospitalInd: boolean read GethospitalInd write SethospitalInd;
    property admissionDate: string read GetadmissionDate write SetadmissionDate;
    property dischargeDate: string read GetdischargeDate write SetdischargeDate;
    property accidentInd: boolean read GetaccidentInd write SetaccidentInd;

  end;

  TClaimingAssessmentNotes = class(TObject)
  private
    Fassessor: string;
    Fcode: string;
    Fnote: string;

    function Getassessor: string;
    function Getcode: string;
    function Getnote: string;

    procedure Setassessor(const AValue: string);
    procedure Setcode(const AValue: string);
    procedure Setnote(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property assessor: string read Getassessor write Setassessor;
    property code: string read Getcode write Setcode;
    property note: string read Getnote write Setnote;

  end;

  TClaimingAuthorise = class(TObject)
  private
    Fbenefit: boolean;
    Fclaim: boolean;

    function Getbenefit: boolean;
    function Getclaim: boolean;

    procedure Setbenefit(const AValue: boolean);
    procedure Setclaim(const AValue: boolean);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property benefit: boolean read Getbenefit write Setbenefit;
    property claim: boolean read Getclaim write Setclaim;

  end;

  TClaimingBenefit = class(TObject)
  private
    Fassessor: string;
    FbenefitPaid: number;

    function Getassessor: string;
    function GetbenefitPaid: number;

    procedure Setassessor(const AValue: string);
    procedure SetbenefitPaid(const AValue: number);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property assessor: string read Getassessor write Setassessor;
    property benefitPaid: number read GetbenefitPaid write SetbenefitPaid;

  end;

  TClaimingClaimant = class(TObject)
  private
    FdateOfBirth: string;
    Fgender: string;
    Fphone: string;

    Fundefined: TClaimingClaimantAddress;
    Fundefined: TClaimingClaimantBank;
    Fundefined: TClaimingClaimantMedicare;
    Fundefined: TClaimingClaimantName;

    function GetdateOfBirth: string;
    function Getgender: string;
    function Getphone: string;

    procedure SetdateOfBirth(const AValue: string);
    procedure Setgender(const AValue: string);
    procedure Setphone(const AValue: string);

    procedure Setaddress(const AValue: TClaimingClaimantAddress);
    procedure Setbank(const AValue: TClaimingClaimantBank);
    procedure Setmedicare(const AValue: TClaimingClaimantMedicare);
    procedure Setname(const AValue: TClaimingClaimantName);

    function Getaddress: TClaimingClaimantAddress;
    function Getbank: TClaimingClaimantBank;
    function Getmedicare: TClaimingClaimantMedicare;
    function Getname: TClaimingClaimantName;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property dateOfBirth: string read GetdateOfBirth write SetdateOfBirth;
    property gender: string read Getgender write Setgender;
    property phone: string read Getphone write Setphone;

    property address: TClaimingClaimantAddress read Getaddress write Setaddress;
    property bank: TClaimingClaimantBank read Getbank write Setbank;
    property medicare: TClaimingClaimantMedicare read Getmedicare write Setmedicare;
    property name: TClaimingClaimantName read Getname write Setname;

  end;

  TClaimingClaimantAddress = class(TObject)
  private
    Fline1: string;
    Fline2: string;
    Flocality: string;
    Fpostcode: string;

    function Getline1: string;
    function Getline2: string;
    function Getlocality: string;
    function Getpostcode: string;

    procedure Setline1(const AValue: string);
    procedure Setline2(const AValue: string);
    procedure Setlocality(const AValue: string);
    procedure Setpostcode(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property line1: string read Getline1 write Setline1;
    property line2: string read Getline2 write Setline2;
    property locality: string read Getlocality write Setlocality;
    property postcode: string read Getpostcode write Setpostcode;

  end;

  TClaimingClaimantBank = class(TObject)
  private
    FaccountName: string;
    FaccountNumber: string;
    Fbsb: string;

    function GetaccountName: string;
    function GetaccountNumber: string;
    function Getbsb: string;

    procedure SetaccountName(const AValue: string);
    procedure SetaccountNumber(const AValue: string);
    procedure Setbsb(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property accountName: string read GetaccountName write SetaccountName;
    property accountNumber: string read GetaccountNumber write SetaccountNumber;
    property bsb: string read Getbsb write Setbsb;

  end;

  TClaimingClaimantMedicare = class(TObject)
  private
    Fnumber: integer;
    Fref: integer;

    function Getnumber: integer;
    function Getref: integer;

    procedure Setnumber(const AValue: integer);
    procedure Setref(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property number: integer read Getnumber write Setnumber;
    property ref: integer read Getref write Setref;

  end;

  TClaimingClaimantName = class(TObject)
  private
    Ffamily: string;
    Ffirst: string;
    Fsecond: string;

    function Getfamily: string;
    function Getfirst: string;
    function Getsecond: string;

    procedure Setfamily(const AValue: string);
    procedure Setfirst(const AValue: string);
    procedure Setsecond(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property family: string read Getfamily write Setfamily;
    property first: string read Getfirst write Setfirst;
    property second: string read Getsecond write Setsecond;

  end;

  TClaimingClaimRequest = class(TObject)
  private
    FreferenceNumber: string;
    FdateAuthorised: string;
    FdateCertified: string;

    function GetreferenceNumber: string;
    function GetdateAuthorised: string;
    function GetdateCertified: string;

    procedure SetreferenceNumber(const AValue: string);
    procedure SetdateAuthorised(const AValue: string);
    procedure SetdateCertified(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property referenceNumber: string read GetreferenceNumber write SetreferenceNumber;
    property dateAuthorised: string read GetdateAuthorised write SetdateAuthorised;
    property dateCertified: string read GetdateCertified write SetdateCertified;

  end;

  TClaimingClaimsRequest = class(TObject)
  private
    Ftype: string;

    Fundefined: TClaimingFlags;
    Fundefined: TClaimingLocation;
    Fundefined: TClaimingPatient;
    Fundefined: TClaimingProvider;
    Fundefined: TClaimingClaimant;
    Fundefined: TClaimingReferral;
    Fundefined: TClaimingAdmission;
    Fundefined: TClaimingAuthorise;
    Fundefined: TClaimingClaimRequest;
    Fundefined: TClaimingContact;
    Fundefined: TClaimingCommunityNursing;

    Fitems: ;

    function Gettype: string;

    procedure Settype(const AValue: string);

    procedure Setflags(const AValue: TClaimingFlags);
    procedure Setlocation(const AValue: TClaimingLocation);
    procedure Setpatient(const AValue: TClaimingPatient);
    procedure Setprovider(const AValue: TClaimingProvider);
    procedure Setclaimant(const AValue: TClaimingClaimant);
    procedure Setreferral(const AValue: TClaimingReferral);
    procedure Setadmission(const AValue: TClaimingAdmission);
    procedure Setauthorise(const AValue: TClaimingAuthorise);
    procedure Setclaim(const AValue: TClaimingClaimRequest);
    procedure Setcontact(const AValue: TClaimingContact);
    procedure SetcommunityNursing(const AValue: TClaimingCommunityNursing);

    function Getflags: TClaimingFlags;
    function Getlocation: TClaimingLocation;
    function Getpatient: TClaimingPatient;
    function Getprovider: TClaimingProvider;
    function Getclaimant: TClaimingClaimant;
    function Getreferral: TClaimingReferral;
    function Getadmission: TClaimingAdmission;
    function Getauthorise: TClaimingAuthorise;
    function Getclaim: TClaimingClaimRequest;
    function Getcontact: TClaimingContact;
    function GetcommunityNursing: TClaimingCommunityNursing;

    procedure Setitems(const AValue: );

    function Getitems: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property &type: string read Gettype write Settype;

    property items:  read Getitems write Setitems;

    property flags: TClaimingFlags read Getflags write Setflags;
    property location: TClaimingLocation read Getlocation write Setlocation;
    property patient: TClaimingPatient read Getpatient write Setpatient;
    property provider: TClaimingProvider read Getprovider write Setprovider;
    property claimant: TClaimingClaimant read Getclaimant write Setclaimant;
    property referral: TClaimingReferral read Getreferral write Setreferral;
    property admission: TClaimingAdmission read Getadmission write Setadmission;
    property authorise: TClaimingAuthorise read Getauthorise write Setauthorise;
    property claim: TClaimingClaimRequest read Getclaim write Setclaim;
    property contact: TClaimingContact read Getcontact write Setcontact;
    property communityNursing: TClaimingCommunityNursing read GetcommunityNursing write SetcommunityNursing;

  end;

  TClaimingCommunityNursing = class(TObject)
  private
    FbreakInEpisodeEndDate: string;
    FbreakInEpisodeOfCare: integer;
    FbreakInEpisodeStartDate: string;
    FnumberOfCNCHours: integer;
    FnumberOfCNCVisits: integer;
    FnumberOfENHours: integer;
    FnumberOfENVisits: integer;
    FnumberOfNSSHours: integer;
    FnumberOfNSSVisits: integer;
    FnumberOfRNHours: integer;
    FnumberOfRNVisits: integer;

    function GetbreakInEpisodeEndDate: string;
    function GetbreakInEpisodeOfCare: integer;
    function GetbreakInEpisodeStartDate: string;
    function GetnumberOfCNCHours: integer;
    function GetnumberOfCNCVisits: integer;
    function GetnumberOfENHours: integer;
    function GetnumberOfENVisits: integer;
    function GetnumberOfNSSHours: integer;
    function GetnumberOfNSSVisits: integer;
    function GetnumberOfRNHours: integer;
    function GetnumberOfRNVisits: integer;

    procedure SetbreakInEpisodeEndDate(const AValue: string);
    procedure SetbreakInEpisodeOfCare(const AValue: integer);
    procedure SetbreakInEpisodeStartDate(const AValue: string);
    procedure SetnumberOfCNCHours(const AValue: integer);
    procedure SetnumberOfCNCVisits(const AValue: integer);
    procedure SetnumberOfENHours(const AValue: integer);
    procedure SetnumberOfENVisits(const AValue: integer);
    procedure SetnumberOfNSSHours(const AValue: integer);
    procedure SetnumberOfNSSVisits(const AValue: integer);
    procedure SetnumberOfRNHours(const AValue: integer);
    procedure SetnumberOfRNVisits(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property breakInEpisodeEndDate: string read GetbreakInEpisodeEndDate write SetbreakInEpisodeEndDate;
    property breakInEpisodeOfCare: integer read GetbreakInEpisodeOfCare write SetbreakInEpisodeOfCare;
    property breakInEpisodeStartDate: string read GetbreakInEpisodeStartDate write SetbreakInEpisodeStartDate;
    property numberOfCNCHours: integer read GetnumberOfCNCHours write SetnumberOfCNCHours;
    property numberOfCNCVisits: integer read GetnumberOfCNCVisits write SetnumberOfCNCVisits;
    property numberOfENHours: integer read GetnumberOfENHours write SetnumberOfENHours;
    property numberOfENVisits: integer read GetnumberOfENVisits write SetnumberOfENVisits;
    property numberOfNSSHours: integer read GetnumberOfNSSHours write SetnumberOfNSSHours;
    property numberOfNSSVisits: integer read GetnumberOfNSSVisits write SetnumberOfNSSVisits;
    property numberOfRNHours: integer read GetnumberOfRNHours write SetnumberOfRNHours;
    property numberOfRNVisits: integer read GetnumberOfRNVisits write SetnumberOfRNVisits;

  end;

  TClaimingContact = class(TObject)
  private
    Fname: string;
    Fphone: string;
    Femail: string;

    function Getname: string;
    function Getphone: string;
    function Getemail: string;

    procedure Setname(const AValue: string);
    procedure Setphone(const AValue: string);
    procedure Setemail(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property name: string read Getname write Setname;
    property phone: string read Getphone write Setphone;
    property email: string read Getemail write Setemail;

  end;

  TClaimingFlags = class(TObject)
  private
    FaccountPaid: boolean;
    FcertifiedInd: string;
    FcompensationClaim: boolean;
    FfinancialInterestDisclosureInd: boolean;
    FhospitalInd: boolean;
    Fifc: string;
    FimcClaimType: string;
    FisAccident: boolean;
    FserviceType: string;
    FbenefitAssignmentAuthorised: boolean;
    FdateOfLodgement: string;
    FtimeOfLodgement: string;

    Fundefined: TClaimingFlagsAdmission;

    function GetaccountPaid: boolean;
    function GetcertifiedInd: string;
    function GetcompensationClaim: boolean;
    function GetfinancialInterestDisclosureInd: boolean;
    function GethospitalInd: boolean;
    function Getifc: string;
    function GetimcClaimType: string;
    function GetisAccident: boolean;
    function GetserviceType: string;
    function GetbenefitAssignmentAuthorised: boolean;
    function GetdateOfLodgement: string;
    function GettimeOfLodgement: string;

    procedure SetaccountPaid(const AValue: boolean);
    procedure SetcertifiedInd(const AValue: string);
    procedure SetcompensationClaim(const AValue: boolean);
    procedure SetfinancialInterestDisclosureInd(const AValue: boolean);
    procedure SethospitalInd(const AValue: boolean);
    procedure Setifc(const AValue: string);
    procedure SetimcClaimType(const AValue: string);
    procedure SetisAccident(const AValue: boolean);
    procedure SetserviceType(const AValue: string);
    procedure SetbenefitAssignmentAuthorised(const AValue: boolean);
    procedure SetdateOfLodgement(const AValue: string);
    procedure SettimeOfLodgement(const AValue: string);

    procedure Setadmission(const AValue: TClaimingFlagsAdmission);

    function Getadmission: TClaimingFlagsAdmission;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property accountPaid: boolean read GetaccountPaid write SetaccountPaid;
    property certifiedInd: string read GetcertifiedInd write SetcertifiedInd;
    property compensationClaim: boolean read GetcompensationClaim write SetcompensationClaim;
    property financialInterestDisclosureInd: boolean read GetfinancialInterestDisclosureInd write SetfinancialInterestDisclosureInd;
    property hospitalInd: boolean read GethospitalInd write SethospitalInd;
    property ifc: string read Getifc write Setifc;
    property imcClaimType: string read GetimcClaimType write SetimcClaimType;
    property isAccident: boolean read GetisAccident write SetisAccident;
    property serviceType: string read GetserviceType write SetserviceType;
    property benefitAssignmentAuthorised: boolean read GetbenefitAssignmentAuthorised write SetbenefitAssignmentAuthorised;
    property dateOfLodgement: string read GetdateOfLodgement write SetdateOfLodgement;
    property timeOfLodgement: string read GettimeOfLodgement write SettimeOfLodgement;

    property admission: TClaimingFlagsAdmission read Getadmission write Setadmission;

  end;

  TClaimingFlagsAdmission = class(TObject)
  private
    FadmissionDate: string;
    FdischargeDate: string;

    function GetadmissionDate: string;
    function GetdischargeDate: string;

    procedure SetadmissionDate(const AValue: string);
    procedure SetdischargeDate(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property admissionDate: string read GetadmissionDate write SetadmissionDate;
    property dischargeDate: string read GetdischargeDate write SetdischargeDate;

  end;

  TClaimingItem = class(TObject)
  private
    FafterCareOverride: boolean;
    FchargeAmount: number;
    Fdate: string;
    Fdistance: integer;
    FduplicateServiceOverride: boolean;
    Fduration: integer;
    FequipmentId: string;
    FfieldQuantity: integer;
    FitemNumber: string;
    FlspNumber: string;
    FmultipleProcedureOverride: boolean;
    FnumberOfPatients: integer;
    FopticalScript: string;
    FpatientContributionAmount: number;
    FrestrictiveOverride: string;
    FsecondDeviceInd: boolean;
    FselfDeemedCode: string;
    FserviceText: string;
    Ftime: string;
    FMedicareVoucherId: string;
    FMedicareServiceId: string;
    FaccessionDateTime: string;
    FcollectionDateTime: string;
    Frule3Exempt: boolean;
    Fs4b3Exempt: boolean;
    FscpId: string;
    FinvoiceId: string;

    Fundefined: TClaimingItemDental;

    FassessmentNotes: ;
    Fbenefit: ;

    function GetafterCareOverride: boolean;
    function GetchargeAmount: number;
    function Getdate: string;
    function Getdistance: integer;
    function GetduplicateServiceOverride: boolean;
    function Getduration: integer;
    function GetequipmentId: string;
    function GetfieldQuantity: integer;
    function GetitemNumber: string;
    function GetlspNumber: string;
    function GetmultipleProcedureOverride: boolean;
    function GetnumberOfPatients: integer;
    function GetopticalScript: string;
    function GetpatientContributionAmount: number;
    function GetrestrictiveOverride: string;
    function GetsecondDeviceInd: boolean;
    function GetselfDeemedCode: string;
    function GetserviceText: string;
    function Gettime: string;
    function GetMedicareVoucherId: string;
    function GetMedicareServiceId: string;
    function GetaccessionDateTime: string;
    function GetcollectionDateTime: string;
    function Getrule3Exempt: boolean;
    function Gets4b3Exempt: boolean;
    function GetscpId: string;
    function GetinvoiceId: string;

    procedure SetafterCareOverride(const AValue: boolean);
    procedure SetchargeAmount(const AValue: number);
    procedure Setdate(const AValue: string);
    procedure Setdistance(const AValue: integer);
    procedure SetduplicateServiceOverride(const AValue: boolean);
    procedure Setduration(const AValue: integer);
    procedure SetequipmentId(const AValue: string);
    procedure SetfieldQuantity(const AValue: integer);
    procedure SetitemNumber(const AValue: string);
    procedure SetlspNumber(const AValue: string);
    procedure SetmultipleProcedureOverride(const AValue: boolean);
    procedure SetnumberOfPatients(const AValue: integer);
    procedure SetopticalScript(const AValue: string);
    procedure SetpatientContributionAmount(const AValue: number);
    procedure SetrestrictiveOverride(const AValue: string);
    procedure SetsecondDeviceInd(const AValue: boolean);
    procedure SetselfDeemedCode(const AValue: string);
    procedure SetserviceText(const AValue: string);
    procedure Settime(const AValue: string);
    procedure SetMedicareVoucherId(const AValue: string);
    procedure SetMedicareServiceId(const AValue: string);
    procedure SetaccessionDateTime(const AValue: string);
    procedure SetcollectionDateTime(const AValue: string);
    procedure Setrule3Exempt(const AValue: boolean);
    procedure Sets4b3Exempt(const AValue: boolean);
    procedure SetscpId(const AValue: string);
    procedure SetinvoiceId(const AValue: string);

    procedure Setdental(const AValue: TClaimingItemDental);

    function Getdental: TClaimingItemDental;

    procedure SetassessmentNotes(const AValue: );
    procedure Setbenefit(const AValue: );

    function GetassessmentNotes: ;
    function Getbenefit: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property afterCareOverride: boolean read GetafterCareOverride write SetafterCareOverride;
    property chargeAmount: number read GetchargeAmount write SetchargeAmount;
    property date: string read Getdate write Setdate;
    property distance: integer read Getdistance write Setdistance;
    property duplicateServiceOverride: boolean read GetduplicateServiceOverride write SetduplicateServiceOverride;
    property duration: integer read Getduration write Setduration;
    property equipmentId: string read GetequipmentId write SetequipmentId;
    property fieldQuantity: integer read GetfieldQuantity write SetfieldQuantity;
    property itemNumber: string read GetitemNumber write SetitemNumber;
    property lspNumber: string read GetlspNumber write SetlspNumber;
    property multipleProcedureOverride: boolean read GetmultipleProcedureOverride write SetmultipleProcedureOverride;
    property numberOfPatients: integer read GetnumberOfPatients write SetnumberOfPatients;
    property opticalScript: string read GetopticalScript write SetopticalScript;
    property patientContributionAmount: number read GetpatientContributionAmount write SetpatientContributionAmount;
    property restrictiveOverride: string read GetrestrictiveOverride write SetrestrictiveOverride;
    property secondDeviceInd: boolean read GetsecondDeviceInd write SetsecondDeviceInd;
    property selfDeemedCode: string read GetselfDeemedCode write SetselfDeemedCode;
    property serviceText: string read GetserviceText write SetserviceText;
    property time: string read Gettime write Settime;
    property MedicareVoucherId: string read GetMedicareVoucherId write SetMedicareVoucherId;
    property MedicareServiceId: string read GetMedicareServiceId write SetMedicareServiceId;
    property accessionDateTime: string read GetaccessionDateTime write SetaccessionDateTime;
    property collectionDateTime: string read GetcollectionDateTime write SetcollectionDateTime;
    property rule3Exempt: boolean read Getrule3Exempt write Setrule3Exempt;
    property s4b3Exempt: boolean read Gets4b3Exempt write Sets4b3Exempt;
    property scpId: string read GetscpId write SetscpId;
    property invoiceId: string read GetinvoiceId write SetinvoiceId;

    property assessmentNotes:  read GetassessmentNotes write SetassessmentNotes;
    property benefit:  read Getbenefit write Setbenefit;

    property dental: TClaimingItemDental read Getdental write Setdental;

  end;

  TClaimingItemDental = class(TObject)
  private
    Fjaw: string;
    FnumberOfTeeth: string;
    Ftooth: integer;

    function Getjaw: string;
    function GetnumberOfTeeth: string;
    function Gettooth: integer;

    procedure Setjaw(const AValue: string);
    procedure SetnumberOfTeeth(const AValue: string);
    procedure Settooth(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property jaw: string read Getjaw write Setjaw;
    property numberOfTeeth: string read GetnumberOfTeeth write SetnumberOfTeeth;
    property tooth: integer read Gettooth write Settooth;

  end;

  TClaimingLocation = class(TObject)
  private
    Fname: string;
    Ftype: string;
    FfacilityId: string;

    function Getname: string;
    function Gettype: string;
    function GetfacilityId: string;

    procedure Setname(const AValue: string);
    procedure Settype(const AValue: string);
    procedure SetfacilityId(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property name: string read Getname write Setname;
    property &type: string read Gettype write Settype;
    property facilityId: string read GetfacilityId write SetfacilityId;

  end;

  TClaimingPatient = class(TObject)
  private
    FdateOfBirth: string;
    Fgender: string;

    Fundefined: TClaimingPatientAddress;
    Fundefined: TClaimingPatientAlias;
    Fundefined: TClaimingPatientConcession;
    Fundefined: TClaimingPatientDva;
    Fundefined: TClaimingPatientFund;
    Fundefined: TClaimingPatientMedicare;
    Fundefined: TClaimingPatientName;

    function GetdateOfBirth: string;
    function Getgender: string;

    procedure SetdateOfBirth(const AValue: string);
    procedure Setgender(const AValue: string);

    procedure Setaddress(const AValue: TClaimingPatientAddress);
    procedure Setalias(const AValue: TClaimingPatientAlias);
    procedure Setconcession(const AValue: TClaimingPatientConcession);
    procedure Setdva(const AValue: TClaimingPatientDva);
    procedure Setfund(const AValue: TClaimingPatientFund);
    procedure Setmedicare(const AValue: TClaimingPatientMedicare);
    procedure Setname(const AValue: TClaimingPatientName);

    function Getaddress: TClaimingPatientAddress;
    function Getalias: TClaimingPatientAlias;
    function Getconcession: TClaimingPatientConcession;
    function Getdva: TClaimingPatientDva;
    function Getfund: TClaimingPatientFund;
    function Getmedicare: TClaimingPatientMedicare;
    function Getname: TClaimingPatientName;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property dateOfBirth: string read GetdateOfBirth write SetdateOfBirth;
    property gender: string read Getgender write Setgender;

    property address: TClaimingPatientAddress read Getaddress write Setaddress;
    property alias: TClaimingPatientAlias read Getalias write Setalias;
    property concession: TClaimingPatientConcession read Getconcession write Setconcession;
    property dva: TClaimingPatientDva read Getdva write Setdva;
    property fund: TClaimingPatientFund read Getfund write Setfund;
    property medicare: TClaimingPatientMedicare read Getmedicare write Setmedicare;
    property name: TClaimingPatientName read Getname write Setname;

  end;

  TClaimingPatientAddress = class(TObject)
  private
    Flocality: string;
    Fpostcode: string;
    Fline1: string;
    Fline2: string;

    function Getlocality: string;
    function Getpostcode: string;
    function Getline1: string;
    function Getline2: string;

    procedure Setlocality(const AValue: string);
    procedure Setpostcode(const AValue: string);
    procedure Setline1(const AValue: string);
    procedure Setline2(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property locality: string read Getlocality write Setlocality;
    property postcode: string read Getpostcode write Setpostcode;
    property line1: string read Getline1 write Setline1;
    property line2: string read Getline2 write Setline2;

  end;

  TClaimingPatientAlias = class(TObject)
  private
    Ffamily: string;
    Ffirst: string;

    function Getfamily: string;
    function Getfirst: string;

    procedure Setfamily(const AValue: string);
    procedure Setfirst(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property family: string read Getfamily write Setfamily;
    property first: string read Getfirst write Setfirst;

  end;

  TClaimingPatientConcession = class(TObject)
  private
    FentitlementId: string;

    function GetentitlementId: string;

    procedure SetentitlementId(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property entitlementId: string read GetentitlementId write SetentitlementId;

  end;

  TClaimingPatientDva = class(TObject)
  private
    Fdisability: string;
    FdisabilityInd: boolean;
    Fnumber: string;
    FentitlementCode: string;

    Fundefined: TClaimingPatientDvaAdl;

    function Getdisability: string;
    function GetdisabilityInd: boolean;
    function Getnumber: string;
    function GetentitlementCode: string;

    procedure Setdisability(const AValue: string);
    procedure SetdisabilityInd(const AValue: boolean);
    procedure Setnumber(const AValue: string);
    procedure SetentitlementCode(const AValue: string);

    procedure Setadl(const AValue: TClaimingPatientDvaAdl);

    function Getadl: TClaimingPatientDvaAdl;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property disability: string read Getdisability write Setdisability;
    property disabilityInd: boolean read GetdisabilityInd write SetdisabilityInd;
    property number: string read Getnumber write Setnumber;
    property entitlementCode: string read GetentitlementCode write SetentitlementCode;

    property adl: TClaimingPatientDvaAdl read Getadl write Setadl;

  end;

  TClaimingPatientDvaAdl = class(TObject)
  private
    FcognitiveBehavioralInd: boolean;
    FeatingInd: boolean;
    FpersonalHygieneInd: boolean;
    FtoiletingContinenceInd: boolean;
    Ftool: string;
    FtransferMobilityInd: boolean;

    function GetcognitiveBehavioralInd: boolean;
    function GeteatingInd: boolean;
    function GetpersonalHygieneInd: boolean;
    function GettoiletingContinenceInd: boolean;
    function Gettool: string;
    function GettransferMobilityInd: boolean;

    procedure SetcognitiveBehavioralInd(const AValue: boolean);
    procedure SeteatingInd(const AValue: boolean);
    procedure SetpersonalHygieneInd(const AValue: boolean);
    procedure SettoiletingContinenceInd(const AValue: boolean);
    procedure Settool(const AValue: string);
    procedure SettransferMobilityInd(const AValue: boolean);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property cognitiveBehavioralInd: boolean read GetcognitiveBehavioralInd write SetcognitiveBehavioralInd;
    property eatingInd: boolean read GeteatingInd write SeteatingInd;
    property personalHygieneInd: boolean read GetpersonalHygieneInd write SetpersonalHygieneInd;
    property toiletingContinenceInd: boolean read GettoiletingContinenceInd write SettoiletingContinenceInd;
    property tool: string read Gettool write Settool;
    property transferMobilityInd: boolean read GettransferMobilityInd write SettransferMobilityInd;

  end;

  TClaimingPatientFund = class(TObject)
  private
    FeclipseId: string;
    Fnumber: string;
    FpayeeId: string;
    Fref: integer;

    function GeteclipseId: string;
    function Getnumber: string;
    function GetpayeeId: string;
    function Getref: integer;

    procedure SeteclipseId(const AValue: string);
    procedure Setnumber(const AValue: string);
    procedure SetpayeeId(const AValue: string);
    procedure Setref(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property eclipseId: string read GeteclipseId write SeteclipseId;
    property number: string read Getnumber write Setnumber;
    property payeeId: string read GetpayeeId write SetpayeeId;
    property ref: integer read Getref write Setref;

  end;

  TClaimingPatientMedicare = class(TObject)
  private
    Fnumber: string;
    Fref: integer;

    function Getnumber: string;
    function Getref: integer;

    procedure Setnumber(const AValue: string);
    procedure Setref(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property number: string read Getnumber write Setnumber;
    property ref: integer read Getref write Setref;

  end;

  TClaimingPatientName = class(TObject)
  private
    Ffamily: string;
    Ffirst: string;
    Fsecond: string;

    function Getfamily: string;
    function Getfirst: string;
    function Getsecond: string;

    procedure Setfamily(const AValue: string);
    procedure Setfirst(const AValue: string);
    procedure Setsecond(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property family: string read Getfamily write Setfamily;
    property first: string read Getfirst write Setfirst;
    property second: string read Getsecond write Setsecond;

  end;

  TClaimingProvider = class(TObject)
  private
    Fbilling: string;
    Fpayee: string;
    Fprincipal: string;
    Fservicing: string;
    FpayeeName: string;
    FcontactPhone: string;

    function Getbilling: string;
    function Getpayee: string;
    function Getprincipal: string;
    function Getservicing: string;
    function GetpayeeName: string;
    function GetcontactPhone: string;

    procedure Setbilling(const AValue: string);
    procedure Setpayee(const AValue: string);
    procedure Setprincipal(const AValue: string);
    procedure Setservicing(const AValue: string);
    procedure SetpayeeName(const AValue: string);
    procedure SetcontactPhone(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property billing: string read Getbilling write Setbilling;
    property payee: string read Getpayee write Setpayee;
    property principal: string read Getprincipal write Setprincipal;
    property servicing: string read Getservicing write Setservicing;
    property payeeName: string read GetpayeeName write SetpayeeName;
    property contactPhone: string read GetcontactPhone write SetcontactPhone;

  end;

  TClaimingReferral = class(TObject)
  private
    Fdate: string;
    FoverrideCode: string;
    Fperiod: string;
    FperiodType: string;
    FproviderType: string;
    FreferralType: string;

    Fundefined: TClaimingReferralProvider;

    function Getdate: string;
    function GetoverrideCode: string;
    function Getperiod: string;
    function GetperiodType: string;
    function GetproviderType: string;
    function GetreferralType: string;

    procedure Setdate(const AValue: string);
    procedure SetoverrideCode(const AValue: string);
    procedure Setperiod(const AValue: string);
    procedure SetperiodType(const AValue: string);
    procedure SetproviderType(const AValue: string);
    procedure SetreferralType(const AValue: string);

    procedure Setprovider(const AValue: TClaimingReferralProvider);

    function Getprovider: TClaimingReferralProvider;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property date: string read Getdate write Setdate;
    property overrideCode: string read GetoverrideCode write SetoverrideCode;
    property period: string read Getperiod write Setperiod;
    property periodType: string read GetperiodType write SetperiodType;
    property providerType: string read GetproviderType write SetproviderType;
    property referralType: string read GetreferralType write SetreferralType;

    property provider: TClaimingReferralProvider read Getprovider write Setprovider;

  end;

  TClaimingReferralProvider = class(TObject)
  private
    Fname: string;
    Fnumber: string;
    Ftype: string;

    function Getname: string;
    function Getnumber: string;
    function Gettype: string;

    procedure Setname(const AValue: string);
    procedure Setnumber(const AValue: string);
    procedure Settype(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property name: string read Getname write Setname;
    property number: string read Getnumber write Setnumber;
    property &type: string read Gettype write Settype;

  end;

  TClaimingVerifyRequest = class(TObject)
  private
    Ftype: string;
    FearliestDateOfService: string;

    Fundefined: TClaimingPatient;

    function Gettype: string;
    function GetearliestDateOfService: string;

    procedure Settype(const AValue: string);
    procedure SetearliestDateOfService(const AValue: string);

    procedure Setpatient(const AValue: TClaimingPatient);

    function Getpatient: TClaimingPatient;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property &type: string read Gettype write Settype;
    property earliestDateOfService: string read GetearliestDateOfService write SetearliestDateOfService;

    property patient: TClaimingPatient read Getpatient write Setpatient;

  end;

  TClinicDetails = class(TObject)
  private
    FClinicCode: string;
    FClinicName: string;
    FType: string;
    FAddressLine1: string;
    FAddressLine2: string;
    FPostCode: string;
    FSuburb: string;
    FPhone1: string;
    FPhone2: string;
    FPhone3: string;
    FFax: string;
    FOpeningTime: string;
    FAvailableOnline: boolean;
    FOnlineContactPhone: string;
    FOnlineAfterHoursPhone: string;
    FFeeInformation: string;
    FLocationLatitiude: number;
    FLocationLongitude: number;

    FOpeningHours: ;

    function GetClinicCode: string;
    function GetClinicName: string;
    function GetType: string;
    function GetAddressLine1: string;
    function GetAddressLine2: string;
    function GetPostCode: string;
    function GetSuburb: string;
    function GetPhone1: string;
    function GetPhone2: string;
    function GetPhone3: string;
    function GetFax: string;
    function GetOpeningTime: string;
    function GetAvailableOnline: boolean;
    function GetOnlineContactPhone: string;
    function GetOnlineAfterHoursPhone: string;
    function GetFeeInformation: string;
    function GetLocationLatitiude: number;
    function GetLocationLongitude: number;

    procedure SetClinicCode(const AValue: string);
    procedure SetClinicName(const AValue: string);
    procedure SetType(const AValue: string);
    procedure SetAddressLine1(const AValue: string);
    procedure SetAddressLine2(const AValue: string);
    procedure SetPostCode(const AValue: string);
    procedure SetSuburb(const AValue: string);
    procedure SetPhone1(const AValue: string);
    procedure SetPhone2(const AValue: string);
    procedure SetPhone3(const AValue: string);
    procedure SetFax(const AValue: string);
    procedure SetOpeningTime(const AValue: string);
    procedure SetAvailableOnline(const AValue: boolean);
    procedure SetOnlineContactPhone(const AValue: string);
    procedure SetOnlineAfterHoursPhone(const AValue: string);
    procedure SetFeeInformation(const AValue: string);
    procedure SetLocationLatitiude(const AValue: number);
    procedure SetLocationLongitude(const AValue: number);

    procedure SetOpeningHours(const AValue: );

    function GetOpeningHours: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property ClinicName: string read GetClinicName write SetClinicName;
    property &Type: string read GetType write SetType;
    property AddressLine1: string read GetAddressLine1 write SetAddressLine1;
    property AddressLine2: string read GetAddressLine2 write SetAddressLine2;
    property PostCode: string read GetPostCode write SetPostCode;
    property Suburb: string read GetSuburb write SetSuburb;
    property Phone1: string read GetPhone1 write SetPhone1;
    property Phone2: string read GetPhone2 write SetPhone2;
    property Phone3: string read GetPhone3 write SetPhone3;
    property Fax: string read GetFax write SetFax;
    property OpeningTime: string read GetOpeningTime write SetOpeningTime;
    property AvailableOnline: boolean read GetAvailableOnline write SetAvailableOnline;
    property OnlineContactPhone: string read GetOnlineContactPhone write SetOnlineContactPhone;
    property OnlineAfterHoursPhone: string read GetOnlineAfterHoursPhone write SetOnlineAfterHoursPhone;
    property FeeInformation: string read GetFeeInformation write SetFeeInformation;
    property LocationLatitiude: number read GetLocationLatitiude write SetLocationLatitiude;
    property LocationLongitude: number read GetLocationLongitude write SetLocationLongitude;

    property OpeningHours:  read GetOpeningHours write SetOpeningHours;

  end;

  TClinicOpeningHours = class(TObject)
  private
    FOpeningTime: string;
    FClosingTime: string;

    Fundefined: TOpeningHoursDay;

    function GetOpeningTime: string;
    function GetClosingTime: string;

    procedure SetOpeningTime(const AValue: string);
    procedure SetClosingTime(const AValue: string);

    procedure SetDay(const AValue: TOpeningHoursDay);

    function GetDay: TOpeningHoursDay;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property OpeningTime: string read GetOpeningTime write SetOpeningTime;
    property ClosingTime: string read GetClosingTime write SetClosingTime;

    property Day: TOpeningHoursDay read GetDay write SetDay;

  end;

  TConcessionCardType = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TConfirmationMessage = class(TObject)
  private
    FAppointmentId: string;
    FExternalPatientId: string;

    function GetAppointmentId: string;
    function GetExternalPatientId: string;

    procedure SetAppointmentId(const AValue: string);
    procedure SetExternalPatientId(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property AppointmentId: string read GetAppointmentId write SetAppointmentId;
    property ExternalPatientId: string read GetExternalPatientId write SetExternalPatientId;

  end;

  TCountValue = class(TObject)
  private
    FCount: integer;

    function GetCount: integer;

    procedure SetCount(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Count: integer read GetCount write SetCount;

  end;

  TDoctorDashboard = class(TObject)
  private
    FDoctorCode: string;
    FDoctorName: string;
    FPracticeName: string;
    FAppointmentCount: integer;
    FResultCount: integer;

    FAppointments: IList< TAppointment >;
    FResults: IList< TAppointment >;

    function GetDoctorCode: string;
    function GetDoctorName: string;
    function GetPracticeName: string;
    function GetAppointmentCount: integer;
    function GetResultCount: integer;

    procedure SetDoctorCode(const AValue: string);
    procedure SetDoctorName(const AValue: string);
    procedure SetPracticeName(const AValue: string);
    procedure SetAppointmentCount(const AValue: integer);
    procedure SetResultCount(const AValue: integer);

    procedure SetAppointments(const AValue: IList< TAppointment >);
    procedure SetResults(const AValue: IList< TAppointment >);

    function GetAppointments: IList< TAppointment >;
    function GetResults: IList< TAppointment >;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property DoctorCode: string read GetDoctorCode write SetDoctorCode;
    property DoctorName: string read GetDoctorName write SetDoctorName;
    property PracticeName: string read GetPracticeName write SetPracticeName;
    property AppointmentCount: integer read GetAppointmentCount write SetAppointmentCount;
    property ResultCount: integer read GetResultCount write SetResultCount;

    property Appointments: IList< TAppointment > read GetAppointments write SetAppointments;
    property Results: IList< TAppointment > read GetResults write SetResults;

  end;

  TDrugDetails = class(TObject)
  private
    FDrugGUID: string;
    FDrugId: integer;
    FBrandSubstitutionAllowed: boolean;
    FQuantity: string;
    FQuantityInWords: string;
    FRepeats: integer;
    FRequiresAuthority: boolean;
    FAuthorityNumber: integer;
    FApprovalNumber: string;
    FDosageFullText: string;
    FMedicineLastUntil: string;
    FScriptDate: string;
    FReg24: boolean;
    FPbsString: string;
    FSendToPcehr: string;
    FPrescriptionType: string;
    FSendToPatient: boolean;
    FPreviousAuthority: boolean;
    FIndForAuth: string;
    FStateAuthorityNumber: string;
    FUnusualDose: boolean;
    FOptOutOfASL: boolean;
    FProdcode: integer;
    FPackcode: integer;
    FFormcode: integer;
    FRecipeDrugId: integer;
    FScriptDesc: string;
    FShortDesc: string;
    FFormId: integer;
    FOtherBrandName: string;
    FGenericName: string;
    FGenericFlag: string;
    FForm: string;
    FItemStrength: string;
    FItemStrengthUnit: string;
    FProduct: string;
    FPBSCode: string;
    FPBSManCode: string;
    FUnitsPerPack: integer;
    FAMTCode: string;
    FAMTCodeSystem: string;
    FAMTVersion: string;
    FIsMimsDrug: boolean;
    FAMTTerm: string;
    FErxSequence: integer;
    FReasonForPrescribe: string;
    FScriptOwing: boolean;
    FActiveIngredient: string;
    FStreamlined: boolean;
    FMinIntervalBetweenRepeats: integer;
    FAdminRouteCode: integer;
    FAdminRouteText: string;
    FMisc: string;

    Fundefined: TPbsState;

    function GetDrugGUID: string;
    function GetDrugId: integer;
    function GetBrandSubstitutionAllowed: boolean;
    function GetQuantity: string;
    function GetQuantityInWords: string;
    function GetRepeats: integer;
    function GetRequiresAuthority: boolean;
    function GetAuthorityNumber: integer;
    function GetApprovalNumber: string;
    function GetDosageFullText: string;
    function GetMedicineLastUntil: string;
    function GetScriptDate: string;
    function GetReg24: boolean;
    function GetPbsString: string;
    function GetSendToPcehr: string;
    function GetPrescriptionType: string;
    function GetSendToPatient: boolean;
    function GetPreviousAuthority: boolean;
    function GetIndForAuth: string;
    function GetStateAuthorityNumber: string;
    function GetUnusualDose: boolean;
    function GetOptOutOfASL: boolean;
    function GetProdcode: integer;
    function GetPackcode: integer;
    function GetFormcode: integer;
    function GetRecipeDrugId: integer;
    function GetScriptDesc: string;
    function GetShortDesc: string;
    function GetFormId: integer;
    function GetOtherBrandName: string;
    function GetGenericName: string;
    function GetGenericFlag: string;
    function GetForm: string;
    function GetItemStrength: string;
    function GetItemStrengthUnit: string;
    function GetProduct: string;
    function GetPBSCode: string;
    function GetPBSManCode: string;
    function GetUnitsPerPack: integer;
    function GetAMTCode: string;
    function GetAMTCodeSystem: string;
    function GetAMTVersion: string;
    function GetIsMimsDrug: boolean;
    function GetAMTTerm: string;
    function GetErxSequence: integer;
    function GetReasonForPrescribe: string;
    function GetScriptOwing: boolean;
    function GetActiveIngredient: string;
    function GetStreamlined: boolean;
    function GetMinIntervalBetweenRepeats: integer;
    function GetAdminRouteCode: integer;
    function GetAdminRouteText: string;
    function GetMisc: string;

    procedure SetDrugGUID(const AValue: string);
    procedure SetDrugId(const AValue: integer);
    procedure SetBrandSubstitutionAllowed(const AValue: boolean);
    procedure SetQuantity(const AValue: string);
    procedure SetQuantityInWords(const AValue: string);
    procedure SetRepeats(const AValue: integer);
    procedure SetRequiresAuthority(const AValue: boolean);
    procedure SetAuthorityNumber(const AValue: integer);
    procedure SetApprovalNumber(const AValue: string);
    procedure SetDosageFullText(const AValue: string);
    procedure SetMedicineLastUntil(const AValue: string);
    procedure SetScriptDate(const AValue: string);
    procedure SetReg24(const AValue: boolean);
    procedure SetPbsString(const AValue: string);
    procedure SetSendToPcehr(const AValue: string);
    procedure SetPrescriptionType(const AValue: string);
    procedure SetSendToPatient(const AValue: boolean);
    procedure SetPreviousAuthority(const AValue: boolean);
    procedure SetIndForAuth(const AValue: string);
    procedure SetStateAuthorityNumber(const AValue: string);
    procedure SetUnusualDose(const AValue: boolean);
    procedure SetOptOutOfASL(const AValue: boolean);
    procedure SetProdcode(const AValue: integer);
    procedure SetPackcode(const AValue: integer);
    procedure SetFormcode(const AValue: integer);
    procedure SetRecipeDrugId(const AValue: integer);
    procedure SetScriptDesc(const AValue: string);
    procedure SetShortDesc(const AValue: string);
    procedure SetFormId(const AValue: integer);
    procedure SetOtherBrandName(const AValue: string);
    procedure SetGenericName(const AValue: string);
    procedure SetGenericFlag(const AValue: string);
    procedure SetForm(const AValue: string);
    procedure SetItemStrength(const AValue: string);
    procedure SetItemStrengthUnit(const AValue: string);
    procedure SetProduct(const AValue: string);
    procedure SetPBSCode(const AValue: string);
    procedure SetPBSManCode(const AValue: string);
    procedure SetUnitsPerPack(const AValue: integer);
    procedure SetAMTCode(const AValue: string);
    procedure SetAMTCodeSystem(const AValue: string);
    procedure SetAMTVersion(const AValue: string);
    procedure SetIsMimsDrug(const AValue: boolean);
    procedure SetAMTTerm(const AValue: string);
    procedure SetErxSequence(const AValue: integer);
    procedure SetReasonForPrescribe(const AValue: string);
    procedure SetScriptOwing(const AValue: boolean);
    procedure SetActiveIngredient(const AValue: string);
    procedure SetStreamlined(const AValue: boolean);
    procedure SetMinIntervalBetweenRepeats(const AValue: integer);
    procedure SetAdminRouteCode(const AValue: integer);
    procedure SetAdminRouteText(const AValue: string);
    procedure SetMisc(const AValue: string);

    procedure SetPbsState(const AValue: TPbsState);

    function GetPbsState: TPbsState;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property DrugGUID: string read GetDrugGUID write SetDrugGUID;
    property DrugId: integer read GetDrugId write SetDrugId;
    property BrandSubstitutionAllowed: boolean read GetBrandSubstitutionAllowed write SetBrandSubstitutionAllowed;
    property Quantity: string read GetQuantity write SetQuantity;
    property QuantityInWords: string read GetQuantityInWords write SetQuantityInWords;
    property Repeats: integer read GetRepeats write SetRepeats;
    property RequiresAuthority: boolean read GetRequiresAuthority write SetRequiresAuthority;
    property AuthorityNumber: integer read GetAuthorityNumber write SetAuthorityNumber;
    property ApprovalNumber: string read GetApprovalNumber write SetApprovalNumber;
    property DosageFullText: string read GetDosageFullText write SetDosageFullText;
    property MedicineLastUntil: string read GetMedicineLastUntil write SetMedicineLastUntil;
    property ScriptDate: string read GetScriptDate write SetScriptDate;
    property Reg24: boolean read GetReg24 write SetReg24;
    property PbsString: string read GetPbsString write SetPbsString;
    property SendToPcehr: string read GetSendToPcehr write SetSendToPcehr;
    property PrescriptionType: string read GetPrescriptionType write SetPrescriptionType;
    property SendToPatient: boolean read GetSendToPatient write SetSendToPatient;
    property PreviousAuthority: boolean read GetPreviousAuthority write SetPreviousAuthority;
    property IndForAuth: string read GetIndForAuth write SetIndForAuth;
    property StateAuthorityNumber: string read GetStateAuthorityNumber write SetStateAuthorityNumber;
    property UnusualDose: boolean read GetUnusualDose write SetUnusualDose;
    property OptOutOfASL: boolean read GetOptOutOfASL write SetOptOutOfASL;
    property Prodcode: integer read GetProdcode write SetProdcode;
    property Packcode: integer read GetPackcode write SetPackcode;
    property Formcode: integer read GetFormcode write SetFormcode;
    property RecipeDrugId: integer read GetRecipeDrugId write SetRecipeDrugId;
    property ScriptDesc: string read GetScriptDesc write SetScriptDesc;
    property ShortDesc: string read GetShortDesc write SetShortDesc;
    property FormId: integer read GetFormId write SetFormId;
    property OtherBrandName: string read GetOtherBrandName write SetOtherBrandName;
    property GenericName: string read GetGenericName write SetGenericName;
    property GenericFlag: string read GetGenericFlag write SetGenericFlag;
    property Form: string read GetForm write SetForm;
    property ItemStrength: string read GetItemStrength write SetItemStrength;
    property ItemStrengthUnit: string read GetItemStrengthUnit write SetItemStrengthUnit;
    property Product: string read GetProduct write SetProduct;
    property PBSCode: string read GetPBSCode write SetPBSCode;
    property PBSManCode: string read GetPBSManCode write SetPBSManCode;
    property UnitsPerPack: integer read GetUnitsPerPack write SetUnitsPerPack;
    property AMTCode: string read GetAMTCode write SetAMTCode;
    property AMTCodeSystem: string read GetAMTCodeSystem write SetAMTCodeSystem;
    property AMTVersion: string read GetAMTVersion write SetAMTVersion;
    property IsMimsDrug: boolean read GetIsMimsDrug write SetIsMimsDrug;
    property AMTTerm: string read GetAMTTerm write SetAMTTerm;
    property ErxSequence: integer read GetErxSequence write SetErxSequence;
    property ReasonForPrescribe: string read GetReasonForPrescribe write SetReasonForPrescribe;
    property ScriptOwing: boolean read GetScriptOwing write SetScriptOwing;
    property ActiveIngredient: string read GetActiveIngredient write SetActiveIngredient;
    property Streamlined: boolean read GetStreamlined write SetStreamlined;
    property MinIntervalBetweenRepeats: integer read GetMinIntervalBetweenRepeats write SetMinIntervalBetweenRepeats;
    property AdminRouteCode: integer read GetAdminRouteCode write SetAdminRouteCode;
    property AdminRouteText: string read GetAdminRouteText write SetAdminRouteText;
    property Misc: string read GetMisc write SetMisc;

    property PbsState: TPbsState read GetPbsState write SetPbsState;

  end;

  TElectronicAddress = class(TObject)
  private
    FAddressType: string;
    FValue: string;

    function GetAddressType: string;
    function GetValue: string;

    procedure SetAddressType(const AValue: string);
    procedure SetValue(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property AddressType: string read GetAddressType write SetAddressType;
    property Value: string read GetValue write SetValue;

  end;

  TEncounterImmunisation = class(TObject)
  private
    FDescription: string;
    FDose: integer;
    FComment: string;

    function GetDescription: string;
    function GetDose: integer;
    function GetComment: string;

    procedure SetDescription(const AValue: string);
    procedure SetDose(const AValue: integer);
    procedure SetComment(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Description: string read GetDescription write SetDescription;
    property Dose: integer read GetDose write SetDose;
    property Comment: string read GetComment write SetComment;

  end;

  TEncounterReferral = class(TObject)
  private
    FRecipient: string;
    FDescription: string;
    FType: string;

    function GetRecipient: string;
    function GetDescription: string;
    function GetType: string;

    procedure SetRecipient(const AValue: string);
    procedure SetDescription(const AValue: string);
    procedure SetType(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Recipient: string read GetRecipient write SetRecipient;
    property Description: string read GetDescription write SetDescription;
    property &Type: string read GetType write SetType;

  end;

  TEncounterScript = class(TObject)
  private
    FDescription: string;
    FDosage: string;

    function GetDescription: string;
    function GetDosage: string;

    procedure SetDescription(const AValue: string);
    procedure SetDosage(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Description: string read GetDescription write SetDescription;
    property Dosage: string read GetDosage write SetDosage;

  end;

  TEncounterSegment = class(TObject)
  private
    FSegmentID: integer;
    FDescription: string;
    FNotes: string;

    FScripts: ;
    FReferrals: ;
    FImmunisations: ;

    function GetSegmentID: integer;
    function GetDescription: string;
    function GetNotes: string;

    procedure SetSegmentID(const AValue: integer);
    procedure SetDescription(const AValue: string);
    procedure SetNotes(const AValue: string);

    procedure SetScripts(const AValue: );
    procedure SetReferrals(const AValue: );
    procedure SetImmunisations(const AValue: );

    function GetScripts: ;
    function GetReferrals: ;
    function GetImmunisations: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property SegmentID: integer read GetSegmentID write SetSegmentID;
    property Description: string read GetDescription write SetDescription;
    property Notes: string read GetNotes write SetNotes;

    property Scripts:  read GetScripts write SetScripts;
    property Referrals:  read GetReferrals write SetReferrals;
    property Immunisations:  read GetImmunisations write SetImmunisations;

  end;

  TFeedbackScore = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TIntramail = class(TObject)
  private
    FId: integer;
    FMessage: string;
    FSender: string;
    FRecipient: string;
    FSubject: string;
    FCreationTime: string;
    FRead: boolean;
    FLinkedPatientId: integer;
    FInPatientHistory: boolean;
    FDeleted: boolean;

    function GetId: integer;
    function GetMessage: string;
    function GetSender: string;
    function GetRecipient: string;
    function GetSubject: string;
    function GetCreationTime: string;
    function GetRead: boolean;
    function GetLinkedPatientId: integer;
    function GetInPatientHistory: boolean;
    function GetDeleted: boolean;

    procedure SetId(const AValue: integer);
    procedure SetMessage(const AValue: string);
    procedure SetSender(const AValue: string);
    procedure SetRecipient(const AValue: string);
    procedure SetSubject(const AValue: string);
    procedure SetCreationTime(const AValue: string);
    procedure SetRead(const AValue: boolean);
    procedure SetLinkedPatientId(const AValue: integer);
    procedure SetInPatientHistory(const AValue: boolean);
    procedure SetDeleted(const AValue: boolean);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property &Message: string read GetMessage write SetMessage;
    property Sender: string read GetSender write SetSender;
    property Recipient: string read GetRecipient write SetRecipient;
    property Subject: string read GetSubject write SetSubject;
    property CreationTime: string read GetCreationTime write SetCreationTime;
    property Read: boolean read GetRead write SetRead;
    property LinkedPatientId: integer read GetLinkedPatientId write SetLinkedPatientId;
    property InPatientHistory: boolean read GetInPatientHistory write SetInPatientHistory;
    property Deleted: boolean read GetDeleted write SetDeleted;

  end;

  TIntramailUnread = class(TObject)
  private
    FCount: integer;
    FCountSinceLastRead: integer;
    FCountSinceLastChecked: integer;
    FMaximumMailId: integer;

    function GetCount: integer;
    function GetCountSinceLastRead: integer;
    function GetCountSinceLastChecked: integer;
    function GetMaximumMailId: integer;

    procedure SetCount(const AValue: integer);
    procedure SetCountSinceLastRead(const AValue: integer);
    procedure SetCountSinceLastChecked(const AValue: integer);
    procedure SetMaximumMailId(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Count: integer read GetCount write SetCount;
    property CountSinceLastRead: integer read GetCountSinceLastRead write SetCountSinceLastRead;
    property CountSinceLastChecked: integer read GetCountSinceLastChecked write SetCountSinceLastChecked;
    property MaximumMailId: integer read GetMaximumMailId write SetMaximumMailId;

  end;

  TIntramailUnreadParams = class(TObject)
  private
    FLastReadMailId: integer;
    FLastCheckMailId: integer;

    function GetLastReadMailId: integer;
    function GetLastCheckMailId: integer;

    procedure SetLastReadMailId(const AValue: integer);
    procedure SetLastCheckMailId(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property LastReadMailId: integer read GetLastReadMailId write SetLastReadMailId;
    property LastCheckMailId: integer read GetLastCheckMailId write SetLastCheckMailId;

  end;

  TLocationInfo = class(TObject)
  private
    FLatitude: number;
    FLongitude: number;

    function GetLatitude: number;
    function GetLongitude: number;

    procedure SetLatitude(const AValue: number);
    procedure SetLongitude(const AValue: number);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Latitude: number read GetLatitude write SetLatitude;
    property Longitude: number read GetLongitude write SetLongitude;

  end;

  TOfficeTransaction = class(TObject)
  private
    FSqlPath: string;
    FFilters: object;

    function GetSqlPath: string;
    function GetFilters: object;

    procedure SetSqlPath(const AValue: string);
    procedure SetFilters(const AValue: object);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property SqlPath: string read GetSqlPath write SetSqlPath;
    property Filters: object read GetFilters write SetFilters;

  end;

  TOpeningHoursDay = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TPatientEncounter = class(TObject)
  private
    FEncounterID: integer;
    FPatientID: integer;
    FPatientName: string;
    FStartDate: string;
    FEndDate: string;
    FDoctorCode: string;
    FDoctorName: string;

    FSegments: ;

    function GetEncounterID: integer;
    function GetPatientID: integer;
    function GetPatientName: string;
    function GetStartDate: string;
    function GetEndDate: string;
    function GetDoctorCode: string;
    function GetDoctorName: string;

    procedure SetEncounterID(const AValue: integer);
    procedure SetPatientID(const AValue: integer);
    procedure SetPatientName(const AValue: string);
    procedure SetStartDate(const AValue: string);
    procedure SetEndDate(const AValue: string);
    procedure SetDoctorCode(const AValue: string);
    procedure SetDoctorName(const AValue: string);

    procedure SetSegments(const AValue: );

    function GetSegments: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property EncounterID: integer read GetEncounterID write SetEncounterID;
    property PatientID: integer read GetPatientID write SetPatientID;
    property PatientName: string read GetPatientName write SetPatientName;
    property StartDate: string read GetStartDate write SetStartDate;
    property EndDate: string read GetEndDate write SetEndDate;
    property DoctorCode: string read GetDoctorCode write SetDoctorCode;
    property DoctorName: string read GetDoctorName write SetDoctorName;

    property Segments:  read GetSegments write SetSegments;

  end;

  TPatientFeedback = class(TObject)
  private
    FFeedbackId: string;
    FResponseText: string;

    Fundefined: TFeedbackScore;

    function GetFeedbackId: string;
    function GetResponseText: string;

    procedure SetFeedbackId(const AValue: string);
    procedure SetResponseText(const AValue: string);

    procedure SetResponseScore(const AValue: TFeedbackScore);

    function GetResponseScore: TFeedbackScore;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property FeedbackId: string read GetFeedbackId write SetFeedbackId;
    property ResponseText: string read GetResponseText write SetResponseText;

    property ResponseScore: TFeedbackScore read GetResponseScore write SetResponseScore;

  end;

  TPatientGender = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TPatientHistory = class(TObject)
  private
    FPatientID: integer;
    FFamilyName: string;
    FGivenName: string;
    FGender: string;
    FBirthDate: string;
    FAge: integer;
    FHomeAddressLine1: string;
    FHomeAddressLine2: string;
    FHomeSuburb: string;
    FHomePostcode: string;
    FHomePhone: string;
    FMobilePhone: string;

    Fundefined: TAppointment;

    FEncounters: ;
    FResults: ;
    FRecalls: ;

    function GetPatientID: integer;
    function GetFamilyName: string;
    function GetGivenName: string;
    function GetGender: string;
    function GetBirthDate: string;
    function GetAge: integer;
    function GetHomeAddressLine1: string;
    function GetHomeAddressLine2: string;
    function GetHomeSuburb: string;
    function GetHomePostcode: string;
    function GetHomePhone: string;
    function GetMobilePhone: string;

    procedure SetPatientID(const AValue: integer);
    procedure SetFamilyName(const AValue: string);
    procedure SetGivenName(const AValue: string);
    procedure SetGender(const AValue: string);
    procedure SetBirthDate(const AValue: string);
    procedure SetAge(const AValue: integer);
    procedure SetHomeAddressLine1(const AValue: string);
    procedure SetHomeAddressLine2(const AValue: string);
    procedure SetHomeSuburb(const AValue: string);
    procedure SetHomePostcode(const AValue: string);
    procedure SetHomePhone(const AValue: string);
    procedure SetMobilePhone(const AValue: string);

    procedure SetNextAppointment(const AValue: TAppointment);

    function GetNextAppointment: TAppointment;

    procedure SetEncounters(const AValue: );
    procedure SetResults(const AValue: );
    procedure SetRecalls(const AValue: );

    function GetEncounters: ;
    function GetResults: ;
    function GetRecalls: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property PatientID: integer read GetPatientID write SetPatientID;
    property FamilyName: string read GetFamilyName write SetFamilyName;
    property GivenName: string read GetGivenName write SetGivenName;
    property Gender: string read GetGender write SetGender;
    property BirthDate: string read GetBirthDate write SetBirthDate;
    property Age: integer read GetAge write SetAge;
    property HomeAddressLine1: string read GetHomeAddressLine1 write SetHomeAddressLine1;
    property HomeAddressLine2: string read GetHomeAddressLine2 write SetHomeAddressLine2;
    property HomeSuburb: string read GetHomeSuburb write SetHomeSuburb;
    property HomePostcode: string read GetHomePostcode write SetHomePostcode;
    property HomePhone: string read GetHomePhone write SetHomePhone;
    property MobilePhone: string read GetMobilePhone write SetMobilePhone;

    property Encounters:  read GetEncounters write SetEncounters;
    property Results:  read GetResults write SetResults;
    property Recalls:  read GetRecalls write SetRecalls;

    property NextAppointment: TAppointment read GetNextAppointment write SetNextAppointment;

  end;

  TPatientIdentity = class(TObject)
  private
    FId: integer;
    FExternalID: string;
    FMedicareNumber: string;
    FMedicareNumberExpiry: string;
    FGivenName: string;
    FFamilyName: string;
    FFullName: string;
    FBirthDate: string;
    FMobilePhone: string;
    FHomePhone: string;
    FHomeAddressLine1: string;
    FHomeAddressLine2: string;
    FHomePostcode: string;
    FHomeSuburb: string;
    FDateOfBirth: string;
    FDateOfBirthFrom: string;
    FDateOfBirthTo: string;
    FMedicareExpiryDate: string;
    FStatusCode: string;
    FJoinedOnline: string;
    FProvisionalPatientId: integer;
    FSortOrder: integer;

    function GetId: integer;
    function GetExternalID: string;
    function GetMedicareNumber: string;
    function GetMedicareNumberExpiry: string;
    function GetGivenName: string;
    function GetFamilyName: string;
    function GetFullName: string;
    function GetBirthDate: string;
    function GetMobilePhone: string;
    function GetHomePhone: string;
    function GetHomeAddressLine1: string;
    function GetHomeAddressLine2: string;
    function GetHomePostcode: string;
    function GetHomeSuburb: string;
    function GetDateOfBirth: string;
    function GetDateOfBirthFrom: string;
    function GetDateOfBirthTo: string;
    function GetMedicareExpiryDate: string;
    function GetStatusCode: string;
    function GetJoinedOnline: string;
    function GetProvisionalPatientId: integer;
    function GetSortOrder: integer;

    procedure SetId(const AValue: integer);
    procedure SetExternalID(const AValue: string);
    procedure SetMedicareNumber(const AValue: string);
    procedure SetMedicareNumberExpiry(const AValue: string);
    procedure SetGivenName(const AValue: string);
    procedure SetFamilyName(const AValue: string);
    procedure SetFullName(const AValue: string);
    procedure SetBirthDate(const AValue: string);
    procedure SetMobilePhone(const AValue: string);
    procedure SetHomePhone(const AValue: string);
    procedure SetHomeAddressLine1(const AValue: string);
    procedure SetHomeAddressLine2(const AValue: string);
    procedure SetHomePostcode(const AValue: string);
    procedure SetHomeSuburb(const AValue: string);
    procedure SetDateOfBirth(const AValue: string);
    procedure SetDateOfBirthFrom(const AValue: string);
    procedure SetDateOfBirthTo(const AValue: string);
    procedure SetMedicareExpiryDate(const AValue: string);
    procedure SetStatusCode(const AValue: string);
    procedure SetJoinedOnline(const AValue: string);
    procedure SetProvisionalPatientId(const AValue: integer);
    procedure SetSortOrder(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property ExternalID: string read GetExternalID write SetExternalID;
    property MedicareNumber: string read GetMedicareNumber write SetMedicareNumber;
    property MedicareNumberExpiry: string read GetMedicareNumberExpiry write SetMedicareNumberExpiry;
    property GivenName: string read GetGivenName write SetGivenName;
    property FamilyName: string read GetFamilyName write SetFamilyName;
    property FullName: string read GetFullName write SetFullName;
    property BirthDate: string read GetBirthDate write SetBirthDate;
    property MobilePhone: string read GetMobilePhone write SetMobilePhone;
    property HomePhone: string read GetHomePhone write SetHomePhone;
    property HomeAddressLine1: string read GetHomeAddressLine1 write SetHomeAddressLine1;
    property HomeAddressLine2: string read GetHomeAddressLine2 write SetHomeAddressLine2;
    property HomePostcode: string read GetHomePostcode write SetHomePostcode;
    property HomeSuburb: string read GetHomeSuburb write SetHomeSuburb;
    property DateOfBirth: string read GetDateOfBirth write SetDateOfBirth;
    property DateOfBirthFrom: string read GetDateOfBirthFrom write SetDateOfBirthFrom;
    property DateOfBirthTo: string read GetDateOfBirthTo write SetDateOfBirthTo;
    property MedicareExpiryDate: string read GetMedicareExpiryDate write SetMedicareExpiryDate;
    property StatusCode: string read GetStatusCode write SetStatusCode;
    property JoinedOnline: string read GetJoinedOnline write SetJoinedOnline;
    property ProvisionalPatientId: integer read GetProvisionalPatientId write SetProvisionalPatientId;
    property SortOrder: integer read GetSortOrder write SetSortOrder;

  end;

  TPbsState = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TPrescriber = class(TObject)
  private
    FTitle: string;
    FGivenName: string;
    FFamilyName: string;
    FQuals: string;
    FMobilePhoneNumber: string;
    FEmail: string;
    FDoctorTypeDescription: string;
    FPrescriberNo: string;
    FProviderNo: string;
    FHPII: string;
    FAHPRANo: string;
    FHPIO: string;
    FClinicName: string;
    FClinicAddressLine1: string;
    FClinicAddressLine2: string;
    FClinicSuburb: string;
    FClinicPostCode: string;
    FClinicPhoneNumber1: string;
    FClinicPhoneNumber2: string;
    FClinicPhoneNumber3: string;
    FClinicFaxNumber: string;
    FSafeScriptTerminalId: string;
    FErxEntityId: string;
    FHICLocationId: string;
    FOrganisationType: string;
    FUserId: string;
    FDoctorCode: string;
    FMimsValidFrom: string;
    FSpecialtyTreatmentText: string;

    function GetTitle: string;
    function GetGivenName: string;
    function GetFamilyName: string;
    function GetQuals: string;
    function GetMobilePhoneNumber: string;
    function GetEmail: string;
    function GetDoctorTypeDescription: string;
    function GetPrescriberNo: string;
    function GetProviderNo: string;
    function GetHPII: string;
    function GetAHPRANo: string;
    function GetHPIO: string;
    function GetClinicName: string;
    function GetClinicAddressLine1: string;
    function GetClinicAddressLine2: string;
    function GetClinicSuburb: string;
    function GetClinicPostCode: string;
    function GetClinicPhoneNumber1: string;
    function GetClinicPhoneNumber2: string;
    function GetClinicPhoneNumber3: string;
    function GetClinicFaxNumber: string;
    function GetSafeScriptTerminalId: string;
    function GetErxEntityId: string;
    function GetHICLocationId: string;
    function GetOrganisationType: string;
    function GetUserId: string;
    function GetDoctorCode: string;
    function GetMimsValidFrom: string;
    function GetSpecialtyTreatmentText: string;

    procedure SetTitle(const AValue: string);
    procedure SetGivenName(const AValue: string);
    procedure SetFamilyName(const AValue: string);
    procedure SetQuals(const AValue: string);
    procedure SetMobilePhoneNumber(const AValue: string);
    procedure SetEmail(const AValue: string);
    procedure SetDoctorTypeDescription(const AValue: string);
    procedure SetPrescriberNo(const AValue: string);
    procedure SetProviderNo(const AValue: string);
    procedure SetHPII(const AValue: string);
    procedure SetAHPRANo(const AValue: string);
    procedure SetHPIO(const AValue: string);
    procedure SetClinicName(const AValue: string);
    procedure SetClinicAddressLine1(const AValue: string);
    procedure SetClinicAddressLine2(const AValue: string);
    procedure SetClinicSuburb(const AValue: string);
    procedure SetClinicPostCode(const AValue: string);
    procedure SetClinicPhoneNumber1(const AValue: string);
    procedure SetClinicPhoneNumber2(const AValue: string);
    procedure SetClinicPhoneNumber3(const AValue: string);
    procedure SetClinicFaxNumber(const AValue: string);
    procedure SetSafeScriptTerminalId(const AValue: string);
    procedure SetErxEntityId(const AValue: string);
    procedure SetHICLocationId(const AValue: string);
    procedure SetOrganisationType(const AValue: string);
    procedure SetUserId(const AValue: string);
    procedure SetDoctorCode(const AValue: string);
    procedure SetMimsValidFrom(const AValue: string);
    procedure SetSpecialtyTreatmentText(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Title: string read GetTitle write SetTitle;
    property GivenName: string read GetGivenName write SetGivenName;
    property FamilyName: string read GetFamilyName write SetFamilyName;
    property Quals: string read GetQuals write SetQuals;
    property MobilePhoneNumber: string read GetMobilePhoneNumber write SetMobilePhoneNumber;
    property Email: string read GetEmail write SetEmail;
    property DoctorTypeDescription: string read GetDoctorTypeDescription write SetDoctorTypeDescription;
    property PrescriberNo: string read GetPrescriberNo write SetPrescriberNo;
    property ProviderNo: string read GetProviderNo write SetProviderNo;
    property HPII: string read GetHPII write SetHPII;
    property AHPRANo: string read GetAHPRANo write SetAHPRANo;
    property HPIO: string read GetHPIO write SetHPIO;
    property ClinicName: string read GetClinicName write SetClinicName;
    property ClinicAddressLine1: string read GetClinicAddressLine1 write SetClinicAddressLine1;
    property ClinicAddressLine2: string read GetClinicAddressLine2 write SetClinicAddressLine2;
    property ClinicSuburb: string read GetClinicSuburb write SetClinicSuburb;
    property ClinicPostCode: string read GetClinicPostCode write SetClinicPostCode;
    property ClinicPhoneNumber1: string read GetClinicPhoneNumber1 write SetClinicPhoneNumber1;
    property ClinicPhoneNumber2: string read GetClinicPhoneNumber2 write SetClinicPhoneNumber2;
    property ClinicPhoneNumber3: string read GetClinicPhoneNumber3 write SetClinicPhoneNumber3;
    property ClinicFaxNumber: string read GetClinicFaxNumber write SetClinicFaxNumber;
    property SafeScriptTerminalId: string read GetSafeScriptTerminalId write SetSafeScriptTerminalId;
    property ErxEntityId: string read GetErxEntityId write SetErxEntityId;
    property HICLocationId: string read GetHICLocationId write SetHICLocationId;
    property OrganisationType: string read GetOrganisationType write SetOrganisationType;
    property UserId: string read GetUserId write SetUserId;
    property DoctorCode: string read GetDoctorCode write SetDoctorCode;
    property MimsValidFrom: string read GetMimsValidFrom write SetMimsValidFrom;
    property SpecialtyTreatmentText: string read GetSpecialtyTreatmentText write SetSpecialtyTreatmentText;

  end;

  TPrescription = class(TObject)
  private
    FScriptNumber: string;
    FClinicCode: string;
    FRequestId: string;
    FScriptGUID: string;
    FBarcode: string;
    FIsEScript: boolean;
    FAnnotation: string;

    Fundefined: TZedmedPatient;
    Fundefined: TPrescriber;

    FDrugDetailsList: ;
    FElectronicAddresses: ;

    function GetScriptNumber: string;
    function GetClinicCode: string;
    function GetRequestId: string;
    function GetScriptGUID: string;
    function GetBarcode: string;
    function GetIsEScript: boolean;
    function GetAnnotation: string;

    procedure SetScriptNumber(const AValue: string);
    procedure SetClinicCode(const AValue: string);
    procedure SetRequestId(const AValue: string);
    procedure SetScriptGUID(const AValue: string);
    procedure SetBarcode(const AValue: string);
    procedure SetIsEScript(const AValue: boolean);
    procedure SetAnnotation(const AValue: string);

    procedure SetPatient(const AValue: TZedmedPatient);
    procedure SetPrescriber(const AValue: TPrescriber);

    function GetPatient: TZedmedPatient;
    function GetPrescriber: TPrescriber;

    procedure SetDrugDetailsList(const AValue: );
    procedure SetElectronicAddresses(const AValue: );

    function GetDrugDetailsList: ;
    function GetElectronicAddresses: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property ScriptNumber: string read GetScriptNumber write SetScriptNumber;
    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property RequestId: string read GetRequestId write SetRequestId;
    property ScriptGUID: string read GetScriptGUID write SetScriptGUID;
    property Barcode: string read GetBarcode write SetBarcode;
    property IsEScript: boolean read GetIsEScript write SetIsEScript;
    property Annotation: string read GetAnnotation write SetAnnotation;

    property DrugDetailsList:  read GetDrugDetailsList write SetDrugDetailsList;
    property ElectronicAddresses:  read GetElectronicAddresses write SetElectronicAddresses;

    property Patient: TZedmedPatient read GetPatient write SetPatient;
    property Prescriber: TPrescriber read GetPrescriber write SetPrescriber;

  end;

  TProviderIdentifier = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TProvPatientResultCount = class(TObject)
  private
    FnewProvisionalCount: integer;
    FtotalProvisionalCount: integer;
    FmaxPatientID: integer;

    function GetnewProvisionalCount: integer;
    function GettotalProvisionalCount: integer;
    function GetmaxPatientID: integer;

    procedure SetnewProvisionalCount(const AValue: integer);
    procedure SettotalProvisionalCount(const AValue: integer);
    procedure SetmaxPatientID(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property newProvisionalCount: integer read GetnewProvisionalCount write SetnewProvisionalCount;
    property totalProvisionalCount: integer read GettotalProvisionalCount write SettotalProvisionalCount;
    property maxPatientID: integer read GetmaxPatientID write SetmaxPatientID;

  end;

  TQuestionnaireAnswer = class(TObject)
  private
    FQuestionId: integer;
    FValueId: integer;
    FText: string;

    function GetQuestionId: integer;
    function GetValueId: integer;
    function GetText: string;

    procedure SetQuestionId(const AValue: integer);
    procedure SetValueId(const AValue: integer);
    procedure SetText(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property QuestionId: integer read GetQuestionId write SetQuestionId;
    property ValueId: integer read GetValueId write SetValueId;
    property Text: string read GetText write SetText;

  end;

  TQuestionnaireAnswersRequest = class(TObject)
  private
    FQuestionnaireId: integer;
    FExternalPatientId: string;

    FQuestionnaireAnswers: ;

    function GetQuestionnaireId: integer;
    function GetExternalPatientId: string;

    procedure SetQuestionnaireId(const AValue: integer);
    procedure SetExternalPatientId(const AValue: string);

    procedure SetQuestionnaireAnswers(const AValue: );

    function GetQuestionnaireAnswers: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property QuestionnaireId: integer read GetQuestionnaireId write SetQuestionnaireId;
    property ExternalPatientId: string read GetExternalPatientId write SetExternalPatientId;

    property QuestionnaireAnswers:  read GetQuestionnaireAnswers write SetQuestionnaireAnswers;

  end;

  TRecall = class(TObject)
  private
    FId: integer;
    FPatientId: integer;
    FClinicCode: string;
    FDoctorCode: string;
    FCreationDate: string;
    FMaturityDate: string;
    FRecallTypeId: integer;
    FRecallType: string;
    FNotes: string;

    function GetId: integer;
    function GetPatientId: integer;
    function GetClinicCode: string;
    function GetDoctorCode: string;
    function GetCreationDate: string;
    function GetMaturityDate: string;
    function GetRecallTypeId: integer;
    function GetRecallType: string;
    function GetNotes: string;

    procedure SetId(const AValue: integer);
    procedure SetPatientId(const AValue: integer);
    procedure SetClinicCode(const AValue: string);
    procedure SetDoctorCode(const AValue: string);
    procedure SetCreationDate(const AValue: string);
    procedure SetMaturityDate(const AValue: string);
    procedure SetRecallTypeId(const AValue: integer);
    procedure SetRecallType(const AValue: string);
    procedure SetNotes(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property PatientId: integer read GetPatientId write SetPatientId;
    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property DoctorCode: string read GetDoctorCode write SetDoctorCode;
    property CreationDate: string read GetCreationDate write SetCreationDate;
    property MaturityDate: string read GetMaturityDate write SetMaturityDate;
    property RecallTypeId: integer read GetRecallTypeId write SetRecallTypeId;
    property RecallType: string read GetRecallType write SetRecallType;
    property Notes: string read GetNotes write SetNotes;

  end;

  TResultAction = class(TObject)
  private
    FResultId: integer;
    FNote: string;
    FSetCompleted: boolean;
    FIsPatientNotified: boolean;
    FSMSNoteToPatient: boolean;

    Fundefined: TResultActionName;
    Fundefined: TResultPriority;

    function GetResultId: integer;
    function GetNote: string;
    function GetSetCompleted: boolean;
    function GetIsPatientNotified: boolean;
    function GetSMSNoteToPatient: boolean;

    procedure SetResultId(const AValue: integer);
    procedure SetNote(const AValue: string);
    procedure SetSetCompleted(const AValue: boolean);
    procedure SetIsPatientNotified(const AValue: boolean);
    procedure SetSMSNoteToPatient(const AValue: boolean);

    procedure SetActionName(const AValue: TResultActionName);
    procedure SetPriority(const AValue: TResultPriority);

    function GetActionName: TResultActionName;
    function GetPriority: TResultPriority;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property ResultId: integer read GetResultId write SetResultId;
    property Note: string read GetNote write SetNote;
    property SetCompleted: boolean read GetSetCompleted write SetSetCompleted;
    property IsPatientNotified: boolean read GetIsPatientNotified write SetIsPatientNotified;
    property SMSNoteToPatient: boolean read GetSMSNoteToPatient write SetSMSNoteToPatient;

    property ActionName: TResultActionName read GetActionName write SetActionName;
    property Priority: TResultPriority read GetPriority write SetPriority;

  end;

  TResultActionName = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TResultPriority = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

  TResultSummary = class(TObject)
  private
    FResultID: integer;
    FDescription: string;
    FStatus: integer;
    FPriority: integer;
    FInterimFlag: string;
    FAssignedUser: string;
    FCollectedDate: string;
    FReportedDate: string;
    FRequestedDate: string;
    FRecievedByLabDate: string;
    FDocumentDate: string;
    FPatientNotifiedDate: string;
    FReferringDoctor: string;

    Fundefined: TZedmedPatient;
    Fundefined: TBlobFileType;

    function GetResultID: integer;
    function GetDescription: string;
    function GetStatus: integer;
    function GetPriority: integer;
    function GetInterimFlag: string;
    function GetAssignedUser: string;
    function GetCollectedDate: string;
    function GetReportedDate: string;
    function GetRequestedDate: string;
    function GetRecievedByLabDate: string;
    function GetDocumentDate: string;
    function GetPatientNotifiedDate: string;
    function GetReferringDoctor: string;

    procedure SetResultID(const AValue: integer);
    procedure SetDescription(const AValue: string);
    procedure SetStatus(const AValue: integer);
    procedure SetPriority(const AValue: integer);
    procedure SetInterimFlag(const AValue: string);
    procedure SetAssignedUser(const AValue: string);
    procedure SetCollectedDate(const AValue: string);
    procedure SetReportedDate(const AValue: string);
    procedure SetRequestedDate(const AValue: string);
    procedure SetRecievedByLabDate(const AValue: string);
    procedure SetDocumentDate(const AValue: string);
    procedure SetPatientNotifiedDate(const AValue: string);
    procedure SetReferringDoctor(const AValue: string);

    procedure SetPatient(const AValue: TZedmedPatient);
    procedure SetDocumentType(const AValue: TBlobFileType);

    function GetPatient: TZedmedPatient;
    function GetDocumentType: TBlobFileType;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property ResultID: integer read GetResultID write SetResultID;
    property Description: string read GetDescription write SetDescription;
    property Status: integer read GetStatus write SetStatus;
    property Priority: integer read GetPriority write SetPriority;
    property InterimFlag: string read GetInterimFlag write SetInterimFlag;
    property AssignedUser: string read GetAssignedUser write SetAssignedUser;
    property CollectedDate: string read GetCollectedDate write SetCollectedDate;
    property ReportedDate: string read GetReportedDate write SetReportedDate;
    property RequestedDate: string read GetRequestedDate write SetRequestedDate;
    property RecievedByLabDate: string read GetRecievedByLabDate write SetRecievedByLabDate;
    property DocumentDate: string read GetDocumentDate write SetDocumentDate;
    property PatientNotifiedDate: string read GetPatientNotifiedDate write SetPatientNotifiedDate;
    property ReferringDoctor: string read GetReferringDoctor write SetReferringDoctor;

    property Patient: TZedmedPatient read GetPatient write SetPatient;
    property DocumentType: TBlobFileType read GetDocumentType write SetDocumentType;

  end;

  TScheduleSlot = class(TObject)
  private
    FStart: string;
    FEnd: string;
    FTypeDescription: string;
    FClinicCode: string;
    FBackgroundColor: string;

    function GetStart: string;
    function GetEnd: string;
    function GetTypeDescription: string;
    function GetClinicCode: string;
    function GetBackgroundColor: string;

    procedure SetStart(const AValue: string);
    procedure SetEnd(const AValue: string);
    procedure SetTypeDescription(const AValue: string);
    procedure SetClinicCode(const AValue: string);
    procedure SetBackgroundColor(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Start: string read GetStart write SetStart;
    property End: string read GetEnd write SetEnd;
    property TypeDescription: string read GetTypeDescription write SetTypeDescription;
    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property BackgroundColor: string read GetBackgroundColor write SetBackgroundColor;

  end;

  TSophiaMimsValidityPassword = class(TObject)
  private
    FMonth: integer;
    FYear: integer;
    FPassword: string;

    function GetMonth: integer;
    function GetYear: integer;
    function GetPassword: string;

    procedure SetMonth(const AValue: integer);
    procedure SetYear(const AValue: integer);
    procedure SetPassword(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Month: integer read GetMonth write SetMonth;
    property Year: integer read GetYear write SetYear;
    property Password: string read GetPassword write SetPassword;

  end;

  TStockAdjustment = class(TObject)
  private
    FId: integer;
    FStockGroupId: integer;
    FAdjustment: integer;
    FAdjustmentReason: integer;
    FReasonDescription: string;
    FCreatedById: string;
    FCreatedAt: string;
    FBatchNumber: string;
    FExpiryDate: string;
    FNote: string;

    function GetId: integer;
    function GetStockGroupId: integer;
    function GetAdjustment: integer;
    function GetAdjustmentReason: integer;
    function GetReasonDescription: string;
    function GetCreatedById: string;
    function GetCreatedAt: string;
    function GetBatchNumber: string;
    function GetExpiryDate: string;
    function GetNote: string;

    procedure SetId(const AValue: integer);
    procedure SetStockGroupId(const AValue: integer);
    procedure SetAdjustment(const AValue: integer);
    procedure SetAdjustmentReason(const AValue: integer);
    procedure SetReasonDescription(const AValue: string);
    procedure SetCreatedById(const AValue: string);
    procedure SetCreatedAt(const AValue: string);
    procedure SetBatchNumber(const AValue: string);
    procedure SetExpiryDate(const AValue: string);
    procedure SetNote(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property StockGroupId: integer read GetStockGroupId write SetStockGroupId;
    property Adjustment: integer read GetAdjustment write SetAdjustment;
    property AdjustmentReason: integer read GetAdjustmentReason write SetAdjustmentReason;
    property ReasonDescription: string read GetReasonDescription write SetReasonDescription;
    property CreatedById: string read GetCreatedById write SetCreatedById;
    property CreatedAt: string read GetCreatedAt write SetCreatedAt;
    property BatchNumber: string read GetBatchNumber write SetBatchNumber;
    property ExpiryDate: string read GetExpiryDate write SetExpiryDate;
    property Note: string read GetNote write SetNote;

  end;

  TStockGroup = class(TObject)
  private
    FId: integer;
    FProductId: integer;
    FSupplierId: integer;
    FBatchNumber: string;
    FSerialNumber: string;
    FExpiryDate: string;
    FPurchasePrice: number;
    FArrivalDate: string;
    FOrderCode: string;
    FClinicCode: string;
    FCreatedById: string;
    FCreatedAt: string;
    FGroupSplitFrom: integer;
    FIsBatchRequired: boolean;
    FIsExpiryDateRequired: boolean;
    FIsSerialRequired: boolean;

    FStockAdjustments: ;

    function GetId: integer;
    function GetProductId: integer;
    function GetSupplierId: integer;
    function GetBatchNumber: string;
    function GetSerialNumber: string;
    function GetExpiryDate: string;
    function GetPurchasePrice: number;
    function GetArrivalDate: string;
    function GetOrderCode: string;
    function GetClinicCode: string;
    function GetCreatedById: string;
    function GetCreatedAt: string;
    function GetGroupSplitFrom: integer;
    function GetIsBatchRequired: boolean;
    function GetIsExpiryDateRequired: boolean;
    function GetIsSerialRequired: boolean;

    procedure SetId(const AValue: integer);
    procedure SetProductId(const AValue: integer);
    procedure SetSupplierId(const AValue: integer);
    procedure SetBatchNumber(const AValue: string);
    procedure SetSerialNumber(const AValue: string);
    procedure SetExpiryDate(const AValue: string);
    procedure SetPurchasePrice(const AValue: number);
    procedure SetArrivalDate(const AValue: string);
    procedure SetOrderCode(const AValue: string);
    procedure SetClinicCode(const AValue: string);
    procedure SetCreatedById(const AValue: string);
    procedure SetCreatedAt(const AValue: string);
    procedure SetGroupSplitFrom(const AValue: integer);
    procedure SetIsBatchRequired(const AValue: boolean);
    procedure SetIsExpiryDateRequired(const AValue: boolean);
    procedure SetIsSerialRequired(const AValue: boolean);

    procedure SetStockAdjustments(const AValue: );

    function GetStockAdjustments: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property ProductId: integer read GetProductId write SetProductId;
    property SupplierId: integer read GetSupplierId write SetSupplierId;
    property BatchNumber: string read GetBatchNumber write SetBatchNumber;
    property SerialNumber: string read GetSerialNumber write SetSerialNumber;
    property ExpiryDate: string read GetExpiryDate write SetExpiryDate;
    property PurchasePrice: number read GetPurchasePrice write SetPurchasePrice;
    property ArrivalDate: string read GetArrivalDate write SetArrivalDate;
    property OrderCode: string read GetOrderCode write SetOrderCode;
    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property CreatedById: string read GetCreatedById write SetCreatedById;
    property CreatedAt: string read GetCreatedAt write SetCreatedAt;
    property GroupSplitFrom: integer read GetGroupSplitFrom write SetGroupSplitFrom;
    property IsBatchRequired: boolean read GetIsBatchRequired write SetIsBatchRequired;
    property IsExpiryDateRequired: boolean read GetIsExpiryDateRequired write SetIsExpiryDateRequired;
    property IsSerialRequired: boolean read GetIsSerialRequired write SetIsSerialRequired;

    property StockAdjustments:  read GetStockAdjustments write SetStockAdjustments;

  end;

  TStockProduct = class(TObject)
  private
    FId: integer;
    FParentId: integer;
    FLookupValueId: integer;
    FLookUpValueDescription: string;
    FProductName: string;
    FBrand: string;
    FAdjustmentMethod: string;
    FReorderThreshold: integer;
    FNotes: string;
    FIsBatchRequired: boolean;
    FIsExpiryDateRequired: boolean;
    FIsActive: boolean;
    FCreatedById: string;
    FCreatedAt: string;
    FModifiedById: string;
    FModifiedAt: string;
    FPreferredProductSupplierId: integer;
    FPreferredSupplierId: integer;
    FPreferredSupplierName: string;
    FCurrentStock: integer;
    FCurrentStockValue: number;
    FThresholdDifference: number;
    FItemCode: string;
    FProductNameU: string;
    FBrandU: string;
    FItemCodeU: string;
    FPreferredSupplierNameU: string;
    FLookUpValueDescriptionU: string;
    FImmTypeId: integer;
    FIsSerialRequired: boolean;
    FSplitQuantity: integer;

    Fundefined: TStockProductItem;
    Fundefined: TStockProduct;

    FProductSuppliers: ;
    FStockGroups: ;

    function GetId: integer;
    function GetParentId: integer;
    function GetLookupValueId: integer;
    function GetLookUpValueDescription: string;
    function GetProductName: string;
    function GetBrand: string;
    function GetAdjustmentMethod: string;
    function GetReorderThreshold: integer;
    function GetNotes: string;
    function GetIsBatchRequired: boolean;
    function GetIsExpiryDateRequired: boolean;
    function GetIsActive: boolean;
    function GetCreatedById: string;
    function GetCreatedAt: string;
    function GetModifiedById: string;
    function GetModifiedAt: string;
    function GetPreferredProductSupplierId: integer;
    function GetPreferredSupplierId: integer;
    function GetPreferredSupplierName: string;
    function GetCurrentStock: integer;
    function GetCurrentStockValue: number;
    function GetThresholdDifference: number;
    function GetItemCode: string;
    function GetProductNameU: string;
    function GetBrandU: string;
    function GetItemCodeU: string;
    function GetPreferredSupplierNameU: string;
    function GetLookUpValueDescriptionU: string;
    function GetImmTypeId: integer;
    function GetIsSerialRequired: boolean;
    function GetSplitQuantity: integer;

    procedure SetId(const AValue: integer);
    procedure SetParentId(const AValue: integer);
    procedure SetLookupValueId(const AValue: integer);
    procedure SetLookUpValueDescription(const AValue: string);
    procedure SetProductName(const AValue: string);
    procedure SetBrand(const AValue: string);
    procedure SetAdjustmentMethod(const AValue: string);
    procedure SetReorderThreshold(const AValue: integer);
    procedure SetNotes(const AValue: string);
    procedure SetIsBatchRequired(const AValue: boolean);
    procedure SetIsExpiryDateRequired(const AValue: boolean);
    procedure SetIsActive(const AValue: boolean);
    procedure SetCreatedById(const AValue: string);
    procedure SetCreatedAt(const AValue: string);
    procedure SetModifiedById(const AValue: string);
    procedure SetModifiedAt(const AValue: string);
    procedure SetPreferredProductSupplierId(const AValue: integer);
    procedure SetPreferredSupplierId(const AValue: integer);
    procedure SetPreferredSupplierName(const AValue: string);
    procedure SetCurrentStock(const AValue: integer);
    procedure SetCurrentStockValue(const AValue: number);
    procedure SetThresholdDifference(const AValue: number);
    procedure SetItemCode(const AValue: string);
    procedure SetProductNameU(const AValue: string);
    procedure SetBrandU(const AValue: string);
    procedure SetItemCodeU(const AValue: string);
    procedure SetPreferredSupplierNameU(const AValue: string);
    procedure SetLookUpValueDescriptionU(const AValue: string);
    procedure SetImmTypeId(const AValue: integer);
    procedure SetIsSerialRequired(const AValue: boolean);
    procedure SetSplitQuantity(const AValue: integer);

    procedure SetLinkedItem(const AValue: TStockProductItem);
    procedure SetSubProduct(const AValue: TStockProduct);

    function GetLinkedItem: TStockProductItem;
    function GetSubProduct: TStockProduct;

    procedure SetProductSuppliers(const AValue: );
    procedure SetStockGroups(const AValue: );

    function GetProductSuppliers: ;
    function GetStockGroups: ;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property ParentId: integer read GetParentId write SetParentId;
    property LookupValueId: integer read GetLookupValueId write SetLookupValueId;
    property LookUpValueDescription: string read GetLookUpValueDescription write SetLookUpValueDescription;
    property ProductName: string read GetProductName write SetProductName;
    property Brand: string read GetBrand write SetBrand;
    property AdjustmentMethod: string read GetAdjustmentMethod write SetAdjustmentMethod;
    property ReorderThreshold: integer read GetReorderThreshold write SetReorderThreshold;
    property Notes: string read GetNotes write SetNotes;
    property IsBatchRequired: boolean read GetIsBatchRequired write SetIsBatchRequired;
    property IsExpiryDateRequired: boolean read GetIsExpiryDateRequired write SetIsExpiryDateRequired;
    property IsActive: boolean read GetIsActive write SetIsActive;
    property CreatedById: string read GetCreatedById write SetCreatedById;
    property CreatedAt: string read GetCreatedAt write SetCreatedAt;
    property ModifiedById: string read GetModifiedById write SetModifiedById;
    property ModifiedAt: string read GetModifiedAt write SetModifiedAt;
    property PreferredProductSupplierId: integer read GetPreferredProductSupplierId write SetPreferredProductSupplierId;
    property PreferredSupplierId: integer read GetPreferredSupplierId write SetPreferredSupplierId;
    property PreferredSupplierName: string read GetPreferredSupplierName write SetPreferredSupplierName;
    property CurrentStock: integer read GetCurrentStock write SetCurrentStock;
    property CurrentStockValue: number read GetCurrentStockValue write SetCurrentStockValue;
    property ThresholdDifference: number read GetThresholdDifference write SetThresholdDifference;
    property ItemCode: string read GetItemCode write SetItemCode;
    property ProductNameU: string read GetProductNameU write SetProductNameU;
    property BrandU: string read GetBrandU write SetBrandU;
    property ItemCodeU: string read GetItemCodeU write SetItemCodeU;
    property PreferredSupplierNameU: string read GetPreferredSupplierNameU write SetPreferredSupplierNameU;
    property LookUpValueDescriptionU: string read GetLookUpValueDescriptionU write SetLookUpValueDescriptionU;
    property ImmTypeId: integer read GetImmTypeId write SetImmTypeId;
    property IsSerialRequired: boolean read GetIsSerialRequired write SetIsSerialRequired;
    property SplitQuantity: integer read GetSplitQuantity write SetSplitQuantity;

    property ProductSuppliers:  read GetProductSuppliers write SetProductSuppliers;
    property StockGroups:  read GetStockGroups write SetStockGroups;

    property LinkedItem: TStockProductItem read GetLinkedItem write SetLinkedItem;
    property SubProduct: TStockProduct read GetSubProduct write SetSubProduct;

  end;

  TStockProductItem = class(TObject)
  private
    FId: integer;
    FProductId: integer;
    FItemCode: string;

    function GetId: integer;
    function GetProductId: integer;
    function GetItemCode: string;

    procedure SetId(const AValue: integer);
    procedure SetProductId(const AValue: integer);
    procedure SetItemCode(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property ProductId: integer read GetProductId write SetProductId;
    property ItemCode: string read GetItemCode write SetItemCode;

  end;

  TStockProductSupplier = class(TObject)
  private
    FId: integer;
    FProductId: integer;
    FSupplierId: integer;
    FSupplierName: string;
    FOrderCode: string;

    function GetId: integer;
    function GetProductId: integer;
    function GetSupplierId: integer;
    function GetSupplierName: string;
    function GetOrderCode: string;

    procedure SetId(const AValue: integer);
    procedure SetProductId(const AValue: integer);
    procedure SetSupplierId(const AValue: integer);
    procedure SetSupplierName(const AValue: string);
    procedure SetOrderCode(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property ProductId: integer read GetProductId write SetProductId;
    property SupplierId: integer read GetSupplierId write SetSupplierId;
    property SupplierName: string read GetSupplierName write SetSupplierName;
    property OrderCode: string read GetOrderCode write SetOrderCode;

  end;

  TStockSplit = class(TObject)
  private
    FProductId: integer;
    FClinicCode: string;
    FSerialNumber: string;
    FAdjustmentReasonFrom: integer;
    FAdjustmentReasonTo: integer;
    FItemsToSplit: integer;
    FSplitInto: integer;
    FNote: string;
    FIsBatchRequired: boolean;
    FIsExpiryDateRequired: boolean;
    FIsSerialRequired: boolean;

    Fundefined: TStockSplitParameters;

    function GetProductId: integer;
    function GetClinicCode: string;
    function GetSerialNumber: string;
    function GetAdjustmentReasonFrom: integer;
    function GetAdjustmentReasonTo: integer;
    function GetItemsToSplit: integer;
    function GetSplitInto: integer;
    function GetNote: string;
    function GetIsBatchRequired: boolean;
    function GetIsExpiryDateRequired: boolean;
    function GetIsSerialRequired: boolean;

    procedure SetProductId(const AValue: integer);
    procedure SetClinicCode(const AValue: string);
    procedure SetSerialNumber(const AValue: string);
    procedure SetAdjustmentReasonFrom(const AValue: integer);
    procedure SetAdjustmentReasonTo(const AValue: integer);
    procedure SetItemsToSplit(const AValue: integer);
    procedure SetSplitInto(const AValue: integer);
    procedure SetNote(const AValue: string);
    procedure SetIsBatchRequired(const AValue: boolean);
    procedure SetIsExpiryDateRequired(const AValue: boolean);
    procedure SetIsSerialRequired(const AValue: boolean);

    procedure SetStockSplitParameters(const AValue: TStockSplitParameters);

    function GetStockSplitParameters: TStockSplitParameters;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property ProductId: integer read GetProductId write SetProductId;
    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property SerialNumber: string read GetSerialNumber write SetSerialNumber;
    property AdjustmentReasonFrom: integer read GetAdjustmentReasonFrom write SetAdjustmentReasonFrom;
    property AdjustmentReasonTo: integer read GetAdjustmentReasonTo write SetAdjustmentReasonTo;
    property ItemsToSplit: integer read GetItemsToSplit write SetItemsToSplit;
    property SplitInto: integer read GetSplitInto write SetSplitInto;
    property Note: string read GetNote write SetNote;
    property IsBatchRequired: boolean read GetIsBatchRequired write SetIsBatchRequired;
    property IsExpiryDateRequired: boolean read GetIsExpiryDateRequired write SetIsExpiryDateRequired;
    property IsSerialRequired: boolean read GetIsSerialRequired write SetIsSerialRequired;

    property StockSplitParameters: TStockSplitParameters read GetStockSplitParameters write SetStockSplitParameters;

  end;

  TStockSplitParameters = class(TObject)
  private
    FBatchNumber: string;
    FExpiryDate: string;
    FCurrentStock: integer;

    function GetBatchNumber: string;
    function GetExpiryDate: string;
    function GetCurrentStock: integer;

    procedure SetBatchNumber(const AValue: string);
    procedure SetExpiryDate(const AValue: string);
    procedure SetCurrentStock(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property BatchNumber: string read GetBatchNumber write SetBatchNumber;
    property ExpiryDate: string read GetExpiryDate write SetExpiryDate;
    property CurrentStock: integer read GetCurrentStock write SetCurrentStock;

  end;

  TStockSupplier = class(TObject)
  private
    FId: integer;
    FSupplierName: string;
    FWebsite: string;
    FPhoneNumber: string;
    FEmail: string;
    FContactName: string;
    FCreatedById: string;
    FCreatedAt: string;

    function GetId: integer;
    function GetSupplierName: string;
    function GetWebsite: string;
    function GetPhoneNumber: string;
    function GetEmail: string;
    function GetContactName: string;
    function GetCreatedById: string;
    function GetCreatedAt: string;

    procedure SetId(const AValue: integer);
    procedure SetSupplierName(const AValue: string);
    procedure SetWebsite(const AValue: string);
    procedure SetPhoneNumber(const AValue: string);
    procedure SetEmail(const AValue: string);
    procedure SetContactName(const AValue: string);
    procedure SetCreatedById(const AValue: string);
    procedure SetCreatedAt(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property SupplierName: string read GetSupplierName write SetSupplierName;
    property Website: string read GetWebsite write SetWebsite;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
    property Email: string read GetEmail write SetEmail;
    property ContactName: string read GetContactName write SetContactName;
    property CreatedById: string read GetCreatedById write SetCreatedById;
    property CreatedAt: string read GetCreatedAt write SetCreatedAt;

  end;

  TStockUpdate = class(TObject)
  private
    FProductId: integer;
    FBatchNumber: string;
    FExpiryDate: string;
    FSerialNumber: string;
    FAdjustment: integer;
    FAdjustmentReason: integer;
    FAdjustmentNote: string;
    FDirection: boolean;
    FOverdraw: boolean;
    FClinicCode: string;
    FIsBatchRequired: boolean;
    FIsExpiryDateRequired: boolean;
    FIsSerialRequired: boolean;

    function GetProductId: integer;
    function GetBatchNumber: string;
    function GetExpiryDate: string;
    function GetSerialNumber: string;
    function GetAdjustment: integer;
    function GetAdjustmentReason: integer;
    function GetAdjustmentNote: string;
    function GetDirection: boolean;
    function GetOverdraw: boolean;
    function GetClinicCode: string;
    function GetIsBatchRequired: boolean;
    function GetIsExpiryDateRequired: boolean;
    function GetIsSerialRequired: boolean;

    procedure SetProductId(const AValue: integer);
    procedure SetBatchNumber(const AValue: string);
    procedure SetExpiryDate(const AValue: string);
    procedure SetSerialNumber(const AValue: string);
    procedure SetAdjustment(const AValue: integer);
    procedure SetAdjustmentReason(const AValue: integer);
    procedure SetAdjustmentNote(const AValue: string);
    procedure SetDirection(const AValue: boolean);
    procedure SetOverdraw(const AValue: boolean);
    procedure SetClinicCode(const AValue: string);
    procedure SetIsBatchRequired(const AValue: boolean);
    procedure SetIsExpiryDateRequired(const AValue: boolean);
    procedure SetIsSerialRequired(const AValue: boolean);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property ProductId: integer read GetProductId write SetProductId;
    property BatchNumber: string read GetBatchNumber write SetBatchNumber;
    property ExpiryDate: string read GetExpiryDate write SetExpiryDate;
    property SerialNumber: string read GetSerialNumber write SetSerialNumber;
    property Adjustment: integer read GetAdjustment write SetAdjustment;
    property AdjustmentReason: integer read GetAdjustmentReason write SetAdjustmentReason;
    property AdjustmentNote: string read GetAdjustmentNote write SetAdjustmentNote;
    property Direction: boolean read GetDirection write SetDirection;
    property Overdraw: boolean read GetOverdraw write SetOverdraw;
    property ClinicCode: string read GetClinicCode write SetClinicCode;
    property IsBatchRequired: boolean read GetIsBatchRequired write SetIsBatchRequired;
    property IsExpiryDateRequired: boolean read GetIsExpiryDateRequired write SetIsExpiryDateRequired;
    property IsSerialRequired: boolean read GetIsSerialRequired write SetIsSerialRequired;

  end;

  TStockUpdateFromImmunisation = class(TObject)
  private
    FPatientId: integer;
    FImmunisationId: integer;
    FAirCode: string;
    FCancelledBatchNumberInClinical: string;

    Fundefined: TStockUpdate;

    function GetPatientId: integer;
    function GetImmunisationId: integer;
    function GetAirCode: string;
    function GetCancelledBatchNumberInClinical: string;

    procedure SetPatientId(const AValue: integer);
    procedure SetImmunisationId(const AValue: integer);
    procedure SetAirCode(const AValue: string);
    procedure SetCancelledBatchNumberInClinical(const AValue: string);

    procedure SetStockUpdate(const AValue: TStockUpdate);

    function GetStockUpdate: TStockUpdate;

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property PatientId: integer read GetPatientId write SetPatientId;
    property ImmunisationId: integer read GetImmunisationId write SetImmunisationId;
    property AirCode: string read GetAirCode write SetAirCode;
    property CancelledBatchNumberInClinical: string read GetCancelledBatchNumberInClinical write SetCancelledBatchNumberInClinical;

    property StockUpdate: TStockUpdate read GetStockUpdate write SetStockUpdate;

  end;

  TUnreadSMSMessageParams = class(TObject)
  private
    FLastReadMailId: integer;
    FLastCheckMailId: integer;

    function GetLastReadMailId: integer;
    function GetLastCheckMailId: integer;

    procedure SetLastReadMailId(const AValue: integer);
    procedure SetLastCheckMailId(const AValue: integer);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property LastReadMailId: integer read GetLastReadMailId write SetLastReadMailId;
    property LastCheckMailId: integer read GetLastCheckMailId write SetLastCheckMailId;

  end;

  TZedmedClientConfiguration = class(TObject)
  private
    FSuperplusPath: string;
    FClinplusPath: string;
    FDatabaseUsername: string;
    FDatabasePassword: string;
    FCrsAppServerUrl: string;
    FHiServiceUrl: string;
    FClinicalServiceUrl: string;

    function GetSuperplusPath: string;
    function GetClinplusPath: string;
    function GetDatabaseUsername: string;
    function GetDatabasePassword: string;
    function GetCrsAppServerUrl: string;
    function GetHiServiceUrl: string;
    function GetClinicalServiceUrl: string;

    procedure SetSuperplusPath(const AValue: string);
    procedure SetClinplusPath(const AValue: string);
    procedure SetDatabaseUsername(const AValue: string);
    procedure SetDatabasePassword(const AValue: string);
    procedure SetCrsAppServerUrl(const AValue: string);
    procedure SetHiServiceUrl(const AValue: string);
    procedure SetClinicalServiceUrl(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property SuperplusPath: string read GetSuperplusPath write SetSuperplusPath;
    property ClinplusPath: string read GetClinplusPath write SetClinplusPath;
    property DatabaseUsername: string read GetDatabaseUsername write SetDatabaseUsername;
    property DatabasePassword: string read GetDatabasePassword write SetDatabasePassword;
    property CrsAppServerUrl: string read GetCrsAppServerUrl write SetCrsAppServerUrl;
    property HiServiceUrl: string read GetHiServiceUrl write SetHiServiceUrl;
    property ClinicalServiceUrl: string read GetClinicalServiceUrl write SetClinicalServiceUrl;

  end;

  TZedmedPatient = class(TObject)
  private
    FId: integer;
    FExternalID: string;
    FIhi: string;
    FIhiNumberStatus: integer;
    FIhiRecordStatus: integer;
    FMedicareNumber: string;
    FMedicareNumberExpiry: string;
    FHealthCareCard: string;
    FHealthCareCardExpiry: string;
    FDvaNumber: string;
    FDvaNumberExpiry: string;
    FAtsiStatus: string;
    FFamilyName: string;
    FGivenName: string;
    FInitial: string;
    FPopularName: string;
    FTitle: string;
    FGender: string;
    FBirthDate: string;
    FAge: integer;
    FEmail: string;
    FHomePhone: string;
    FWorkPhone: string;
    FMobilePhone: string;
    FPreferredContact: string;
    FHomeAddressLine1: string;
    FHomeAddressLine2: string;
    FHomeSuburb: string;
    FHomePostcode: string;
    FMailingAddressLine1: string;
    FMailingAddressLine2: string;
    FMailingSuburb: string;
    FMailingPostcode: string;
    FStatusCode: string;
    FEmergencyContactName: string;
    FEmergencyContactHomePhone: string;
    FEmergencyContactWorkPhone: string;
    FEmergencyContactMobilePhone: string;
    FNextOfKin: string;
    FNextOfKinRelationship: string;
    FNextOfKinHomePhone: string;
    FNextOfKinWorkPhone: string;
    FNextOfKinMobilePhone: string;
    FSafetyNetNo: string;
    FPensionStatus: integer;
    FErxNotifyConsent: string;
    FPbsCoPaymentRelief: string;
    FDvaCardColour: string;
    FNpdrPrerequisitesCheck: boolean;
    FIsPatientIhiValid: boolean;
    FDoNotSendSMS: boolean;
    FJoinedOnline: string;

    function GetId: integer;
    function GetExternalID: string;
    function GetIhi: string;
    function GetIhiNumberStatus: integer;
    function GetIhiRecordStatus: integer;
    function GetMedicareNumber: string;
    function GetMedicareNumberExpiry: string;
    function GetHealthCareCard: string;
    function GetHealthCareCardExpiry: string;
    function GetDvaNumber: string;
    function GetDvaNumberExpiry: string;
    function GetAtsiStatus: string;
    function GetFamilyName: string;
    function GetGivenName: string;
    function GetInitial: string;
    function GetPopularName: string;
    function GetTitle: string;
    function GetGender: string;
    function GetBirthDate: string;
    function GetAge: integer;
    function GetEmail: string;
    function GetHomePhone: string;
    function GetWorkPhone: string;
    function GetMobilePhone: string;
    function GetPreferredContact: string;
    function GetHomeAddressLine1: string;
    function GetHomeAddressLine2: string;
    function GetHomeSuburb: string;
    function GetHomePostcode: string;
    function GetMailingAddressLine1: string;
    function GetMailingAddressLine2: string;
    function GetMailingSuburb: string;
    function GetMailingPostcode: string;
    function GetStatusCode: string;
    function GetEmergencyContactName: string;
    function GetEmergencyContactHomePhone: string;
    function GetEmergencyContactWorkPhone: string;
    function GetEmergencyContactMobilePhone: string;
    function GetNextOfKin: string;
    function GetNextOfKinRelationship: string;
    function GetNextOfKinHomePhone: string;
    function GetNextOfKinWorkPhone: string;
    function GetNextOfKinMobilePhone: string;
    function GetSafetyNetNo: string;
    function GetPensionStatus: integer;
    function GetErxNotifyConsent: string;
    function GetPbsCoPaymentRelief: string;
    function GetDvaCardColour: string;
    function GetNpdrPrerequisitesCheck: boolean;
    function GetIsPatientIhiValid: boolean;
    function GetDoNotSendSMS: boolean;
    function GetJoinedOnline: string;

    procedure SetId(const AValue: integer);
    procedure SetExternalID(const AValue: string);
    procedure SetIhi(const AValue: string);
    procedure SetIhiNumberStatus(const AValue: integer);
    procedure SetIhiRecordStatus(const AValue: integer);
    procedure SetMedicareNumber(const AValue: string);
    procedure SetMedicareNumberExpiry(const AValue: string);
    procedure SetHealthCareCard(const AValue: string);
    procedure SetHealthCareCardExpiry(const AValue: string);
    procedure SetDvaNumber(const AValue: string);
    procedure SetDvaNumberExpiry(const AValue: string);
    procedure SetAtsiStatus(const AValue: string);
    procedure SetFamilyName(const AValue: string);
    procedure SetGivenName(const AValue: string);
    procedure SetInitial(const AValue: string);
    procedure SetPopularName(const AValue: string);
    procedure SetTitle(const AValue: string);
    procedure SetGender(const AValue: string);
    procedure SetBirthDate(const AValue: string);
    procedure SetAge(const AValue: integer);
    procedure SetEmail(const AValue: string);
    procedure SetHomePhone(const AValue: string);
    procedure SetWorkPhone(const AValue: string);
    procedure SetMobilePhone(const AValue: string);
    procedure SetPreferredContact(const AValue: string);
    procedure SetHomeAddressLine1(const AValue: string);
    procedure SetHomeAddressLine2(const AValue: string);
    procedure SetHomeSuburb(const AValue: string);
    procedure SetHomePostcode(const AValue: string);
    procedure SetMailingAddressLine1(const AValue: string);
    procedure SetMailingAddressLine2(const AValue: string);
    procedure SetMailingSuburb(const AValue: string);
    procedure SetMailingPostcode(const AValue: string);
    procedure SetStatusCode(const AValue: string);
    procedure SetEmergencyContactName(const AValue: string);
    procedure SetEmergencyContactHomePhone(const AValue: string);
    procedure SetEmergencyContactWorkPhone(const AValue: string);
    procedure SetEmergencyContactMobilePhone(const AValue: string);
    procedure SetNextOfKin(const AValue: string);
    procedure SetNextOfKinRelationship(const AValue: string);
    procedure SetNextOfKinHomePhone(const AValue: string);
    procedure SetNextOfKinWorkPhone(const AValue: string);
    procedure SetNextOfKinMobilePhone(const AValue: string);
    procedure SetSafetyNetNo(const AValue: string);
    procedure SetPensionStatus(const AValue: integer);
    procedure SetErxNotifyConsent(const AValue: string);
    procedure SetPbsCoPaymentRelief(const AValue: string);
    procedure SetDvaCardColour(const AValue: string);
    procedure SetNpdrPrerequisitesCheck(const AValue: boolean);
    procedure SetIsPatientIhiValid(const AValue: boolean);
    procedure SetDoNotSendSMS(const AValue: boolean);
    procedure SetJoinedOnline(const AValue: string);

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

    property Id: integer read GetId write SetId;
    property ExternalID: string read GetExternalID write SetExternalID;
    property Ihi: string read GetIhi write SetIhi;
    property IhiNumberStatus: integer read GetIhiNumberStatus write SetIhiNumberStatus;
    property IhiRecordStatus: integer read GetIhiRecordStatus write SetIhiRecordStatus;
    property MedicareNumber: string read GetMedicareNumber write SetMedicareNumber;
    property MedicareNumberExpiry: string read GetMedicareNumberExpiry write SetMedicareNumberExpiry;
    property HealthCareCard: string read GetHealthCareCard write SetHealthCareCard;
    property HealthCareCardExpiry: string read GetHealthCareCardExpiry write SetHealthCareCardExpiry;
    property DvaNumber: string read GetDvaNumber write SetDvaNumber;
    property DvaNumberExpiry: string read GetDvaNumberExpiry write SetDvaNumberExpiry;
    property AtsiStatus: string read GetAtsiStatus write SetAtsiStatus;
    property FamilyName: string read GetFamilyName write SetFamilyName;
    property GivenName: string read GetGivenName write SetGivenName;
    property Initial: string read GetInitial write SetInitial;
    property PopularName: string read GetPopularName write SetPopularName;
    property Title: string read GetTitle write SetTitle;
    property Gender: string read GetGender write SetGender;
    property BirthDate: string read GetBirthDate write SetBirthDate;
    property Age: integer read GetAge write SetAge;
    property Email: string read GetEmail write SetEmail;
    property HomePhone: string read GetHomePhone write SetHomePhone;
    property WorkPhone: string read GetWorkPhone write SetWorkPhone;
    property MobilePhone: string read GetMobilePhone write SetMobilePhone;
    property PreferredContact: string read GetPreferredContact write SetPreferredContact;
    property HomeAddressLine1: string read GetHomeAddressLine1 write SetHomeAddressLine1;
    property HomeAddressLine2: string read GetHomeAddressLine2 write SetHomeAddressLine2;
    property HomeSuburb: string read GetHomeSuburb write SetHomeSuburb;
    property HomePostcode: string read GetHomePostcode write SetHomePostcode;
    property MailingAddressLine1: string read GetMailingAddressLine1 write SetMailingAddressLine1;
    property MailingAddressLine2: string read GetMailingAddressLine2 write SetMailingAddressLine2;
    property MailingSuburb: string read GetMailingSuburb write SetMailingSuburb;
    property MailingPostcode: string read GetMailingPostcode write SetMailingPostcode;
    property StatusCode: string read GetStatusCode write SetStatusCode;
    property EmergencyContactName: string read GetEmergencyContactName write SetEmergencyContactName;
    property EmergencyContactHomePhone: string read GetEmergencyContactHomePhone write SetEmergencyContactHomePhone;
    property EmergencyContactWorkPhone: string read GetEmergencyContactWorkPhone write SetEmergencyContactWorkPhone;
    property EmergencyContactMobilePhone: string read GetEmergencyContactMobilePhone write SetEmergencyContactMobilePhone;
    property NextOfKin: string read GetNextOfKin write SetNextOfKin;
    property NextOfKinRelationship: string read GetNextOfKinRelationship write SetNextOfKinRelationship;
    property NextOfKinHomePhone: string read GetNextOfKinHomePhone write SetNextOfKinHomePhone;
    property NextOfKinWorkPhone: string read GetNextOfKinWorkPhone write SetNextOfKinWorkPhone;
    property NextOfKinMobilePhone: string read GetNextOfKinMobilePhone write SetNextOfKinMobilePhone;
    property SafetyNetNo: string read GetSafetyNetNo write SetSafetyNetNo;
    property PensionStatus: integer read GetPensionStatus write SetPensionStatus;
    property ErxNotifyConsent: string read GetErxNotifyConsent write SetErxNotifyConsent;
    property PbsCoPaymentRelief: string read GetPbsCoPaymentRelief write SetPbsCoPaymentRelief;
    property DvaCardColour: string read GetDvaCardColour write SetDvaCardColour;
    property NpdrPrerequisitesCheck: boolean read GetNpdrPrerequisitesCheck write SetNpdrPrerequisitesCheck;
    property IsPatientIhiValid: boolean read GetIsPatientIhiValid write SetIsPatientIhiValid;
    property DoNotSendSMS: boolean read GetDoNotSendSMS write SetDoNotSendSMS;
    property JoinedOnline: string read GetJoinedOnline write SetJoinedOnline;

  end;

  T$parent = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

#IF var

Implementation
#IF uses

 { Appointment }

procedure TAppointment.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TAppointment.SetDoctorCode(const AValue: string);
begin
   FDoctorCode := AValue; 
end;

procedure TAppointment.SetResourceID(const AValue: integer);
begin
   FResourceID := AValue; 
end;

procedure TAppointment.SetStartTime(const AValue: string);
begin
   FStartTime := AValue; 
end;

procedure TAppointment.SetEndTime(const AValue: string);
begin
   FEndTime := AValue; 
end;

procedure TAppointment.SetPatientName(const AValue: string);
begin
   FPatientName := AValue; 
end;

procedure TAppointment.SetPatientDOB(const AValue: string);
begin
   FPatientDOB := AValue; 
end;

procedure TAppointment.SetAppointmentType(const AValue: string);
begin
   FAppointmentType := AValue; 
end;

procedure TAppointment.SetNotes(const AValue: string);
begin
   FNotes := AValue; 
end;

procedure TAppointment.SetStatusCode(const AValue: string);
begin
   FStatusCode := AValue; 
end;

procedure TAppointment.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TAppointment.SetPatientID(const AValue: integer);
begin
   FPatientID := AValue; 
end;

procedure TAppointment.SetAppointmentTypeID(const AValue: integer);
begin
   FAppointmentTypeID := AValue; 
end;

procedure TAppointment.SetHasHistory(const AValue: boolean);
begin
   FHasHistory := AValue; 
end;

procedure TAppointment.SetHasResults(const AValue: boolean);
begin
   FHasResults := AValue; 
end;

procedure TAppointment.SetBackgroundColor(const AValue: string);
begin
   FBackgroundColor := AValue; 
end;

function TAppointment.GetId: integer);
begin
   result := FId; 
end;

function TAppointment.GetDoctorCode: string);
begin
   result := FDoctorCode; 
end;

function TAppointment.GetResourceID: integer);
begin
   result := FResourceID; 
end;

function TAppointment.GetStartTime: string);
begin
   result := FStartTime; 
end;

function TAppointment.GetEndTime: string);
begin
   result := FEndTime; 
end;

function TAppointment.GetPatientName: string);
begin
   result := FPatientName; 
end;

function TAppointment.GetPatientDOB: string);
begin
   result := FPatientDOB; 
end;

function TAppointment.GetAppointmentType: string);
begin
   result := FAppointmentType; 
end;

function TAppointment.GetNotes: string);
begin
   result := FNotes; 
end;

function TAppointment.GetStatusCode: string);
begin
   result := FStatusCode; 
end;

function TAppointment.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TAppointment.GetPatientID: integer);
begin
   result := FPatientID; 
end;

function TAppointment.GetAppointmentTypeID: integer);
begin
   result := FAppointmentTypeID; 
end;

function TAppointment.GetHasHistory: boolean);
begin
   result := FHasHistory; 
end;

function TAppointment.GetHasResults: boolean);
begin
   result := FHasResults; 
end;

function TAppointment.GetBackgroundColor: string);
begin
   result := FBackgroundColor; 
end;

 { AppointmentDetailList }

procedure TAppointmentDetailList.SetDayStartTime(const AValue: string);
begin
   FDayStartTime := AValue; 
end;

procedure TAppointmentDetailList.SetDayEndTime(const AValue: string);
begin
   FDayEndTime := AValue; 
end;

procedure TAppointmentDetailList.SetTotalCount(const AValue: integer);
begin
   FTotalCount := AValue; 
end;

procedure TAppointmentDetailList.SetFrom(const AValue: integer);
begin
   FFrom := AValue; 
end;

procedure TAppointmentDetailList.SetAppointments(const AValue: IList< TAppointment >);
begin
   FAppointments := AValue; 
end;

procedure TAppointmentDetailList.SetSchedule(const AValue: IList< TAppointment >);
begin
   FSchedule := AValue; 
end;

function TAppointmentDetailList.GetDayStartTime: string);
begin
   result := FDayStartTime; 
end;

function TAppointmentDetailList.GetDayEndTime: string);
begin
   result := FDayEndTime; 
end;

function TAppointmentDetailList.GetTotalCount: integer);
begin
   result := FTotalCount; 
end;

function TAppointmentDetailList.GetFrom: integer);
begin
   result := FFrom; 
end;

function TAppointmentDetailList.GetAppointments: IList< TAppointment >);
begin
   if not assigned(FAppointments) then 
     FAppointments := TCollections.CreateList< TAppointment >;
   FAppointments := AValue; 
end;

function TAppointmentDetailList.GetSchedule: IList< TAppointment >);
begin
   if not assigned(FSchedule) then 
     FSchedule := TCollections.CreateList< TAppointment >;
   FSchedule := AValue; 
end;

 { AppointmentLite }

procedure TAppointmentLite.SetAppointmentId(const AValue: string);
begin
   FAppointmentId := AValue; 
end;

procedure TAppointmentLite.SetExternalPatientId(const AValue: string);
begin
   FExternalPatientId := AValue; 
end;

procedure TAppointmentLite.SetDoctorCode(const AValue: string);
begin
   FDoctorCode := AValue; 
end;

procedure TAppointmentLite.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TAppointmentLite.SetStart(const AValue: string);
begin
   FStart := AValue; 
end;

procedure TAppointmentLite.SetEnd(const AValue: string);
begin
   FEnd := AValue; 
end;

procedure TAppointmentLite.SetCanCancel(const AValue: boolean);
begin
   FCanCancel := AValue; 
end;

procedure TAppointmentLite.SetAppointmentType(const AValue: integer);
begin
   FAppointmentType := AValue; 
end;

function TAppointmentLite.GetAppointmentId: string);
begin
   result := FAppointmentId; 
end;

function TAppointmentLite.GetExternalPatientId: string);
begin
   result := FExternalPatientId; 
end;

function TAppointmentLite.GetDoctorCode: string);
begin
   result := FDoctorCode; 
end;

function TAppointmentLite.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TAppointmentLite.GetStart: string);
begin
   result := FStart; 
end;

function TAppointmentLite.GetEnd: string);
begin
   result := FEnd; 
end;

function TAppointmentLite.GetCanCancel: boolean);
begin
   result := FCanCancel; 
end;

function TAppointmentLite.GetAppointmentType: integer);
begin
   result := FAppointmentType; 
end;

 { AppointmentPatient }

procedure TAppointmentPatient.SetExternalId(const AValue: string);
begin
   FExternalId := AValue; 
end;

procedure TAppointmentPatient.SetFamilyName(const AValue: string);
begin
   FFamilyName := AValue; 
end;

procedure TAppointmentPatient.SetGivenName(const AValue: string);
begin
   FGivenName := AValue; 
end;

procedure TAppointmentPatient.SetPreferredName(const AValue: string);
begin
   FPreferredName := AValue; 
end;

procedure TAppointmentPatient.SetTitle(const AValue: string);
begin
   FTitle := AValue; 
end;

procedure TAppointmentPatient.SetEmailAddress(const AValue: string);
begin
   FEmailAddress := AValue; 
end;

procedure TAppointmentPatient.SetMobilePhone(const AValue: string);
begin
   FMobilePhone := AValue; 
end;

procedure TAppointmentPatient.SetDateOfBirth(const AValue: string);
begin
   FDateOfBirth := AValue; 
end;

procedure TAppointmentPatient.SetHomeAddressLine1(const AValue: string);
begin
   FHomeAddressLine1 := AValue; 
end;

procedure TAppointmentPatient.SetHomeAddressLine2(const AValue: string);
begin
   FHomeAddressLine2 := AValue; 
end;

procedure TAppointmentPatient.SetHomeSuburb(const AValue: string);
begin
   FHomeSuburb := AValue; 
end;

procedure TAppointmentPatient.SetHomePostcode(const AValue: string);
begin
   FHomePostcode := AValue; 
end;

procedure TAppointmentPatient.SetMedicareCardNumber(const AValue: string);
begin
   FMedicareCardNumber := AValue; 
end;

procedure TAppointmentPatient.SetMedicareCardExpiry(const AValue: string);
begin
   FMedicareCardExpiry := AValue; 
end;

procedure TAppointmentPatient.SetNOKName(const AValue: string);
begin
   FNOKName := AValue; 
end;

procedure TAppointmentPatient.SetNOKRelation(const AValue: string);
begin
   FNOKRelation := AValue; 
end;

procedure TAppointmentPatient.SetNOKMobilePhone(const AValue: string);
begin
   FNOKMobilePhone := AValue; 
end;

procedure TAppointmentPatient.SetEmergencyContactName(const AValue: string);
begin
   FEmergencyContactName := AValue; 
end;

procedure TAppointmentPatient.SetEmergencyContactMobile(const AValue: string);
begin
   FEmergencyContactMobile := AValue; 
end;

procedure TAppointmentPatient.SetConcessionCardNumber(const AValue: string);
begin
   FConcessionCardNumber := AValue; 
end;

procedure TAppointmentPatient.SetConcessionCardExpiry(const AValue: string);
begin
   FConcessionCardExpiry := AValue; 
end;

procedure TAppointmentPatient.SetConcessionCardType(const AValue: TConcessionCardType);
begin
   if assigned(FConcessionCardType) and (AValue<>FConcessionCardType) then 
     freeAndNil(FConcessionCardType);
   FConcessionCardType := AValue; 
end;

procedure TAppointmentPatient.SetGender(const AValue: TPatientGender);
begin
   if assigned(FGender) and (AValue<>FGender) then 
     freeAndNil(FGender);
   FGender := AValue; 
end;

function TAppointmentPatient.GetExternalId: string);
begin
   result := FExternalId; 
end;

function TAppointmentPatient.GetFamilyName: string);
begin
   result := FFamilyName; 
end;

function TAppointmentPatient.GetGivenName: string);
begin
   result := FGivenName; 
end;

function TAppointmentPatient.GetPreferredName: string);
begin
   result := FPreferredName; 
end;

function TAppointmentPatient.GetTitle: string);
begin
   result := FTitle; 
end;

function TAppointmentPatient.GetEmailAddress: string);
begin
   result := FEmailAddress; 
end;

function TAppointmentPatient.GetMobilePhone: string);
begin
   result := FMobilePhone; 
end;

function TAppointmentPatient.GetDateOfBirth: string);
begin
   result := FDateOfBirth; 
end;

function TAppointmentPatient.GetHomeAddressLine1: string);
begin
   result := FHomeAddressLine1; 
end;

function TAppointmentPatient.GetHomeAddressLine2: string);
begin
   result := FHomeAddressLine2; 
end;

function TAppointmentPatient.GetHomeSuburb: string);
begin
   result := FHomeSuburb; 
end;

function TAppointmentPatient.GetHomePostcode: string);
begin
   result := FHomePostcode; 
end;

function TAppointmentPatient.GetMedicareCardNumber: string);
begin
   result := FMedicareCardNumber; 
end;

function TAppointmentPatient.GetMedicareCardExpiry: string);
begin
   result := FMedicareCardExpiry; 
end;

function TAppointmentPatient.GetNOKName: string);
begin
   result := FNOKName; 
end;

function TAppointmentPatient.GetNOKRelation: string);
begin
   result := FNOKRelation; 
end;

function TAppointmentPatient.GetNOKMobilePhone: string);
begin
   result := FNOKMobilePhone; 
end;

function TAppointmentPatient.GetEmergencyContactName: string);
begin
   result := FEmergencyContactName; 
end;

function TAppointmentPatient.GetEmergencyContactMobile: string);
begin
   result := FEmergencyContactMobile; 
end;

function TAppointmentPatient.GetConcessionCardNumber: string);
begin
   result := FConcessionCardNumber; 
end;

function TAppointmentPatient.GetConcessionCardExpiry: string);
begin
   result := FConcessionCardExpiry; 
end;

function TAppointmentPatient.GetConcessionCardType : TConcessionCardType);
begin
   if not assigned(FConcessionCardType) then 
      FConcessionCardType := TConcessionCardType.Create;
   result := FConcessionCardType;
end;

function TAppointmentPatient.GetGender : TPatientGender);
begin
   if not assigned(FGender) then 
      FGender := TPatientGender.Create;
   result := FGender;
end;

 { BarcodeUpdate }

procedure TBarcodeUpdate.SetReferenceGuid(const AValue: string);
begin
   FReferenceGuid := AValue; 
end;

procedure TBarcodeUpdate.SetBarcodeValue(const AValue: string);
begin
   FBarcodeValue := AValue; 
end;

function TBarcodeUpdate.GetReferenceGuid: string);
begin
   result := FReferenceGuid; 
end;

function TBarcodeUpdate.GetBarcodeValue: string);
begin
   result := FBarcodeValue; 
end;

 { BlobFileType }

 { ClaimingAdmission }

procedure TClaimingAdmission.SethospitalInd(const AValue: boolean);
begin
   FhospitalInd := AValue; 
end;

procedure TClaimingAdmission.SetadmissionDate(const AValue: string);
begin
   FadmissionDate := AValue; 
end;

procedure TClaimingAdmission.SetdischargeDate(const AValue: string);
begin
   FdischargeDate := AValue; 
end;

procedure TClaimingAdmission.SetaccidentInd(const AValue: boolean);
begin
   FaccidentInd := AValue; 
end;

function TClaimingAdmission.GethospitalInd: boolean);
begin
   result := FhospitalInd; 
end;

function TClaimingAdmission.GetadmissionDate: string);
begin
   result := FadmissionDate; 
end;

function TClaimingAdmission.GetdischargeDate: string);
begin
   result := FdischargeDate; 
end;

function TClaimingAdmission.GetaccidentInd: boolean);
begin
   result := FaccidentInd; 
end;

 { ClaimingAssessmentNotes }

procedure TClaimingAssessmentNotes.Setassessor(const AValue: string);
begin
   Fassessor := AValue; 
end;

procedure TClaimingAssessmentNotes.Setcode(const AValue: string);
begin
   Fcode := AValue; 
end;

procedure TClaimingAssessmentNotes.Setnote(const AValue: string);
begin
   Fnote := AValue; 
end;

function TClaimingAssessmentNotes.Getassessor: string);
begin
   result := Fassessor; 
end;

function TClaimingAssessmentNotes.Getcode: string);
begin
   result := Fcode; 
end;

function TClaimingAssessmentNotes.Getnote: string);
begin
   result := Fnote; 
end;

 { ClaimingAuthorise }

procedure TClaimingAuthorise.Setbenefit(const AValue: boolean);
begin
   Fbenefit := AValue; 
end;

procedure TClaimingAuthorise.Setclaim(const AValue: boolean);
begin
   Fclaim := AValue; 
end;

function TClaimingAuthorise.Getbenefit: boolean);
begin
   result := Fbenefit; 
end;

function TClaimingAuthorise.Getclaim: boolean);
begin
   result := Fclaim; 
end;

 { ClaimingBenefit }

procedure TClaimingBenefit.Setassessor(const AValue: string);
begin
   Fassessor := AValue; 
end;

procedure TClaimingBenefit.SetbenefitPaid(const AValue: number);
begin
   FbenefitPaid := AValue; 
end;

function TClaimingBenefit.Getassessor: string);
begin
   result := Fassessor; 
end;

function TClaimingBenefit.GetbenefitPaid: number);
begin
   result := FbenefitPaid; 
end;

 { ClaimingClaimant }

procedure TClaimingClaimant.SetdateOfBirth(const AValue: string);
begin
   FdateOfBirth := AValue; 
end;

procedure TClaimingClaimant.Setgender(const AValue: string);
begin
   Fgender := AValue; 
end;

procedure TClaimingClaimant.Setphone(const AValue: string);
begin
   Fphone := AValue; 
end;

procedure TClaimingClaimant.Setaddress(const AValue: TClaimingClaimantAddress);
begin
   if assigned(Faddress) and (AValue<>Faddress) then 
     freeAndNil(Faddress);
   Faddress := AValue; 
end;

procedure TClaimingClaimant.Setbank(const AValue: TClaimingClaimantBank);
begin
   if assigned(Fbank) and (AValue<>Fbank) then 
     freeAndNil(Fbank);
   Fbank := AValue; 
end;

procedure TClaimingClaimant.Setmedicare(const AValue: TClaimingClaimantMedicare);
begin
   if assigned(Fmedicare) and (AValue<>Fmedicare) then 
     freeAndNil(Fmedicare);
   Fmedicare := AValue; 
end;

procedure TClaimingClaimant.Setname(const AValue: TClaimingClaimantName);
begin
   if assigned(Fname) and (AValue<>Fname) then 
     freeAndNil(Fname);
   Fname := AValue; 
end;

function TClaimingClaimant.GetdateOfBirth: string);
begin
   result := FdateOfBirth; 
end;

function TClaimingClaimant.Getgender: string);
begin
   result := Fgender; 
end;

function TClaimingClaimant.Getphone: string);
begin
   result := Fphone; 
end;

function TClaimingClaimant.Getaddress : TClaimingClaimantAddress);
begin
   if not assigned(Faddress) then 
      Faddress := TClaimingClaimantAddress.Create;
   result := Faddress;
end;

function TClaimingClaimant.Getbank : TClaimingClaimantBank);
begin
   if not assigned(Fbank) then 
      Fbank := TClaimingClaimantBank.Create;
   result := Fbank;
end;

function TClaimingClaimant.Getmedicare : TClaimingClaimantMedicare);
begin
   if not assigned(Fmedicare) then 
      Fmedicare := TClaimingClaimantMedicare.Create;
   result := Fmedicare;
end;

function TClaimingClaimant.Getname : TClaimingClaimantName);
begin
   if not assigned(Fname) then 
      Fname := TClaimingClaimantName.Create;
   result := Fname;
end;

 { ClaimingClaimantAddress }

procedure TClaimingClaimantAddress.Setline1(const AValue: string);
begin
   Fline1 := AValue; 
end;

procedure TClaimingClaimantAddress.Setline2(const AValue: string);
begin
   Fline2 := AValue; 
end;

procedure TClaimingClaimantAddress.Setlocality(const AValue: string);
begin
   Flocality := AValue; 
end;

procedure TClaimingClaimantAddress.Setpostcode(const AValue: string);
begin
   Fpostcode := AValue; 
end;

function TClaimingClaimantAddress.Getline1: string);
begin
   result := Fline1; 
end;

function TClaimingClaimantAddress.Getline2: string);
begin
   result := Fline2; 
end;

function TClaimingClaimantAddress.Getlocality: string);
begin
   result := Flocality; 
end;

function TClaimingClaimantAddress.Getpostcode: string);
begin
   result := Fpostcode; 
end;

 { ClaimingClaimantBank }

procedure TClaimingClaimantBank.SetaccountName(const AValue: string);
begin
   FaccountName := AValue; 
end;

procedure TClaimingClaimantBank.SetaccountNumber(const AValue: string);
begin
   FaccountNumber := AValue; 
end;

procedure TClaimingClaimantBank.Setbsb(const AValue: string);
begin
   Fbsb := AValue; 
end;

function TClaimingClaimantBank.GetaccountName: string);
begin
   result := FaccountName; 
end;

function TClaimingClaimantBank.GetaccountNumber: string);
begin
   result := FaccountNumber; 
end;

function TClaimingClaimantBank.Getbsb: string);
begin
   result := Fbsb; 
end;

 { ClaimingClaimantMedicare }

procedure TClaimingClaimantMedicare.Setnumber(const AValue: integer);
begin
   Fnumber := AValue; 
end;

procedure TClaimingClaimantMedicare.Setref(const AValue: integer);
begin
   Fref := AValue; 
end;

function TClaimingClaimantMedicare.Getnumber: integer);
begin
   result := Fnumber; 
end;

function TClaimingClaimantMedicare.Getref: integer);
begin
   result := Fref; 
end;

 { ClaimingClaimantName }

procedure TClaimingClaimantName.Setfamily(const AValue: string);
begin
   Ffamily := AValue; 
end;

procedure TClaimingClaimantName.Setfirst(const AValue: string);
begin
   Ffirst := AValue; 
end;

procedure TClaimingClaimantName.Setsecond(const AValue: string);
begin
   Fsecond := AValue; 
end;

function TClaimingClaimantName.Getfamily: string);
begin
   result := Ffamily; 
end;

function TClaimingClaimantName.Getfirst: string);
begin
   result := Ffirst; 
end;

function TClaimingClaimantName.Getsecond: string);
begin
   result := Fsecond; 
end;

 { ClaimingClaimRequest }

procedure TClaimingClaimRequest.SetreferenceNumber(const AValue: string);
begin
   FreferenceNumber := AValue; 
end;

procedure TClaimingClaimRequest.SetdateAuthorised(const AValue: string);
begin
   FdateAuthorised := AValue; 
end;

procedure TClaimingClaimRequest.SetdateCertified(const AValue: string);
begin
   FdateCertified := AValue; 
end;

function TClaimingClaimRequest.GetreferenceNumber: string);
begin
   result := FreferenceNumber; 
end;

function TClaimingClaimRequest.GetdateAuthorised: string);
begin
   result := FdateAuthorised; 
end;

function TClaimingClaimRequest.GetdateCertified: string);
begin
   result := FdateCertified; 
end;

 { ClaimingClaimsRequest }

procedure TClaimingClaimsRequest.Settype(const AValue: string);
begin
   Ftype := AValue; 
end;

procedure TClaimingClaimsRequest.Setflags(const AValue: TClaimingFlags);
begin
   if assigned(Fflags) and (AValue<>Fflags) then 
     freeAndNil(Fflags);
   Fflags := AValue; 
end;

procedure TClaimingClaimsRequest.Setlocation(const AValue: TClaimingLocation);
begin
   if assigned(Flocation) and (AValue<>Flocation) then 
     freeAndNil(Flocation);
   Flocation := AValue; 
end;

procedure TClaimingClaimsRequest.Setpatient(const AValue: TClaimingPatient);
begin
   if assigned(Fpatient) and (AValue<>Fpatient) then 
     freeAndNil(Fpatient);
   Fpatient := AValue; 
end;

procedure TClaimingClaimsRequest.Setprovider(const AValue: TClaimingProvider);
begin
   if assigned(Fprovider) and (AValue<>Fprovider) then 
     freeAndNil(Fprovider);
   Fprovider := AValue; 
end;

procedure TClaimingClaimsRequest.Setclaimant(const AValue: TClaimingClaimant);
begin
   if assigned(Fclaimant) and (AValue<>Fclaimant) then 
     freeAndNil(Fclaimant);
   Fclaimant := AValue; 
end;

procedure TClaimingClaimsRequest.Setreferral(const AValue: TClaimingReferral);
begin
   if assigned(Freferral) and (AValue<>Freferral) then 
     freeAndNil(Freferral);
   Freferral := AValue; 
end;

procedure TClaimingClaimsRequest.Setadmission(const AValue: TClaimingAdmission);
begin
   if assigned(Fadmission) and (AValue<>Fadmission) then 
     freeAndNil(Fadmission);
   Fadmission := AValue; 
end;

procedure TClaimingClaimsRequest.Setauthorise(const AValue: TClaimingAuthorise);
begin
   if assigned(Fauthorise) and (AValue<>Fauthorise) then 
     freeAndNil(Fauthorise);
   Fauthorise := AValue; 
end;

procedure TClaimingClaimsRequest.Setclaim(const AValue: TClaimingClaimRequest);
begin
   if assigned(Fclaim) and (AValue<>Fclaim) then 
     freeAndNil(Fclaim);
   Fclaim := AValue; 
end;

procedure TClaimingClaimsRequest.Setcontact(const AValue: TClaimingContact);
begin
   if assigned(Fcontact) and (AValue<>Fcontact) then 
     freeAndNil(Fcontact);
   Fcontact := AValue; 
end;

procedure TClaimingClaimsRequest.SetcommunityNursing(const AValue: TClaimingCommunityNursing);
begin
   if assigned(FcommunityNursing) and (AValue<>FcommunityNursing) then 
     freeAndNil(FcommunityNursing);
   FcommunityNursing := AValue; 
end;

procedure TClaimingClaimsRequest.Setitems(const AValue: );
begin
   Fitems := AValue; 
end;

function TClaimingClaimsRequest.Gettype: string);
begin
   result := Ftype; 
end;

function TClaimingClaimsRequest.Getflags : TClaimingFlags);
begin
   if not assigned(Fflags) then 
      Fflags := TClaimingFlags.Create;
   result := Fflags;
end;

function TClaimingClaimsRequest.Getlocation : TClaimingLocation);
begin
   if not assigned(Flocation) then 
      Flocation := TClaimingLocation.Create;
   result := Flocation;
end;

function TClaimingClaimsRequest.Getpatient : TClaimingPatient);
begin
   if not assigned(Fpatient) then 
      Fpatient := TClaimingPatient.Create;
   result := Fpatient;
end;

function TClaimingClaimsRequest.Getprovider : TClaimingProvider);
begin
   if not assigned(Fprovider) then 
      Fprovider := TClaimingProvider.Create;
   result := Fprovider;
end;

function TClaimingClaimsRequest.Getclaimant : TClaimingClaimant);
begin
   if not assigned(Fclaimant) then 
      Fclaimant := TClaimingClaimant.Create;
   result := Fclaimant;
end;

function TClaimingClaimsRequest.Getreferral : TClaimingReferral);
begin
   if not assigned(Freferral) then 
      Freferral := TClaimingReferral.Create;
   result := Freferral;
end;

function TClaimingClaimsRequest.Getadmission : TClaimingAdmission);
begin
   if not assigned(Fadmission) then 
      Fadmission := TClaimingAdmission.Create;
   result := Fadmission;
end;

function TClaimingClaimsRequest.Getauthorise : TClaimingAuthorise);
begin
   if not assigned(Fauthorise) then 
      Fauthorise := TClaimingAuthorise.Create;
   result := Fauthorise;
end;

function TClaimingClaimsRequest.Getclaim : TClaimingClaimRequest);
begin
   if not assigned(Fclaim) then 
      Fclaim := TClaimingClaimRequest.Create;
   result := Fclaim;
end;

function TClaimingClaimsRequest.Getcontact : TClaimingContact);
begin
   if not assigned(Fcontact) then 
      Fcontact := TClaimingContact.Create;
   result := Fcontact;
end;

function TClaimingClaimsRequest.GetcommunityNursing : TClaimingCommunityNursing);
begin
   if not assigned(FcommunityNursing) then 
      FcommunityNursing := TClaimingCommunityNursing.Create;
   result := FcommunityNursing;
end;

function TClaimingClaimsRequest.Getitems: );
begin
   if not assigned(Fitems) then 
     Fitems := TCollections.CreateList<  >;
   Fitems := AValue; 
end;

 { ClaimingCommunityNursing }

procedure TClaimingCommunityNursing.SetbreakInEpisodeEndDate(const AValue: string);
begin
   FbreakInEpisodeEndDate := AValue; 
end;

procedure TClaimingCommunityNursing.SetbreakInEpisodeOfCare(const AValue: integer);
begin
   FbreakInEpisodeOfCare := AValue; 
end;

procedure TClaimingCommunityNursing.SetbreakInEpisodeStartDate(const AValue: string);
begin
   FbreakInEpisodeStartDate := AValue; 
end;

procedure TClaimingCommunityNursing.SetnumberOfCNCHours(const AValue: integer);
begin
   FnumberOfCNCHours := AValue; 
end;

procedure TClaimingCommunityNursing.SetnumberOfCNCVisits(const AValue: integer);
begin
   FnumberOfCNCVisits := AValue; 
end;

procedure TClaimingCommunityNursing.SetnumberOfENHours(const AValue: integer);
begin
   FnumberOfENHours := AValue; 
end;

procedure TClaimingCommunityNursing.SetnumberOfENVisits(const AValue: integer);
begin
   FnumberOfENVisits := AValue; 
end;

procedure TClaimingCommunityNursing.SetnumberOfNSSHours(const AValue: integer);
begin
   FnumberOfNSSHours := AValue; 
end;

procedure TClaimingCommunityNursing.SetnumberOfNSSVisits(const AValue: integer);
begin
   FnumberOfNSSVisits := AValue; 
end;

procedure TClaimingCommunityNursing.SetnumberOfRNHours(const AValue: integer);
begin
   FnumberOfRNHours := AValue; 
end;

procedure TClaimingCommunityNursing.SetnumberOfRNVisits(const AValue: integer);
begin
   FnumberOfRNVisits := AValue; 
end;

function TClaimingCommunityNursing.GetbreakInEpisodeEndDate: string);
begin
   result := FbreakInEpisodeEndDate; 
end;

function TClaimingCommunityNursing.GetbreakInEpisodeOfCare: integer);
begin
   result := FbreakInEpisodeOfCare; 
end;

function TClaimingCommunityNursing.GetbreakInEpisodeStartDate: string);
begin
   result := FbreakInEpisodeStartDate; 
end;

function TClaimingCommunityNursing.GetnumberOfCNCHours: integer);
begin
   result := FnumberOfCNCHours; 
end;

function TClaimingCommunityNursing.GetnumberOfCNCVisits: integer);
begin
   result := FnumberOfCNCVisits; 
end;

function TClaimingCommunityNursing.GetnumberOfENHours: integer);
begin
   result := FnumberOfENHours; 
end;

function TClaimingCommunityNursing.GetnumberOfENVisits: integer);
begin
   result := FnumberOfENVisits; 
end;

function TClaimingCommunityNursing.GetnumberOfNSSHours: integer);
begin
   result := FnumberOfNSSHours; 
end;

function TClaimingCommunityNursing.GetnumberOfNSSVisits: integer);
begin
   result := FnumberOfNSSVisits; 
end;

function TClaimingCommunityNursing.GetnumberOfRNHours: integer);
begin
   result := FnumberOfRNHours; 
end;

function TClaimingCommunityNursing.GetnumberOfRNVisits: integer);
begin
   result := FnumberOfRNVisits; 
end;

 { ClaimingContact }

procedure TClaimingContact.Setname(const AValue: string);
begin
   Fname := AValue; 
end;

procedure TClaimingContact.Setphone(const AValue: string);
begin
   Fphone := AValue; 
end;

procedure TClaimingContact.Setemail(const AValue: string);
begin
   Femail := AValue; 
end;

function TClaimingContact.Getname: string);
begin
   result := Fname; 
end;

function TClaimingContact.Getphone: string);
begin
   result := Fphone; 
end;

function TClaimingContact.Getemail: string);
begin
   result := Femail; 
end;

 { ClaimingFlags }

procedure TClaimingFlags.SetaccountPaid(const AValue: boolean);
begin
   FaccountPaid := AValue; 
end;

procedure TClaimingFlags.SetcertifiedInd(const AValue: string);
begin
   FcertifiedInd := AValue; 
end;

procedure TClaimingFlags.SetcompensationClaim(const AValue: boolean);
begin
   FcompensationClaim := AValue; 
end;

procedure TClaimingFlags.SetfinancialInterestDisclosureInd(const AValue: boolean);
begin
   FfinancialInterestDisclosureInd := AValue; 
end;

procedure TClaimingFlags.SethospitalInd(const AValue: boolean);
begin
   FhospitalInd := AValue; 
end;

procedure TClaimingFlags.Setifc(const AValue: string);
begin
   Fifc := AValue; 
end;

procedure TClaimingFlags.SetimcClaimType(const AValue: string);
begin
   FimcClaimType := AValue; 
end;

procedure TClaimingFlags.SetisAccident(const AValue: boolean);
begin
   FisAccident := AValue; 
end;

procedure TClaimingFlags.SetserviceType(const AValue: string);
begin
   FserviceType := AValue; 
end;

procedure TClaimingFlags.SetbenefitAssignmentAuthorised(const AValue: boolean);
begin
   FbenefitAssignmentAuthorised := AValue; 
end;

procedure TClaimingFlags.SetdateOfLodgement(const AValue: string);
begin
   FdateOfLodgement := AValue; 
end;

procedure TClaimingFlags.SettimeOfLodgement(const AValue: string);
begin
   FtimeOfLodgement := AValue; 
end;

procedure TClaimingFlags.Setadmission(const AValue: TClaimingFlagsAdmission);
begin
   if assigned(Fadmission) and (AValue<>Fadmission) then 
     freeAndNil(Fadmission);
   Fadmission := AValue; 
end;

function TClaimingFlags.GetaccountPaid: boolean);
begin
   result := FaccountPaid; 
end;

function TClaimingFlags.GetcertifiedInd: string);
begin
   result := FcertifiedInd; 
end;

function TClaimingFlags.GetcompensationClaim: boolean);
begin
   result := FcompensationClaim; 
end;

function TClaimingFlags.GetfinancialInterestDisclosureInd: boolean);
begin
   result := FfinancialInterestDisclosureInd; 
end;

function TClaimingFlags.GethospitalInd: boolean);
begin
   result := FhospitalInd; 
end;

function TClaimingFlags.Getifc: string);
begin
   result := Fifc; 
end;

function TClaimingFlags.GetimcClaimType: string);
begin
   result := FimcClaimType; 
end;

function TClaimingFlags.GetisAccident: boolean);
begin
   result := FisAccident; 
end;

function TClaimingFlags.GetserviceType: string);
begin
   result := FserviceType; 
end;

function TClaimingFlags.GetbenefitAssignmentAuthorised: boolean);
begin
   result := FbenefitAssignmentAuthorised; 
end;

function TClaimingFlags.GetdateOfLodgement: string);
begin
   result := FdateOfLodgement; 
end;

function TClaimingFlags.GettimeOfLodgement: string);
begin
   result := FtimeOfLodgement; 
end;

function TClaimingFlags.Getadmission : TClaimingFlagsAdmission);
begin
   if not assigned(Fadmission) then 
      Fadmission := TClaimingFlagsAdmission.Create;
   result := Fadmission;
end;

 { ClaimingFlagsAdmission }

procedure TClaimingFlagsAdmission.SetadmissionDate(const AValue: string);
begin
   FadmissionDate := AValue; 
end;

procedure TClaimingFlagsAdmission.SetdischargeDate(const AValue: string);
begin
   FdischargeDate := AValue; 
end;

function TClaimingFlagsAdmission.GetadmissionDate: string);
begin
   result := FadmissionDate; 
end;

function TClaimingFlagsAdmission.GetdischargeDate: string);
begin
   result := FdischargeDate; 
end;

 { ClaimingItem }

procedure TClaimingItem.SetafterCareOverride(const AValue: boolean);
begin
   FafterCareOverride := AValue; 
end;

procedure TClaimingItem.SetchargeAmount(const AValue: number);
begin
   FchargeAmount := AValue; 
end;

procedure TClaimingItem.Setdate(const AValue: string);
begin
   Fdate := AValue; 
end;

procedure TClaimingItem.Setdistance(const AValue: integer);
begin
   Fdistance := AValue; 
end;

procedure TClaimingItem.SetduplicateServiceOverride(const AValue: boolean);
begin
   FduplicateServiceOverride := AValue; 
end;

procedure TClaimingItem.Setduration(const AValue: integer);
begin
   Fduration := AValue; 
end;

procedure TClaimingItem.SetequipmentId(const AValue: string);
begin
   FequipmentId := AValue; 
end;

procedure TClaimingItem.SetfieldQuantity(const AValue: integer);
begin
   FfieldQuantity := AValue; 
end;

procedure TClaimingItem.SetitemNumber(const AValue: string);
begin
   FitemNumber := AValue; 
end;

procedure TClaimingItem.SetlspNumber(const AValue: string);
begin
   FlspNumber := AValue; 
end;

procedure TClaimingItem.SetmultipleProcedureOverride(const AValue: boolean);
begin
   FmultipleProcedureOverride := AValue; 
end;

procedure TClaimingItem.SetnumberOfPatients(const AValue: integer);
begin
   FnumberOfPatients := AValue; 
end;

procedure TClaimingItem.SetopticalScript(const AValue: string);
begin
   FopticalScript := AValue; 
end;

procedure TClaimingItem.SetpatientContributionAmount(const AValue: number);
begin
   FpatientContributionAmount := AValue; 
end;

procedure TClaimingItem.SetrestrictiveOverride(const AValue: string);
begin
   FrestrictiveOverride := AValue; 
end;

procedure TClaimingItem.SetsecondDeviceInd(const AValue: boolean);
begin
   FsecondDeviceInd := AValue; 
end;

procedure TClaimingItem.SetselfDeemedCode(const AValue: string);
begin
   FselfDeemedCode := AValue; 
end;

procedure TClaimingItem.SetserviceText(const AValue: string);
begin
   FserviceText := AValue; 
end;

procedure TClaimingItem.Settime(const AValue: string);
begin
   Ftime := AValue; 
end;

procedure TClaimingItem.SetMedicareVoucherId(const AValue: string);
begin
   FMedicareVoucherId := AValue; 
end;

procedure TClaimingItem.SetMedicareServiceId(const AValue: string);
begin
   FMedicareServiceId := AValue; 
end;

procedure TClaimingItem.SetaccessionDateTime(const AValue: string);
begin
   FaccessionDateTime := AValue; 
end;

procedure TClaimingItem.SetcollectionDateTime(const AValue: string);
begin
   FcollectionDateTime := AValue; 
end;

procedure TClaimingItem.Setrule3Exempt(const AValue: boolean);
begin
   Frule3Exempt := AValue; 
end;

procedure TClaimingItem.Sets4b3Exempt(const AValue: boolean);
begin
   Fs4b3Exempt := AValue; 
end;

procedure TClaimingItem.SetscpId(const AValue: string);
begin
   FscpId := AValue; 
end;

procedure TClaimingItem.SetinvoiceId(const AValue: string);
begin
   FinvoiceId := AValue; 
end;

procedure TClaimingItem.Setdental(const AValue: TClaimingItemDental);
begin
   if assigned(Fdental) and (AValue<>Fdental) then 
     freeAndNil(Fdental);
   Fdental := AValue; 
end;

procedure TClaimingItem.SetassessmentNotes(const AValue: );
begin
   FassessmentNotes := AValue; 
end;

procedure TClaimingItem.Setbenefit(const AValue: );
begin
   Fbenefit := AValue; 
end;

function TClaimingItem.GetafterCareOverride: boolean);
begin
   result := FafterCareOverride; 
end;

function TClaimingItem.GetchargeAmount: number);
begin
   result := FchargeAmount; 
end;

function TClaimingItem.Getdate: string);
begin
   result := Fdate; 
end;

function TClaimingItem.Getdistance: integer);
begin
   result := Fdistance; 
end;

function TClaimingItem.GetduplicateServiceOverride: boolean);
begin
   result := FduplicateServiceOverride; 
end;

function TClaimingItem.Getduration: integer);
begin
   result := Fduration; 
end;

function TClaimingItem.GetequipmentId: string);
begin
   result := FequipmentId; 
end;

function TClaimingItem.GetfieldQuantity: integer);
begin
   result := FfieldQuantity; 
end;

function TClaimingItem.GetitemNumber: string);
begin
   result := FitemNumber; 
end;

function TClaimingItem.GetlspNumber: string);
begin
   result := FlspNumber; 
end;

function TClaimingItem.GetmultipleProcedureOverride: boolean);
begin
   result := FmultipleProcedureOverride; 
end;

function TClaimingItem.GetnumberOfPatients: integer);
begin
   result := FnumberOfPatients; 
end;

function TClaimingItem.GetopticalScript: string);
begin
   result := FopticalScript; 
end;

function TClaimingItem.GetpatientContributionAmount: number);
begin
   result := FpatientContributionAmount; 
end;

function TClaimingItem.GetrestrictiveOverride: string);
begin
   result := FrestrictiveOverride; 
end;

function TClaimingItem.GetsecondDeviceInd: boolean);
begin
   result := FsecondDeviceInd; 
end;

function TClaimingItem.GetselfDeemedCode: string);
begin
   result := FselfDeemedCode; 
end;

function TClaimingItem.GetserviceText: string);
begin
   result := FserviceText; 
end;

function TClaimingItem.Gettime: string);
begin
   result := Ftime; 
end;

function TClaimingItem.GetMedicareVoucherId: string);
begin
   result := FMedicareVoucherId; 
end;

function TClaimingItem.GetMedicareServiceId: string);
begin
   result := FMedicareServiceId; 
end;

function TClaimingItem.GetaccessionDateTime: string);
begin
   result := FaccessionDateTime; 
end;

function TClaimingItem.GetcollectionDateTime: string);
begin
   result := FcollectionDateTime; 
end;

function TClaimingItem.Getrule3Exempt: boolean);
begin
   result := Frule3Exempt; 
end;

function TClaimingItem.Gets4b3Exempt: boolean);
begin
   result := Fs4b3Exempt; 
end;

function TClaimingItem.GetscpId: string);
begin
   result := FscpId; 
end;

function TClaimingItem.GetinvoiceId: string);
begin
   result := FinvoiceId; 
end;

function TClaimingItem.Getdental : TClaimingItemDental);
begin
   if not assigned(Fdental) then 
      Fdental := TClaimingItemDental.Create;
   result := Fdental;
end;

function TClaimingItem.GetassessmentNotes: );
begin
   if not assigned(FassessmentNotes) then 
     FassessmentNotes := TCollections.CreateList<  >;
   FassessmentNotes := AValue; 
end;

function TClaimingItem.Getbenefit: );
begin
   if not assigned(Fbenefit) then 
     Fbenefit := TCollections.CreateList<  >;
   Fbenefit := AValue; 
end;

 { ClaimingItemDental }

procedure TClaimingItemDental.Setjaw(const AValue: string);
begin
   Fjaw := AValue; 
end;

procedure TClaimingItemDental.SetnumberOfTeeth(const AValue: string);
begin
   FnumberOfTeeth := AValue; 
end;

procedure TClaimingItemDental.Settooth(const AValue: integer);
begin
   Ftooth := AValue; 
end;

function TClaimingItemDental.Getjaw: string);
begin
   result := Fjaw; 
end;

function TClaimingItemDental.GetnumberOfTeeth: string);
begin
   result := FnumberOfTeeth; 
end;

function TClaimingItemDental.Gettooth: integer);
begin
   result := Ftooth; 
end;

 { ClaimingLocation }

procedure TClaimingLocation.Setname(const AValue: string);
begin
   Fname := AValue; 
end;

procedure TClaimingLocation.Settype(const AValue: string);
begin
   Ftype := AValue; 
end;

procedure TClaimingLocation.SetfacilityId(const AValue: string);
begin
   FfacilityId := AValue; 
end;

function TClaimingLocation.Getname: string);
begin
   result := Fname; 
end;

function TClaimingLocation.Gettype: string);
begin
   result := Ftype; 
end;

function TClaimingLocation.GetfacilityId: string);
begin
   result := FfacilityId; 
end;

 { ClaimingPatient }

procedure TClaimingPatient.SetdateOfBirth(const AValue: string);
begin
   FdateOfBirth := AValue; 
end;

procedure TClaimingPatient.Setgender(const AValue: string);
begin
   Fgender := AValue; 
end;

procedure TClaimingPatient.Setaddress(const AValue: TClaimingPatientAddress);
begin
   if assigned(Faddress) and (AValue<>Faddress) then 
     freeAndNil(Faddress);
   Faddress := AValue; 
end;

procedure TClaimingPatient.Setalias(const AValue: TClaimingPatientAlias);
begin
   if assigned(Falias) and (AValue<>Falias) then 
     freeAndNil(Falias);
   Falias := AValue; 
end;

procedure TClaimingPatient.Setconcession(const AValue: TClaimingPatientConcession);
begin
   if assigned(Fconcession) and (AValue<>Fconcession) then 
     freeAndNil(Fconcession);
   Fconcession := AValue; 
end;

procedure TClaimingPatient.Setdva(const AValue: TClaimingPatientDva);
begin
   if assigned(Fdva) and (AValue<>Fdva) then 
     freeAndNil(Fdva);
   Fdva := AValue; 
end;

procedure TClaimingPatient.Setfund(const AValue: TClaimingPatientFund);
begin
   if assigned(Ffund) and (AValue<>Ffund) then 
     freeAndNil(Ffund);
   Ffund := AValue; 
end;

procedure TClaimingPatient.Setmedicare(const AValue: TClaimingPatientMedicare);
begin
   if assigned(Fmedicare) and (AValue<>Fmedicare) then 
     freeAndNil(Fmedicare);
   Fmedicare := AValue; 
end;

procedure TClaimingPatient.Setname(const AValue: TClaimingPatientName);
begin
   if assigned(Fname) and (AValue<>Fname) then 
     freeAndNil(Fname);
   Fname := AValue; 
end;

function TClaimingPatient.GetdateOfBirth: string);
begin
   result := FdateOfBirth; 
end;

function TClaimingPatient.Getgender: string);
begin
   result := Fgender; 
end;

function TClaimingPatient.Getaddress : TClaimingPatientAddress);
begin
   if not assigned(Faddress) then 
      Faddress := TClaimingPatientAddress.Create;
   result := Faddress;
end;

function TClaimingPatient.Getalias : TClaimingPatientAlias);
begin
   if not assigned(Falias) then 
      Falias := TClaimingPatientAlias.Create;
   result := Falias;
end;

function TClaimingPatient.Getconcession : TClaimingPatientConcession);
begin
   if not assigned(Fconcession) then 
      Fconcession := TClaimingPatientConcession.Create;
   result := Fconcession;
end;

function TClaimingPatient.Getdva : TClaimingPatientDva);
begin
   if not assigned(Fdva) then 
      Fdva := TClaimingPatientDva.Create;
   result := Fdva;
end;

function TClaimingPatient.Getfund : TClaimingPatientFund);
begin
   if not assigned(Ffund) then 
      Ffund := TClaimingPatientFund.Create;
   result := Ffund;
end;

function TClaimingPatient.Getmedicare : TClaimingPatientMedicare);
begin
   if not assigned(Fmedicare) then 
      Fmedicare := TClaimingPatientMedicare.Create;
   result := Fmedicare;
end;

function TClaimingPatient.Getname : TClaimingPatientName);
begin
   if not assigned(Fname) then 
      Fname := TClaimingPatientName.Create;
   result := Fname;
end;

 { ClaimingPatientAddress }

procedure TClaimingPatientAddress.Setlocality(const AValue: string);
begin
   Flocality := AValue; 
end;

procedure TClaimingPatientAddress.Setpostcode(const AValue: string);
begin
   Fpostcode := AValue; 
end;

procedure TClaimingPatientAddress.Setline1(const AValue: string);
begin
   Fline1 := AValue; 
end;

procedure TClaimingPatientAddress.Setline2(const AValue: string);
begin
   Fline2 := AValue; 
end;

function TClaimingPatientAddress.Getlocality: string);
begin
   result := Flocality; 
end;

function TClaimingPatientAddress.Getpostcode: string);
begin
   result := Fpostcode; 
end;

function TClaimingPatientAddress.Getline1: string);
begin
   result := Fline1; 
end;

function TClaimingPatientAddress.Getline2: string);
begin
   result := Fline2; 
end;

 { ClaimingPatientAlias }

procedure TClaimingPatientAlias.Setfamily(const AValue: string);
begin
   Ffamily := AValue; 
end;

procedure TClaimingPatientAlias.Setfirst(const AValue: string);
begin
   Ffirst := AValue; 
end;

function TClaimingPatientAlias.Getfamily: string);
begin
   result := Ffamily; 
end;

function TClaimingPatientAlias.Getfirst: string);
begin
   result := Ffirst; 
end;

 { ClaimingPatientConcession }

procedure TClaimingPatientConcession.SetentitlementId(const AValue: string);
begin
   FentitlementId := AValue; 
end;

function TClaimingPatientConcession.GetentitlementId: string);
begin
   result := FentitlementId; 
end;

 { ClaimingPatientDva }

procedure TClaimingPatientDva.Setdisability(const AValue: string);
begin
   Fdisability := AValue; 
end;

procedure TClaimingPatientDva.SetdisabilityInd(const AValue: boolean);
begin
   FdisabilityInd := AValue; 
end;

procedure TClaimingPatientDva.Setnumber(const AValue: string);
begin
   Fnumber := AValue; 
end;

procedure TClaimingPatientDva.SetentitlementCode(const AValue: string);
begin
   FentitlementCode := AValue; 
end;

procedure TClaimingPatientDva.Setadl(const AValue: TClaimingPatientDvaAdl);
begin
   if assigned(Fadl) and (AValue<>Fadl) then 
     freeAndNil(Fadl);
   Fadl := AValue; 
end;

function TClaimingPatientDva.Getdisability: string);
begin
   result := Fdisability; 
end;

function TClaimingPatientDva.GetdisabilityInd: boolean);
begin
   result := FdisabilityInd; 
end;

function TClaimingPatientDva.Getnumber: string);
begin
   result := Fnumber; 
end;

function TClaimingPatientDva.GetentitlementCode: string);
begin
   result := FentitlementCode; 
end;

function TClaimingPatientDva.Getadl : TClaimingPatientDvaAdl);
begin
   if not assigned(Fadl) then 
      Fadl := TClaimingPatientDvaAdl.Create;
   result := Fadl;
end;

 { ClaimingPatientDvaAdl }

procedure TClaimingPatientDvaAdl.SetcognitiveBehavioralInd(const AValue: boolean);
begin
   FcognitiveBehavioralInd := AValue; 
end;

procedure TClaimingPatientDvaAdl.SeteatingInd(const AValue: boolean);
begin
   FeatingInd := AValue; 
end;

procedure TClaimingPatientDvaAdl.SetpersonalHygieneInd(const AValue: boolean);
begin
   FpersonalHygieneInd := AValue; 
end;

procedure TClaimingPatientDvaAdl.SettoiletingContinenceInd(const AValue: boolean);
begin
   FtoiletingContinenceInd := AValue; 
end;

procedure TClaimingPatientDvaAdl.Settool(const AValue: string);
begin
   Ftool := AValue; 
end;

procedure TClaimingPatientDvaAdl.SettransferMobilityInd(const AValue: boolean);
begin
   FtransferMobilityInd := AValue; 
end;

function TClaimingPatientDvaAdl.GetcognitiveBehavioralInd: boolean);
begin
   result := FcognitiveBehavioralInd; 
end;

function TClaimingPatientDvaAdl.GeteatingInd: boolean);
begin
   result := FeatingInd; 
end;

function TClaimingPatientDvaAdl.GetpersonalHygieneInd: boolean);
begin
   result := FpersonalHygieneInd; 
end;

function TClaimingPatientDvaAdl.GettoiletingContinenceInd: boolean);
begin
   result := FtoiletingContinenceInd; 
end;

function TClaimingPatientDvaAdl.Gettool: string);
begin
   result := Ftool; 
end;

function TClaimingPatientDvaAdl.GettransferMobilityInd: boolean);
begin
   result := FtransferMobilityInd; 
end;

 { ClaimingPatientFund }

procedure TClaimingPatientFund.SeteclipseId(const AValue: string);
begin
   FeclipseId := AValue; 
end;

procedure TClaimingPatientFund.Setnumber(const AValue: string);
begin
   Fnumber := AValue; 
end;

procedure TClaimingPatientFund.SetpayeeId(const AValue: string);
begin
   FpayeeId := AValue; 
end;

procedure TClaimingPatientFund.Setref(const AValue: integer);
begin
   Fref := AValue; 
end;

function TClaimingPatientFund.GeteclipseId: string);
begin
   result := FeclipseId; 
end;

function TClaimingPatientFund.Getnumber: string);
begin
   result := Fnumber; 
end;

function TClaimingPatientFund.GetpayeeId: string);
begin
   result := FpayeeId; 
end;

function TClaimingPatientFund.Getref: integer);
begin
   result := Fref; 
end;

 { ClaimingPatientMedicare }

procedure TClaimingPatientMedicare.Setnumber(const AValue: string);
begin
   Fnumber := AValue; 
end;

procedure TClaimingPatientMedicare.Setref(const AValue: integer);
begin
   Fref := AValue; 
end;

function TClaimingPatientMedicare.Getnumber: string);
begin
   result := Fnumber; 
end;

function TClaimingPatientMedicare.Getref: integer);
begin
   result := Fref; 
end;

 { ClaimingPatientName }

procedure TClaimingPatientName.Setfamily(const AValue: string);
begin
   Ffamily := AValue; 
end;

procedure TClaimingPatientName.Setfirst(const AValue: string);
begin
   Ffirst := AValue; 
end;

procedure TClaimingPatientName.Setsecond(const AValue: string);
begin
   Fsecond := AValue; 
end;

function TClaimingPatientName.Getfamily: string);
begin
   result := Ffamily; 
end;

function TClaimingPatientName.Getfirst: string);
begin
   result := Ffirst; 
end;

function TClaimingPatientName.Getsecond: string);
begin
   result := Fsecond; 
end;

 { ClaimingProvider }

procedure TClaimingProvider.Setbilling(const AValue: string);
begin
   Fbilling := AValue; 
end;

procedure TClaimingProvider.Setpayee(const AValue: string);
begin
   Fpayee := AValue; 
end;

procedure TClaimingProvider.Setprincipal(const AValue: string);
begin
   Fprincipal := AValue; 
end;

procedure TClaimingProvider.Setservicing(const AValue: string);
begin
   Fservicing := AValue; 
end;

procedure TClaimingProvider.SetpayeeName(const AValue: string);
begin
   FpayeeName := AValue; 
end;

procedure TClaimingProvider.SetcontactPhone(const AValue: string);
begin
   FcontactPhone := AValue; 
end;

function TClaimingProvider.Getbilling: string);
begin
   result := Fbilling; 
end;

function TClaimingProvider.Getpayee: string);
begin
   result := Fpayee; 
end;

function TClaimingProvider.Getprincipal: string);
begin
   result := Fprincipal; 
end;

function TClaimingProvider.Getservicing: string);
begin
   result := Fservicing; 
end;

function TClaimingProvider.GetpayeeName: string);
begin
   result := FpayeeName; 
end;

function TClaimingProvider.GetcontactPhone: string);
begin
   result := FcontactPhone; 
end;

 { ClaimingReferral }

procedure TClaimingReferral.Setdate(const AValue: string);
begin
   Fdate := AValue; 
end;

procedure TClaimingReferral.SetoverrideCode(const AValue: string);
begin
   FoverrideCode := AValue; 
end;

procedure TClaimingReferral.Setperiod(const AValue: string);
begin
   Fperiod := AValue; 
end;

procedure TClaimingReferral.SetperiodType(const AValue: string);
begin
   FperiodType := AValue; 
end;

procedure TClaimingReferral.SetproviderType(const AValue: string);
begin
   FproviderType := AValue; 
end;

procedure TClaimingReferral.SetreferralType(const AValue: string);
begin
   FreferralType := AValue; 
end;

procedure TClaimingReferral.Setprovider(const AValue: TClaimingReferralProvider);
begin
   if assigned(Fprovider) and (AValue<>Fprovider) then 
     freeAndNil(Fprovider);
   Fprovider := AValue; 
end;

function TClaimingReferral.Getdate: string);
begin
   result := Fdate; 
end;

function TClaimingReferral.GetoverrideCode: string);
begin
   result := FoverrideCode; 
end;

function TClaimingReferral.Getperiod: string);
begin
   result := Fperiod; 
end;

function TClaimingReferral.GetperiodType: string);
begin
   result := FperiodType; 
end;

function TClaimingReferral.GetproviderType: string);
begin
   result := FproviderType; 
end;

function TClaimingReferral.GetreferralType: string);
begin
   result := FreferralType; 
end;

function TClaimingReferral.Getprovider : TClaimingReferralProvider);
begin
   if not assigned(Fprovider) then 
      Fprovider := TClaimingReferralProvider.Create;
   result := Fprovider;
end;

 { ClaimingReferralProvider }

procedure TClaimingReferralProvider.Setname(const AValue: string);
begin
   Fname := AValue; 
end;

procedure TClaimingReferralProvider.Setnumber(const AValue: string);
begin
   Fnumber := AValue; 
end;

procedure TClaimingReferralProvider.Settype(const AValue: string);
begin
   Ftype := AValue; 
end;

function TClaimingReferralProvider.Getname: string);
begin
   result := Fname; 
end;

function TClaimingReferralProvider.Getnumber: string);
begin
   result := Fnumber; 
end;

function TClaimingReferralProvider.Gettype: string);
begin
   result := Ftype; 
end;

 { ClaimingVerifyRequest }

procedure TClaimingVerifyRequest.Settype(const AValue: string);
begin
   Ftype := AValue; 
end;

procedure TClaimingVerifyRequest.SetearliestDateOfService(const AValue: string);
begin
   FearliestDateOfService := AValue; 
end;

procedure TClaimingVerifyRequest.Setpatient(const AValue: TClaimingPatient);
begin
   if assigned(Fpatient) and (AValue<>Fpatient) then 
     freeAndNil(Fpatient);
   Fpatient := AValue; 
end;

function TClaimingVerifyRequest.Gettype: string);
begin
   result := Ftype; 
end;

function TClaimingVerifyRequest.GetearliestDateOfService: string);
begin
   result := FearliestDateOfService; 
end;

function TClaimingVerifyRequest.Getpatient : TClaimingPatient);
begin
   if not assigned(Fpatient) then 
      Fpatient := TClaimingPatient.Create;
   result := Fpatient;
end;

 { ClinicDetails }

procedure TClinicDetails.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TClinicDetails.SetClinicName(const AValue: string);
begin
   FClinicName := AValue; 
end;

procedure TClinicDetails.SetType(const AValue: string);
begin
   FType := AValue; 
end;

procedure TClinicDetails.SetAddressLine1(const AValue: string);
begin
   FAddressLine1 := AValue; 
end;

procedure TClinicDetails.SetAddressLine2(const AValue: string);
begin
   FAddressLine2 := AValue; 
end;

procedure TClinicDetails.SetPostCode(const AValue: string);
begin
   FPostCode := AValue; 
end;

procedure TClinicDetails.SetSuburb(const AValue: string);
begin
   FSuburb := AValue; 
end;

procedure TClinicDetails.SetPhone1(const AValue: string);
begin
   FPhone1 := AValue; 
end;

procedure TClinicDetails.SetPhone2(const AValue: string);
begin
   FPhone2 := AValue; 
end;

procedure TClinicDetails.SetPhone3(const AValue: string);
begin
   FPhone3 := AValue; 
end;

procedure TClinicDetails.SetFax(const AValue: string);
begin
   FFax := AValue; 
end;

procedure TClinicDetails.SetOpeningTime(const AValue: string);
begin
   FOpeningTime := AValue; 
end;

procedure TClinicDetails.SetAvailableOnline(const AValue: boolean);
begin
   FAvailableOnline := AValue; 
end;

procedure TClinicDetails.SetOnlineContactPhone(const AValue: string);
begin
   FOnlineContactPhone := AValue; 
end;

procedure TClinicDetails.SetOnlineAfterHoursPhone(const AValue: string);
begin
   FOnlineAfterHoursPhone := AValue; 
end;

procedure TClinicDetails.SetFeeInformation(const AValue: string);
begin
   FFeeInformation := AValue; 
end;

procedure TClinicDetails.SetLocationLatitiude(const AValue: number);
begin
   FLocationLatitiude := AValue; 
end;

procedure TClinicDetails.SetLocationLongitude(const AValue: number);
begin
   FLocationLongitude := AValue; 
end;

procedure TClinicDetails.SetOpeningHours(const AValue: );
begin
   FOpeningHours := AValue; 
end;

function TClinicDetails.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TClinicDetails.GetClinicName: string);
begin
   result := FClinicName; 
end;

function TClinicDetails.GetType: string);
begin
   result := FType; 
end;

function TClinicDetails.GetAddressLine1: string);
begin
   result := FAddressLine1; 
end;

function TClinicDetails.GetAddressLine2: string);
begin
   result := FAddressLine2; 
end;

function TClinicDetails.GetPostCode: string);
begin
   result := FPostCode; 
end;

function TClinicDetails.GetSuburb: string);
begin
   result := FSuburb; 
end;

function TClinicDetails.GetPhone1: string);
begin
   result := FPhone1; 
end;

function TClinicDetails.GetPhone2: string);
begin
   result := FPhone2; 
end;

function TClinicDetails.GetPhone3: string);
begin
   result := FPhone3; 
end;

function TClinicDetails.GetFax: string);
begin
   result := FFax; 
end;

function TClinicDetails.GetOpeningTime: string);
begin
   result := FOpeningTime; 
end;

function TClinicDetails.GetAvailableOnline: boolean);
begin
   result := FAvailableOnline; 
end;

function TClinicDetails.GetOnlineContactPhone: string);
begin
   result := FOnlineContactPhone; 
end;

function TClinicDetails.GetOnlineAfterHoursPhone: string);
begin
   result := FOnlineAfterHoursPhone; 
end;

function TClinicDetails.GetFeeInformation: string);
begin
   result := FFeeInformation; 
end;

function TClinicDetails.GetLocationLatitiude: number);
begin
   result := FLocationLatitiude; 
end;

function TClinicDetails.GetLocationLongitude: number);
begin
   result := FLocationLongitude; 
end;

function TClinicDetails.GetOpeningHours: );
begin
   if not assigned(FOpeningHours) then 
     FOpeningHours := TCollections.CreateList<  >;
   FOpeningHours := AValue; 
end;

 { ClinicOpeningHours }

procedure TClinicOpeningHours.SetOpeningTime(const AValue: string);
begin
   FOpeningTime := AValue; 
end;

procedure TClinicOpeningHours.SetClosingTime(const AValue: string);
begin
   FClosingTime := AValue; 
end;

procedure TClinicOpeningHours.SetDay(const AValue: TOpeningHoursDay);
begin
   if assigned(FDay) and (AValue<>FDay) then 
     freeAndNil(FDay);
   FDay := AValue; 
end;

function TClinicOpeningHours.GetOpeningTime: string);
begin
   result := FOpeningTime; 
end;

function TClinicOpeningHours.GetClosingTime: string);
begin
   result := FClosingTime; 
end;

function TClinicOpeningHours.GetDay : TOpeningHoursDay);
begin
   if not assigned(FDay) then 
      FDay := TOpeningHoursDay.Create;
   result := FDay;
end;

 { ConcessionCardType }

 { ConfirmationMessage }

procedure TConfirmationMessage.SetAppointmentId(const AValue: string);
begin
   FAppointmentId := AValue; 
end;

procedure TConfirmationMessage.SetExternalPatientId(const AValue: string);
begin
   FExternalPatientId := AValue; 
end;

function TConfirmationMessage.GetAppointmentId: string);
begin
   result := FAppointmentId; 
end;

function TConfirmationMessage.GetExternalPatientId: string);
begin
   result := FExternalPatientId; 
end;

 { CountValue }

procedure TCountValue.SetCount(const AValue: integer);
begin
   FCount := AValue; 
end;

function TCountValue.GetCount: integer);
begin
   result := FCount; 
end;

 { DoctorDashboard }

procedure TDoctorDashboard.SetDoctorCode(const AValue: string);
begin
   FDoctorCode := AValue; 
end;

procedure TDoctorDashboard.SetDoctorName(const AValue: string);
begin
   FDoctorName := AValue; 
end;

procedure TDoctorDashboard.SetPracticeName(const AValue: string);
begin
   FPracticeName := AValue; 
end;

procedure TDoctorDashboard.SetAppointmentCount(const AValue: integer);
begin
   FAppointmentCount := AValue; 
end;

procedure TDoctorDashboard.SetResultCount(const AValue: integer);
begin
   FResultCount := AValue; 
end;

procedure TDoctorDashboard.SetAppointments(const AValue: IList< TAppointment >);
begin
   FAppointments := AValue; 
end;

procedure TDoctorDashboard.SetResults(const AValue: IList< TAppointment >);
begin
   FResults := AValue; 
end;

function TDoctorDashboard.GetDoctorCode: string);
begin
   result := FDoctorCode; 
end;

function TDoctorDashboard.GetDoctorName: string);
begin
   result := FDoctorName; 
end;

function TDoctorDashboard.GetPracticeName: string);
begin
   result := FPracticeName; 
end;

function TDoctorDashboard.GetAppointmentCount: integer);
begin
   result := FAppointmentCount; 
end;

function TDoctorDashboard.GetResultCount: integer);
begin
   result := FResultCount; 
end;

function TDoctorDashboard.GetAppointments: IList< TAppointment >);
begin
   if not assigned(FAppointments) then 
     FAppointments := TCollections.CreateList< TAppointment >;
   FAppointments := AValue; 
end;

function TDoctorDashboard.GetResults: IList< TAppointment >);
begin
   if not assigned(FResults) then 
     FResults := TCollections.CreateList< TAppointment >;
   FResults := AValue; 
end;

 { DrugDetails }

procedure TDrugDetails.SetDrugGUID(const AValue: string);
begin
   FDrugGUID := AValue; 
end;

procedure TDrugDetails.SetDrugId(const AValue: integer);
begin
   FDrugId := AValue; 
end;

procedure TDrugDetails.SetBrandSubstitutionAllowed(const AValue: boolean);
begin
   FBrandSubstitutionAllowed := AValue; 
end;

procedure TDrugDetails.SetQuantity(const AValue: string);
begin
   FQuantity := AValue; 
end;

procedure TDrugDetails.SetQuantityInWords(const AValue: string);
begin
   FQuantityInWords := AValue; 
end;

procedure TDrugDetails.SetRepeats(const AValue: integer);
begin
   FRepeats := AValue; 
end;

procedure TDrugDetails.SetRequiresAuthority(const AValue: boolean);
begin
   FRequiresAuthority := AValue; 
end;

procedure TDrugDetails.SetAuthorityNumber(const AValue: integer);
begin
   FAuthorityNumber := AValue; 
end;

procedure TDrugDetails.SetApprovalNumber(const AValue: string);
begin
   FApprovalNumber := AValue; 
end;

procedure TDrugDetails.SetDosageFullText(const AValue: string);
begin
   FDosageFullText := AValue; 
end;

procedure TDrugDetails.SetMedicineLastUntil(const AValue: string);
begin
   FMedicineLastUntil := AValue; 
end;

procedure TDrugDetails.SetScriptDate(const AValue: string);
begin
   FScriptDate := AValue; 
end;

procedure TDrugDetails.SetReg24(const AValue: boolean);
begin
   FReg24 := AValue; 
end;

procedure TDrugDetails.SetPbsString(const AValue: string);
begin
   FPbsString := AValue; 
end;

procedure TDrugDetails.SetSendToPcehr(const AValue: string);
begin
   FSendToPcehr := AValue; 
end;

procedure TDrugDetails.SetPrescriptionType(const AValue: string);
begin
   FPrescriptionType := AValue; 
end;

procedure TDrugDetails.SetSendToPatient(const AValue: boolean);
begin
   FSendToPatient := AValue; 
end;

procedure TDrugDetails.SetPreviousAuthority(const AValue: boolean);
begin
   FPreviousAuthority := AValue; 
end;

procedure TDrugDetails.SetIndForAuth(const AValue: string);
begin
   FIndForAuth := AValue; 
end;

procedure TDrugDetails.SetStateAuthorityNumber(const AValue: string);
begin
   FStateAuthorityNumber := AValue; 
end;

procedure TDrugDetails.SetUnusualDose(const AValue: boolean);
begin
   FUnusualDose := AValue; 
end;

procedure TDrugDetails.SetOptOutOfASL(const AValue: boolean);
begin
   FOptOutOfASL := AValue; 
end;

procedure TDrugDetails.SetProdcode(const AValue: integer);
begin
   FProdcode := AValue; 
end;

procedure TDrugDetails.SetPackcode(const AValue: integer);
begin
   FPackcode := AValue; 
end;

procedure TDrugDetails.SetFormcode(const AValue: integer);
begin
   FFormcode := AValue; 
end;

procedure TDrugDetails.SetRecipeDrugId(const AValue: integer);
begin
   FRecipeDrugId := AValue; 
end;

procedure TDrugDetails.SetScriptDesc(const AValue: string);
begin
   FScriptDesc := AValue; 
end;

procedure TDrugDetails.SetShortDesc(const AValue: string);
begin
   FShortDesc := AValue; 
end;

procedure TDrugDetails.SetFormId(const AValue: integer);
begin
   FFormId := AValue; 
end;

procedure TDrugDetails.SetOtherBrandName(const AValue: string);
begin
   FOtherBrandName := AValue; 
end;

procedure TDrugDetails.SetGenericName(const AValue: string);
begin
   FGenericName := AValue; 
end;

procedure TDrugDetails.SetGenericFlag(const AValue: string);
begin
   FGenericFlag := AValue; 
end;

procedure TDrugDetails.SetForm(const AValue: string);
begin
   FForm := AValue; 
end;

procedure TDrugDetails.SetItemStrength(const AValue: string);
begin
   FItemStrength := AValue; 
end;

procedure TDrugDetails.SetItemStrengthUnit(const AValue: string);
begin
   FItemStrengthUnit := AValue; 
end;

procedure TDrugDetails.SetProduct(const AValue: string);
begin
   FProduct := AValue; 
end;

procedure TDrugDetails.SetPBSCode(const AValue: string);
begin
   FPBSCode := AValue; 
end;

procedure TDrugDetails.SetPBSManCode(const AValue: string);
begin
   FPBSManCode := AValue; 
end;

procedure TDrugDetails.SetUnitsPerPack(const AValue: integer);
begin
   FUnitsPerPack := AValue; 
end;

procedure TDrugDetails.SetAMTCode(const AValue: string);
begin
   FAMTCode := AValue; 
end;

procedure TDrugDetails.SetAMTCodeSystem(const AValue: string);
begin
   FAMTCodeSystem := AValue; 
end;

procedure TDrugDetails.SetAMTVersion(const AValue: string);
begin
   FAMTVersion := AValue; 
end;

procedure TDrugDetails.SetIsMimsDrug(const AValue: boolean);
begin
   FIsMimsDrug := AValue; 
end;

procedure TDrugDetails.SetAMTTerm(const AValue: string);
begin
   FAMTTerm := AValue; 
end;

procedure TDrugDetails.SetErxSequence(const AValue: integer);
begin
   FErxSequence := AValue; 
end;

procedure TDrugDetails.SetReasonForPrescribe(const AValue: string);
begin
   FReasonForPrescribe := AValue; 
end;

procedure TDrugDetails.SetScriptOwing(const AValue: boolean);
begin
   FScriptOwing := AValue; 
end;

procedure TDrugDetails.SetActiveIngredient(const AValue: string);
begin
   FActiveIngredient := AValue; 
end;

procedure TDrugDetails.SetStreamlined(const AValue: boolean);
begin
   FStreamlined := AValue; 
end;

procedure TDrugDetails.SetMinIntervalBetweenRepeats(const AValue: integer);
begin
   FMinIntervalBetweenRepeats := AValue; 
end;

procedure TDrugDetails.SetAdminRouteCode(const AValue: integer);
begin
   FAdminRouteCode := AValue; 
end;

procedure TDrugDetails.SetAdminRouteText(const AValue: string);
begin
   FAdminRouteText := AValue; 
end;

procedure TDrugDetails.SetMisc(const AValue: string);
begin
   FMisc := AValue; 
end;

procedure TDrugDetails.SetPbsState(const AValue: TPbsState);
begin
   if assigned(FPbsState) and (AValue<>FPbsState) then 
     freeAndNil(FPbsState);
   FPbsState := AValue; 
end;

function TDrugDetails.GetDrugGUID: string);
begin
   result := FDrugGUID; 
end;

function TDrugDetails.GetDrugId: integer);
begin
   result := FDrugId; 
end;

function TDrugDetails.GetBrandSubstitutionAllowed: boolean);
begin
   result := FBrandSubstitutionAllowed; 
end;

function TDrugDetails.GetQuantity: string);
begin
   result := FQuantity; 
end;

function TDrugDetails.GetQuantityInWords: string);
begin
   result := FQuantityInWords; 
end;

function TDrugDetails.GetRepeats: integer);
begin
   result := FRepeats; 
end;

function TDrugDetails.GetRequiresAuthority: boolean);
begin
   result := FRequiresAuthority; 
end;

function TDrugDetails.GetAuthorityNumber: integer);
begin
   result := FAuthorityNumber; 
end;

function TDrugDetails.GetApprovalNumber: string);
begin
   result := FApprovalNumber; 
end;

function TDrugDetails.GetDosageFullText: string);
begin
   result := FDosageFullText; 
end;

function TDrugDetails.GetMedicineLastUntil: string);
begin
   result := FMedicineLastUntil; 
end;

function TDrugDetails.GetScriptDate: string);
begin
   result := FScriptDate; 
end;

function TDrugDetails.GetReg24: boolean);
begin
   result := FReg24; 
end;

function TDrugDetails.GetPbsString: string);
begin
   result := FPbsString; 
end;

function TDrugDetails.GetSendToPcehr: string);
begin
   result := FSendToPcehr; 
end;

function TDrugDetails.GetPrescriptionType: string);
begin
   result := FPrescriptionType; 
end;

function TDrugDetails.GetSendToPatient: boolean);
begin
   result := FSendToPatient; 
end;

function TDrugDetails.GetPreviousAuthority: boolean);
begin
   result := FPreviousAuthority; 
end;

function TDrugDetails.GetIndForAuth: string);
begin
   result := FIndForAuth; 
end;

function TDrugDetails.GetStateAuthorityNumber: string);
begin
   result := FStateAuthorityNumber; 
end;

function TDrugDetails.GetUnusualDose: boolean);
begin
   result := FUnusualDose; 
end;

function TDrugDetails.GetOptOutOfASL: boolean);
begin
   result := FOptOutOfASL; 
end;

function TDrugDetails.GetProdcode: integer);
begin
   result := FProdcode; 
end;

function TDrugDetails.GetPackcode: integer);
begin
   result := FPackcode; 
end;

function TDrugDetails.GetFormcode: integer);
begin
   result := FFormcode; 
end;

function TDrugDetails.GetRecipeDrugId: integer);
begin
   result := FRecipeDrugId; 
end;

function TDrugDetails.GetScriptDesc: string);
begin
   result := FScriptDesc; 
end;

function TDrugDetails.GetShortDesc: string);
begin
   result := FShortDesc; 
end;

function TDrugDetails.GetFormId: integer);
begin
   result := FFormId; 
end;

function TDrugDetails.GetOtherBrandName: string);
begin
   result := FOtherBrandName; 
end;

function TDrugDetails.GetGenericName: string);
begin
   result := FGenericName; 
end;

function TDrugDetails.GetGenericFlag: string);
begin
   result := FGenericFlag; 
end;

function TDrugDetails.GetForm: string);
begin
   result := FForm; 
end;

function TDrugDetails.GetItemStrength: string);
begin
   result := FItemStrength; 
end;

function TDrugDetails.GetItemStrengthUnit: string);
begin
   result := FItemStrengthUnit; 
end;

function TDrugDetails.GetProduct: string);
begin
   result := FProduct; 
end;

function TDrugDetails.GetPBSCode: string);
begin
   result := FPBSCode; 
end;

function TDrugDetails.GetPBSManCode: string);
begin
   result := FPBSManCode; 
end;

function TDrugDetails.GetUnitsPerPack: integer);
begin
   result := FUnitsPerPack; 
end;

function TDrugDetails.GetAMTCode: string);
begin
   result := FAMTCode; 
end;

function TDrugDetails.GetAMTCodeSystem: string);
begin
   result := FAMTCodeSystem; 
end;

function TDrugDetails.GetAMTVersion: string);
begin
   result := FAMTVersion; 
end;

function TDrugDetails.GetIsMimsDrug: boolean);
begin
   result := FIsMimsDrug; 
end;

function TDrugDetails.GetAMTTerm: string);
begin
   result := FAMTTerm; 
end;

function TDrugDetails.GetErxSequence: integer);
begin
   result := FErxSequence; 
end;

function TDrugDetails.GetReasonForPrescribe: string);
begin
   result := FReasonForPrescribe; 
end;

function TDrugDetails.GetScriptOwing: boolean);
begin
   result := FScriptOwing; 
end;

function TDrugDetails.GetActiveIngredient: string);
begin
   result := FActiveIngredient; 
end;

function TDrugDetails.GetStreamlined: boolean);
begin
   result := FStreamlined; 
end;

function TDrugDetails.GetMinIntervalBetweenRepeats: integer);
begin
   result := FMinIntervalBetweenRepeats; 
end;

function TDrugDetails.GetAdminRouteCode: integer);
begin
   result := FAdminRouteCode; 
end;

function TDrugDetails.GetAdminRouteText: string);
begin
   result := FAdminRouteText; 
end;

function TDrugDetails.GetMisc: string);
begin
   result := FMisc; 
end;

function TDrugDetails.GetPbsState : TPbsState);
begin
   if not assigned(FPbsState) then 
      FPbsState := TPbsState.Create;
   result := FPbsState;
end;

 { ElectronicAddress }

procedure TElectronicAddress.SetAddressType(const AValue: string);
begin
   FAddressType := AValue; 
end;

procedure TElectronicAddress.SetValue(const AValue: string);
begin
   FValue := AValue; 
end;

function TElectronicAddress.GetAddressType: string);
begin
   result := FAddressType; 
end;

function TElectronicAddress.GetValue: string);
begin
   result := FValue; 
end;

 { EncounterImmunisation }

procedure TEncounterImmunisation.SetDescription(const AValue: string);
begin
   FDescription := AValue; 
end;

procedure TEncounterImmunisation.SetDose(const AValue: integer);
begin
   FDose := AValue; 
end;

procedure TEncounterImmunisation.SetComment(const AValue: string);
begin
   FComment := AValue; 
end;

function TEncounterImmunisation.GetDescription: string);
begin
   result := FDescription; 
end;

function TEncounterImmunisation.GetDose: integer);
begin
   result := FDose; 
end;

function TEncounterImmunisation.GetComment: string);
begin
   result := FComment; 
end;

 { EncounterReferral }

procedure TEncounterReferral.SetRecipient(const AValue: string);
begin
   FRecipient := AValue; 
end;

procedure TEncounterReferral.SetDescription(const AValue: string);
begin
   FDescription := AValue; 
end;

procedure TEncounterReferral.SetType(const AValue: string);
begin
   FType := AValue; 
end;

function TEncounterReferral.GetRecipient: string);
begin
   result := FRecipient; 
end;

function TEncounterReferral.GetDescription: string);
begin
   result := FDescription; 
end;

function TEncounterReferral.GetType: string);
begin
   result := FType; 
end;

 { EncounterScript }

procedure TEncounterScript.SetDescription(const AValue: string);
begin
   FDescription := AValue; 
end;

procedure TEncounterScript.SetDosage(const AValue: string);
begin
   FDosage := AValue; 
end;

function TEncounterScript.GetDescription: string);
begin
   result := FDescription; 
end;

function TEncounterScript.GetDosage: string);
begin
   result := FDosage; 
end;

 { EncounterSegment }

procedure TEncounterSegment.SetSegmentID(const AValue: integer);
begin
   FSegmentID := AValue; 
end;

procedure TEncounterSegment.SetDescription(const AValue: string);
begin
   FDescription := AValue; 
end;

procedure TEncounterSegment.SetNotes(const AValue: string);
begin
   FNotes := AValue; 
end;

procedure TEncounterSegment.SetScripts(const AValue: );
begin
   FScripts := AValue; 
end;

procedure TEncounterSegment.SetReferrals(const AValue: );
begin
   FReferrals := AValue; 
end;

procedure TEncounterSegment.SetImmunisations(const AValue: );
begin
   FImmunisations := AValue; 
end;

function TEncounterSegment.GetSegmentID: integer);
begin
   result := FSegmentID; 
end;

function TEncounterSegment.GetDescription: string);
begin
   result := FDescription; 
end;

function TEncounterSegment.GetNotes: string);
begin
   result := FNotes; 
end;

function TEncounterSegment.GetScripts: );
begin
   if not assigned(FScripts) then 
     FScripts := TCollections.CreateList<  >;
   FScripts := AValue; 
end;

function TEncounterSegment.GetReferrals: );
begin
   if not assigned(FReferrals) then 
     FReferrals := TCollections.CreateList<  >;
   FReferrals := AValue; 
end;

function TEncounterSegment.GetImmunisations: );
begin
   if not assigned(FImmunisations) then 
     FImmunisations := TCollections.CreateList<  >;
   FImmunisations := AValue; 
end;

 { FeedbackScore }

 { Intramail }

procedure TIntramail.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TIntramail.SetMessage(const AValue: string);
begin
   FMessage := AValue; 
end;

procedure TIntramail.SetSender(const AValue: string);
begin
   FSender := AValue; 
end;

procedure TIntramail.SetRecipient(const AValue: string);
begin
   FRecipient := AValue; 
end;

procedure TIntramail.SetSubject(const AValue: string);
begin
   FSubject := AValue; 
end;

procedure TIntramail.SetCreationTime(const AValue: string);
begin
   FCreationTime := AValue; 
end;

procedure TIntramail.SetRead(const AValue: boolean);
begin
   FRead := AValue; 
end;

procedure TIntramail.SetLinkedPatientId(const AValue: integer);
begin
   FLinkedPatientId := AValue; 
end;

procedure TIntramail.SetInPatientHistory(const AValue: boolean);
begin
   FInPatientHistory := AValue; 
end;

procedure TIntramail.SetDeleted(const AValue: boolean);
begin
   FDeleted := AValue; 
end;

function TIntramail.GetId: integer);
begin
   result := FId; 
end;

function TIntramail.GetMessage: string);
begin
   result := FMessage; 
end;

function TIntramail.GetSender: string);
begin
   result := FSender; 
end;

function TIntramail.GetRecipient: string);
begin
   result := FRecipient; 
end;

function TIntramail.GetSubject: string);
begin
   result := FSubject; 
end;

function TIntramail.GetCreationTime: string);
begin
   result := FCreationTime; 
end;

function TIntramail.GetRead: boolean);
begin
   result := FRead; 
end;

function TIntramail.GetLinkedPatientId: integer);
begin
   result := FLinkedPatientId; 
end;

function TIntramail.GetInPatientHistory: boolean);
begin
   result := FInPatientHistory; 
end;

function TIntramail.GetDeleted: boolean);
begin
   result := FDeleted; 
end;

 { IntramailUnread }

procedure TIntramailUnread.SetCount(const AValue: integer);
begin
   FCount := AValue; 
end;

procedure TIntramailUnread.SetCountSinceLastRead(const AValue: integer);
begin
   FCountSinceLastRead := AValue; 
end;

procedure TIntramailUnread.SetCountSinceLastChecked(const AValue: integer);
begin
   FCountSinceLastChecked := AValue; 
end;

procedure TIntramailUnread.SetMaximumMailId(const AValue: integer);
begin
   FMaximumMailId := AValue; 
end;

function TIntramailUnread.GetCount: integer);
begin
   result := FCount; 
end;

function TIntramailUnread.GetCountSinceLastRead: integer);
begin
   result := FCountSinceLastRead; 
end;

function TIntramailUnread.GetCountSinceLastChecked: integer);
begin
   result := FCountSinceLastChecked; 
end;

function TIntramailUnread.GetMaximumMailId: integer);
begin
   result := FMaximumMailId; 
end;

 { IntramailUnreadParams }

procedure TIntramailUnreadParams.SetLastReadMailId(const AValue: integer);
begin
   FLastReadMailId := AValue; 
end;

procedure TIntramailUnreadParams.SetLastCheckMailId(const AValue: integer);
begin
   FLastCheckMailId := AValue; 
end;

function TIntramailUnreadParams.GetLastReadMailId: integer);
begin
   result := FLastReadMailId; 
end;

function TIntramailUnreadParams.GetLastCheckMailId: integer);
begin
   result := FLastCheckMailId; 
end;

 { LocationInfo }

procedure TLocationInfo.SetLatitude(const AValue: number);
begin
   FLatitude := AValue; 
end;

procedure TLocationInfo.SetLongitude(const AValue: number);
begin
   FLongitude := AValue; 
end;

function TLocationInfo.GetLatitude: number);
begin
   result := FLatitude; 
end;

function TLocationInfo.GetLongitude: number);
begin
   result := FLongitude; 
end;

 { OfficeTransaction }

procedure TOfficeTransaction.SetSqlPath(const AValue: string);
begin
   FSqlPath := AValue; 
end;

procedure TOfficeTransaction.SetFilters(const AValue: object);
begin
   FFilters := AValue; 
end;

function TOfficeTransaction.GetSqlPath: string);
begin
   result := FSqlPath; 
end;

function TOfficeTransaction.GetFilters: object);
begin
   result := FFilters; 
end;

 { OpeningHoursDay }

 { PatientEncounter }

procedure TPatientEncounter.SetEncounterID(const AValue: integer);
begin
   FEncounterID := AValue; 
end;

procedure TPatientEncounter.SetPatientID(const AValue: integer);
begin
   FPatientID := AValue; 
end;

procedure TPatientEncounter.SetPatientName(const AValue: string);
begin
   FPatientName := AValue; 
end;

procedure TPatientEncounter.SetStartDate(const AValue: string);
begin
   FStartDate := AValue; 
end;

procedure TPatientEncounter.SetEndDate(const AValue: string);
begin
   FEndDate := AValue; 
end;

procedure TPatientEncounter.SetDoctorCode(const AValue: string);
begin
   FDoctorCode := AValue; 
end;

procedure TPatientEncounter.SetDoctorName(const AValue: string);
begin
   FDoctorName := AValue; 
end;

procedure TPatientEncounter.SetSegments(const AValue: );
begin
   FSegments := AValue; 
end;

function TPatientEncounter.GetEncounterID: integer);
begin
   result := FEncounterID; 
end;

function TPatientEncounter.GetPatientID: integer);
begin
   result := FPatientID; 
end;

function TPatientEncounter.GetPatientName: string);
begin
   result := FPatientName; 
end;

function TPatientEncounter.GetStartDate: string);
begin
   result := FStartDate; 
end;

function TPatientEncounter.GetEndDate: string);
begin
   result := FEndDate; 
end;

function TPatientEncounter.GetDoctorCode: string);
begin
   result := FDoctorCode; 
end;

function TPatientEncounter.GetDoctorName: string);
begin
   result := FDoctorName; 
end;

function TPatientEncounter.GetSegments: );
begin
   if not assigned(FSegments) then 
     FSegments := TCollections.CreateList<  >;
   FSegments := AValue; 
end;

 { PatientFeedback }

procedure TPatientFeedback.SetFeedbackId(const AValue: string);
begin
   FFeedbackId := AValue; 
end;

procedure TPatientFeedback.SetResponseText(const AValue: string);
begin
   FResponseText := AValue; 
end;

procedure TPatientFeedback.SetResponseScore(const AValue: TFeedbackScore);
begin
   if assigned(FResponseScore) and (AValue<>FResponseScore) then 
     freeAndNil(FResponseScore);
   FResponseScore := AValue; 
end;

function TPatientFeedback.GetFeedbackId: string);
begin
   result := FFeedbackId; 
end;

function TPatientFeedback.GetResponseText: string);
begin
   result := FResponseText; 
end;

function TPatientFeedback.GetResponseScore : TFeedbackScore);
begin
   if not assigned(FResponseScore) then 
      FResponseScore := TFeedbackScore.Create;
   result := FResponseScore;
end;

 { PatientGender }

 { PatientHistory }

procedure TPatientHistory.SetPatientID(const AValue: integer);
begin
   FPatientID := AValue; 
end;

procedure TPatientHistory.SetFamilyName(const AValue: string);
begin
   FFamilyName := AValue; 
end;

procedure TPatientHistory.SetGivenName(const AValue: string);
begin
   FGivenName := AValue; 
end;

procedure TPatientHistory.SetGender(const AValue: string);
begin
   FGender := AValue; 
end;

procedure TPatientHistory.SetBirthDate(const AValue: string);
begin
   FBirthDate := AValue; 
end;

procedure TPatientHistory.SetAge(const AValue: integer);
begin
   FAge := AValue; 
end;

procedure TPatientHistory.SetHomeAddressLine1(const AValue: string);
begin
   FHomeAddressLine1 := AValue; 
end;

procedure TPatientHistory.SetHomeAddressLine2(const AValue: string);
begin
   FHomeAddressLine2 := AValue; 
end;

procedure TPatientHistory.SetHomeSuburb(const AValue: string);
begin
   FHomeSuburb := AValue; 
end;

procedure TPatientHistory.SetHomePostcode(const AValue: string);
begin
   FHomePostcode := AValue; 
end;

procedure TPatientHistory.SetHomePhone(const AValue: string);
begin
   FHomePhone := AValue; 
end;

procedure TPatientHistory.SetMobilePhone(const AValue: string);
begin
   FMobilePhone := AValue; 
end;

procedure TPatientHistory.SetNextAppointment(const AValue: TAppointment);
begin
   if assigned(FNextAppointment) and (AValue<>FNextAppointment) then 
     freeAndNil(FNextAppointment);
   FNextAppointment := AValue; 
end;

procedure TPatientHistory.SetEncounters(const AValue: );
begin
   FEncounters := AValue; 
end;

procedure TPatientHistory.SetResults(const AValue: );
begin
   FResults := AValue; 
end;

procedure TPatientHistory.SetRecalls(const AValue: );
begin
   FRecalls := AValue; 
end;

function TPatientHistory.GetPatientID: integer);
begin
   result := FPatientID; 
end;

function TPatientHistory.GetFamilyName: string);
begin
   result := FFamilyName; 
end;

function TPatientHistory.GetGivenName: string);
begin
   result := FGivenName; 
end;

function TPatientHistory.GetGender: string);
begin
   result := FGender; 
end;

function TPatientHistory.GetBirthDate: string);
begin
   result := FBirthDate; 
end;

function TPatientHistory.GetAge: integer);
begin
   result := FAge; 
end;

function TPatientHistory.GetHomeAddressLine1: string);
begin
   result := FHomeAddressLine1; 
end;

function TPatientHistory.GetHomeAddressLine2: string);
begin
   result := FHomeAddressLine2; 
end;

function TPatientHistory.GetHomeSuburb: string);
begin
   result := FHomeSuburb; 
end;

function TPatientHistory.GetHomePostcode: string);
begin
   result := FHomePostcode; 
end;

function TPatientHistory.GetHomePhone: string);
begin
   result := FHomePhone; 
end;

function TPatientHistory.GetMobilePhone: string);
begin
   result := FMobilePhone; 
end;

function TPatientHistory.GetNextAppointment : TAppointment);
begin
   if not assigned(FNextAppointment) then 
      FNextAppointment := TAppointment.Create;
   result := FNextAppointment;
end;

function TPatientHistory.GetEncounters: );
begin
   if not assigned(FEncounters) then 
     FEncounters := TCollections.CreateList<  >;
   FEncounters := AValue; 
end;

function TPatientHistory.GetResults: );
begin
   if not assigned(FResults) then 
     FResults := TCollections.CreateList<  >;
   FResults := AValue; 
end;

function TPatientHistory.GetRecalls: );
begin
   if not assigned(FRecalls) then 
     FRecalls := TCollections.CreateList<  >;
   FRecalls := AValue; 
end;

 { PatientIdentity }

procedure TPatientIdentity.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TPatientIdentity.SetExternalID(const AValue: string);
begin
   FExternalID := AValue; 
end;

procedure TPatientIdentity.SetMedicareNumber(const AValue: string);
begin
   FMedicareNumber := AValue; 
end;

procedure TPatientIdentity.SetMedicareNumberExpiry(const AValue: string);
begin
   FMedicareNumberExpiry := AValue; 
end;

procedure TPatientIdentity.SetGivenName(const AValue: string);
begin
   FGivenName := AValue; 
end;

procedure TPatientIdentity.SetFamilyName(const AValue: string);
begin
   FFamilyName := AValue; 
end;

procedure TPatientIdentity.SetFullName(const AValue: string);
begin
   FFullName := AValue; 
end;

procedure TPatientIdentity.SetBirthDate(const AValue: string);
begin
   FBirthDate := AValue; 
end;

procedure TPatientIdentity.SetMobilePhone(const AValue: string);
begin
   FMobilePhone := AValue; 
end;

procedure TPatientIdentity.SetHomePhone(const AValue: string);
begin
   FHomePhone := AValue; 
end;

procedure TPatientIdentity.SetHomeAddressLine1(const AValue: string);
begin
   FHomeAddressLine1 := AValue; 
end;

procedure TPatientIdentity.SetHomeAddressLine2(const AValue: string);
begin
   FHomeAddressLine2 := AValue; 
end;

procedure TPatientIdentity.SetHomePostcode(const AValue: string);
begin
   FHomePostcode := AValue; 
end;

procedure TPatientIdentity.SetHomeSuburb(const AValue: string);
begin
   FHomeSuburb := AValue; 
end;

procedure TPatientIdentity.SetDateOfBirth(const AValue: string);
begin
   FDateOfBirth := AValue; 
end;

procedure TPatientIdentity.SetDateOfBirthFrom(const AValue: string);
begin
   FDateOfBirthFrom := AValue; 
end;

procedure TPatientIdentity.SetDateOfBirthTo(const AValue: string);
begin
   FDateOfBirthTo := AValue; 
end;

procedure TPatientIdentity.SetMedicareExpiryDate(const AValue: string);
begin
   FMedicareExpiryDate := AValue; 
end;

procedure TPatientIdentity.SetStatusCode(const AValue: string);
begin
   FStatusCode := AValue; 
end;

procedure TPatientIdentity.SetJoinedOnline(const AValue: string);
begin
   FJoinedOnline := AValue; 
end;

procedure TPatientIdentity.SetProvisionalPatientId(const AValue: integer);
begin
   FProvisionalPatientId := AValue; 
end;

procedure TPatientIdentity.SetSortOrder(const AValue: integer);
begin
   FSortOrder := AValue; 
end;

function TPatientIdentity.GetId: integer);
begin
   result := FId; 
end;

function TPatientIdentity.GetExternalID: string);
begin
   result := FExternalID; 
end;

function TPatientIdentity.GetMedicareNumber: string);
begin
   result := FMedicareNumber; 
end;

function TPatientIdentity.GetMedicareNumberExpiry: string);
begin
   result := FMedicareNumberExpiry; 
end;

function TPatientIdentity.GetGivenName: string);
begin
   result := FGivenName; 
end;

function TPatientIdentity.GetFamilyName: string);
begin
   result := FFamilyName; 
end;

function TPatientIdentity.GetFullName: string);
begin
   result := FFullName; 
end;

function TPatientIdentity.GetBirthDate: string);
begin
   result := FBirthDate; 
end;

function TPatientIdentity.GetMobilePhone: string);
begin
   result := FMobilePhone; 
end;

function TPatientIdentity.GetHomePhone: string);
begin
   result := FHomePhone; 
end;

function TPatientIdentity.GetHomeAddressLine1: string);
begin
   result := FHomeAddressLine1; 
end;

function TPatientIdentity.GetHomeAddressLine2: string);
begin
   result := FHomeAddressLine2; 
end;

function TPatientIdentity.GetHomePostcode: string);
begin
   result := FHomePostcode; 
end;

function TPatientIdentity.GetHomeSuburb: string);
begin
   result := FHomeSuburb; 
end;

function TPatientIdentity.GetDateOfBirth: string);
begin
   result := FDateOfBirth; 
end;

function TPatientIdentity.GetDateOfBirthFrom: string);
begin
   result := FDateOfBirthFrom; 
end;

function TPatientIdentity.GetDateOfBirthTo: string);
begin
   result := FDateOfBirthTo; 
end;

function TPatientIdentity.GetMedicareExpiryDate: string);
begin
   result := FMedicareExpiryDate; 
end;

function TPatientIdentity.GetStatusCode: string);
begin
   result := FStatusCode; 
end;

function TPatientIdentity.GetJoinedOnline: string);
begin
   result := FJoinedOnline; 
end;

function TPatientIdentity.GetProvisionalPatientId: integer);
begin
   result := FProvisionalPatientId; 
end;

function TPatientIdentity.GetSortOrder: integer);
begin
   result := FSortOrder; 
end;

 { PbsState }

 { Prescriber }

procedure TPrescriber.SetTitle(const AValue: string);
begin
   FTitle := AValue; 
end;

procedure TPrescriber.SetGivenName(const AValue: string);
begin
   FGivenName := AValue; 
end;

procedure TPrescriber.SetFamilyName(const AValue: string);
begin
   FFamilyName := AValue; 
end;

procedure TPrescriber.SetQuals(const AValue: string);
begin
   FQuals := AValue; 
end;

procedure TPrescriber.SetMobilePhoneNumber(const AValue: string);
begin
   FMobilePhoneNumber := AValue; 
end;

procedure TPrescriber.SetEmail(const AValue: string);
begin
   FEmail := AValue; 
end;

procedure TPrescriber.SetDoctorTypeDescription(const AValue: string);
begin
   FDoctorTypeDescription := AValue; 
end;

procedure TPrescriber.SetPrescriberNo(const AValue: string);
begin
   FPrescriberNo := AValue; 
end;

procedure TPrescriber.SetProviderNo(const AValue: string);
begin
   FProviderNo := AValue; 
end;

procedure TPrescriber.SetHPII(const AValue: string);
begin
   FHPII := AValue; 
end;

procedure TPrescriber.SetAHPRANo(const AValue: string);
begin
   FAHPRANo := AValue; 
end;

procedure TPrescriber.SetHPIO(const AValue: string);
begin
   FHPIO := AValue; 
end;

procedure TPrescriber.SetClinicName(const AValue: string);
begin
   FClinicName := AValue; 
end;

procedure TPrescriber.SetClinicAddressLine1(const AValue: string);
begin
   FClinicAddressLine1 := AValue; 
end;

procedure TPrescriber.SetClinicAddressLine2(const AValue: string);
begin
   FClinicAddressLine2 := AValue; 
end;

procedure TPrescriber.SetClinicSuburb(const AValue: string);
begin
   FClinicSuburb := AValue; 
end;

procedure TPrescriber.SetClinicPostCode(const AValue: string);
begin
   FClinicPostCode := AValue; 
end;

procedure TPrescriber.SetClinicPhoneNumber1(const AValue: string);
begin
   FClinicPhoneNumber1 := AValue; 
end;

procedure TPrescriber.SetClinicPhoneNumber2(const AValue: string);
begin
   FClinicPhoneNumber2 := AValue; 
end;

procedure TPrescriber.SetClinicPhoneNumber3(const AValue: string);
begin
   FClinicPhoneNumber3 := AValue; 
end;

procedure TPrescriber.SetClinicFaxNumber(const AValue: string);
begin
   FClinicFaxNumber := AValue; 
end;

procedure TPrescriber.SetSafeScriptTerminalId(const AValue: string);
begin
   FSafeScriptTerminalId := AValue; 
end;

procedure TPrescriber.SetErxEntityId(const AValue: string);
begin
   FErxEntityId := AValue; 
end;

procedure TPrescriber.SetHICLocationId(const AValue: string);
begin
   FHICLocationId := AValue; 
end;

procedure TPrescriber.SetOrganisationType(const AValue: string);
begin
   FOrganisationType := AValue; 
end;

procedure TPrescriber.SetUserId(const AValue: string);
begin
   FUserId := AValue; 
end;

procedure TPrescriber.SetDoctorCode(const AValue: string);
begin
   FDoctorCode := AValue; 
end;

procedure TPrescriber.SetMimsValidFrom(const AValue: string);
begin
   FMimsValidFrom := AValue; 
end;

procedure TPrescriber.SetSpecialtyTreatmentText(const AValue: string);
begin
   FSpecialtyTreatmentText := AValue; 
end;

function TPrescriber.GetTitle: string);
begin
   result := FTitle; 
end;

function TPrescriber.GetGivenName: string);
begin
   result := FGivenName; 
end;

function TPrescriber.GetFamilyName: string);
begin
   result := FFamilyName; 
end;

function TPrescriber.GetQuals: string);
begin
   result := FQuals; 
end;

function TPrescriber.GetMobilePhoneNumber: string);
begin
   result := FMobilePhoneNumber; 
end;

function TPrescriber.GetEmail: string);
begin
   result := FEmail; 
end;

function TPrescriber.GetDoctorTypeDescription: string);
begin
   result := FDoctorTypeDescription; 
end;

function TPrescriber.GetPrescriberNo: string);
begin
   result := FPrescriberNo; 
end;

function TPrescriber.GetProviderNo: string);
begin
   result := FProviderNo; 
end;

function TPrescriber.GetHPII: string);
begin
   result := FHPII; 
end;

function TPrescriber.GetAHPRANo: string);
begin
   result := FAHPRANo; 
end;

function TPrescriber.GetHPIO: string);
begin
   result := FHPIO; 
end;

function TPrescriber.GetClinicName: string);
begin
   result := FClinicName; 
end;

function TPrescriber.GetClinicAddressLine1: string);
begin
   result := FClinicAddressLine1; 
end;

function TPrescriber.GetClinicAddressLine2: string);
begin
   result := FClinicAddressLine2; 
end;

function TPrescriber.GetClinicSuburb: string);
begin
   result := FClinicSuburb; 
end;

function TPrescriber.GetClinicPostCode: string);
begin
   result := FClinicPostCode; 
end;

function TPrescriber.GetClinicPhoneNumber1: string);
begin
   result := FClinicPhoneNumber1; 
end;

function TPrescriber.GetClinicPhoneNumber2: string);
begin
   result := FClinicPhoneNumber2; 
end;

function TPrescriber.GetClinicPhoneNumber3: string);
begin
   result := FClinicPhoneNumber3; 
end;

function TPrescriber.GetClinicFaxNumber: string);
begin
   result := FClinicFaxNumber; 
end;

function TPrescriber.GetSafeScriptTerminalId: string);
begin
   result := FSafeScriptTerminalId; 
end;

function TPrescriber.GetErxEntityId: string);
begin
   result := FErxEntityId; 
end;

function TPrescriber.GetHICLocationId: string);
begin
   result := FHICLocationId; 
end;

function TPrescriber.GetOrganisationType: string);
begin
   result := FOrganisationType; 
end;

function TPrescriber.GetUserId: string);
begin
   result := FUserId; 
end;

function TPrescriber.GetDoctorCode: string);
begin
   result := FDoctorCode; 
end;

function TPrescriber.GetMimsValidFrom: string);
begin
   result := FMimsValidFrom; 
end;

function TPrescriber.GetSpecialtyTreatmentText: string);
begin
   result := FSpecialtyTreatmentText; 
end;

 { Prescription }

procedure TPrescription.SetScriptNumber(const AValue: string);
begin
   FScriptNumber := AValue; 
end;

procedure TPrescription.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TPrescription.SetRequestId(const AValue: string);
begin
   FRequestId := AValue; 
end;

procedure TPrescription.SetScriptGUID(const AValue: string);
begin
   FScriptGUID := AValue; 
end;

procedure TPrescription.SetBarcode(const AValue: string);
begin
   FBarcode := AValue; 
end;

procedure TPrescription.SetIsEScript(const AValue: boolean);
begin
   FIsEScript := AValue; 
end;

procedure TPrescription.SetAnnotation(const AValue: string);
begin
   FAnnotation := AValue; 
end;

procedure TPrescription.SetPatient(const AValue: TZedmedPatient);
begin
   if assigned(FPatient) and (AValue<>FPatient) then 
     freeAndNil(FPatient);
   FPatient := AValue; 
end;

procedure TPrescription.SetPrescriber(const AValue: TPrescriber);
begin
   if assigned(FPrescriber) and (AValue<>FPrescriber) then 
     freeAndNil(FPrescriber);
   FPrescriber := AValue; 
end;

procedure TPrescription.SetDrugDetailsList(const AValue: );
begin
   FDrugDetailsList := AValue; 
end;

procedure TPrescription.SetElectronicAddresses(const AValue: );
begin
   FElectronicAddresses := AValue; 
end;

function TPrescription.GetScriptNumber: string);
begin
   result := FScriptNumber; 
end;

function TPrescription.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TPrescription.GetRequestId: string);
begin
   result := FRequestId; 
end;

function TPrescription.GetScriptGUID: string);
begin
   result := FScriptGUID; 
end;

function TPrescription.GetBarcode: string);
begin
   result := FBarcode; 
end;

function TPrescription.GetIsEScript: boolean);
begin
   result := FIsEScript; 
end;

function TPrescription.GetAnnotation: string);
begin
   result := FAnnotation; 
end;

function TPrescription.GetPatient : TZedmedPatient);
begin
   if not assigned(FPatient) then 
      FPatient := TZedmedPatient.Create;
   result := FPatient;
end;

function TPrescription.GetPrescriber : TPrescriber);
begin
   if not assigned(FPrescriber) then 
      FPrescriber := TPrescriber.Create;
   result := FPrescriber;
end;

function TPrescription.GetDrugDetailsList: );
begin
   if not assigned(FDrugDetailsList) then 
     FDrugDetailsList := TCollections.CreateList<  >;
   FDrugDetailsList := AValue; 
end;

function TPrescription.GetElectronicAddresses: );
begin
   if not assigned(FElectronicAddresses) then 
     FElectronicAddresses := TCollections.CreateList<  >;
   FElectronicAddresses := AValue; 
end;

 { ProviderIdentifier }

 { ProvPatientResultCount }

procedure TProvPatientResultCount.SetnewProvisionalCount(const AValue: integer);
begin
   FnewProvisionalCount := AValue; 
end;

procedure TProvPatientResultCount.SettotalProvisionalCount(const AValue: integer);
begin
   FtotalProvisionalCount := AValue; 
end;

procedure TProvPatientResultCount.SetmaxPatientID(const AValue: integer);
begin
   FmaxPatientID := AValue; 
end;

function TProvPatientResultCount.GetnewProvisionalCount: integer);
begin
   result := FnewProvisionalCount; 
end;

function TProvPatientResultCount.GettotalProvisionalCount: integer);
begin
   result := FtotalProvisionalCount; 
end;

function TProvPatientResultCount.GetmaxPatientID: integer);
begin
   result := FmaxPatientID; 
end;

 { QuestionnaireAnswer }

procedure TQuestionnaireAnswer.SetQuestionId(const AValue: integer);
begin
   FQuestionId := AValue; 
end;

procedure TQuestionnaireAnswer.SetValueId(const AValue: integer);
begin
   FValueId := AValue; 
end;

procedure TQuestionnaireAnswer.SetText(const AValue: string);
begin
   FText := AValue; 
end;

function TQuestionnaireAnswer.GetQuestionId: integer);
begin
   result := FQuestionId; 
end;

function TQuestionnaireAnswer.GetValueId: integer);
begin
   result := FValueId; 
end;

function TQuestionnaireAnswer.GetText: string);
begin
   result := FText; 
end;

 { QuestionnaireAnswersRequest }

procedure TQuestionnaireAnswersRequest.SetQuestionnaireId(const AValue: integer);
begin
   FQuestionnaireId := AValue; 
end;

procedure TQuestionnaireAnswersRequest.SetExternalPatientId(const AValue: string);
begin
   FExternalPatientId := AValue; 
end;

procedure TQuestionnaireAnswersRequest.SetQuestionnaireAnswers(const AValue: );
begin
   FQuestionnaireAnswers := AValue; 
end;

function TQuestionnaireAnswersRequest.GetQuestionnaireId: integer);
begin
   result := FQuestionnaireId; 
end;

function TQuestionnaireAnswersRequest.GetExternalPatientId: string);
begin
   result := FExternalPatientId; 
end;

function TQuestionnaireAnswersRequest.GetQuestionnaireAnswers: );
begin
   if not assigned(FQuestionnaireAnswers) then 
     FQuestionnaireAnswers := TCollections.CreateList<  >;
   FQuestionnaireAnswers := AValue; 
end;

 { Recall }

procedure TRecall.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TRecall.SetPatientId(const AValue: integer);
begin
   FPatientId := AValue; 
end;

procedure TRecall.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TRecall.SetDoctorCode(const AValue: string);
begin
   FDoctorCode := AValue; 
end;

procedure TRecall.SetCreationDate(const AValue: string);
begin
   FCreationDate := AValue; 
end;

procedure TRecall.SetMaturityDate(const AValue: string);
begin
   FMaturityDate := AValue; 
end;

procedure TRecall.SetRecallTypeId(const AValue: integer);
begin
   FRecallTypeId := AValue; 
end;

procedure TRecall.SetRecallType(const AValue: string);
begin
   FRecallType := AValue; 
end;

procedure TRecall.SetNotes(const AValue: string);
begin
   FNotes := AValue; 
end;

function TRecall.GetId: integer);
begin
   result := FId; 
end;

function TRecall.GetPatientId: integer);
begin
   result := FPatientId; 
end;

function TRecall.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TRecall.GetDoctorCode: string);
begin
   result := FDoctorCode; 
end;

function TRecall.GetCreationDate: string);
begin
   result := FCreationDate; 
end;

function TRecall.GetMaturityDate: string);
begin
   result := FMaturityDate; 
end;

function TRecall.GetRecallTypeId: integer);
begin
   result := FRecallTypeId; 
end;

function TRecall.GetRecallType: string);
begin
   result := FRecallType; 
end;

function TRecall.GetNotes: string);
begin
   result := FNotes; 
end;

 { ResultAction }

procedure TResultAction.SetResultId(const AValue: integer);
begin
   FResultId := AValue; 
end;

procedure TResultAction.SetNote(const AValue: string);
begin
   FNote := AValue; 
end;

procedure TResultAction.SetSetCompleted(const AValue: boolean);
begin
   FSetCompleted := AValue; 
end;

procedure TResultAction.SetIsPatientNotified(const AValue: boolean);
begin
   FIsPatientNotified := AValue; 
end;

procedure TResultAction.SetSMSNoteToPatient(const AValue: boolean);
begin
   FSMSNoteToPatient := AValue; 
end;

procedure TResultAction.SetActionName(const AValue: TResultActionName);
begin
   if assigned(FActionName) and (AValue<>FActionName) then 
     freeAndNil(FActionName);
   FActionName := AValue; 
end;

procedure TResultAction.SetPriority(const AValue: TResultPriority);
begin
   if assigned(FPriority) and (AValue<>FPriority) then 
     freeAndNil(FPriority);
   FPriority := AValue; 
end;

function TResultAction.GetResultId: integer);
begin
   result := FResultId; 
end;

function TResultAction.GetNote: string);
begin
   result := FNote; 
end;

function TResultAction.GetSetCompleted: boolean);
begin
   result := FSetCompleted; 
end;

function TResultAction.GetIsPatientNotified: boolean);
begin
   result := FIsPatientNotified; 
end;

function TResultAction.GetSMSNoteToPatient: boolean);
begin
   result := FSMSNoteToPatient; 
end;

function TResultAction.GetActionName : TResultActionName);
begin
   if not assigned(FActionName) then 
      FActionName := TResultActionName.Create;
   result := FActionName;
end;

function TResultAction.GetPriority : TResultPriority);
begin
   if not assigned(FPriority) then 
      FPriority := TResultPriority.Create;
   result := FPriority;
end;

 { ResultActionName }

 { ResultPriority }

 { ResultSummary }

procedure TResultSummary.SetResultID(const AValue: integer);
begin
   FResultID := AValue; 
end;

procedure TResultSummary.SetDescription(const AValue: string);
begin
   FDescription := AValue; 
end;

procedure TResultSummary.SetStatus(const AValue: integer);
begin
   FStatus := AValue; 
end;

procedure TResultSummary.SetPriority(const AValue: integer);
begin
   FPriority := AValue; 
end;

procedure TResultSummary.SetInterimFlag(const AValue: string);
begin
   FInterimFlag := AValue; 
end;

procedure TResultSummary.SetAssignedUser(const AValue: string);
begin
   FAssignedUser := AValue; 
end;

procedure TResultSummary.SetCollectedDate(const AValue: string);
begin
   FCollectedDate := AValue; 
end;

procedure TResultSummary.SetReportedDate(const AValue: string);
begin
   FReportedDate := AValue; 
end;

procedure TResultSummary.SetRequestedDate(const AValue: string);
begin
   FRequestedDate := AValue; 
end;

procedure TResultSummary.SetRecievedByLabDate(const AValue: string);
begin
   FRecievedByLabDate := AValue; 
end;

procedure TResultSummary.SetDocumentDate(const AValue: string);
begin
   FDocumentDate := AValue; 
end;

procedure TResultSummary.SetPatientNotifiedDate(const AValue: string);
begin
   FPatientNotifiedDate := AValue; 
end;

procedure TResultSummary.SetReferringDoctor(const AValue: string);
begin
   FReferringDoctor := AValue; 
end;

procedure TResultSummary.SetPatient(const AValue: TZedmedPatient);
begin
   if assigned(FPatient) and (AValue<>FPatient) then 
     freeAndNil(FPatient);
   FPatient := AValue; 
end;

procedure TResultSummary.SetDocumentType(const AValue: TBlobFileType);
begin
   if assigned(FDocumentType) and (AValue<>FDocumentType) then 
     freeAndNil(FDocumentType);
   FDocumentType := AValue; 
end;

function TResultSummary.GetResultID: integer);
begin
   result := FResultID; 
end;

function TResultSummary.GetDescription: string);
begin
   result := FDescription; 
end;

function TResultSummary.GetStatus: integer);
begin
   result := FStatus; 
end;

function TResultSummary.GetPriority: integer);
begin
   result := FPriority; 
end;

function TResultSummary.GetInterimFlag: string);
begin
   result := FInterimFlag; 
end;

function TResultSummary.GetAssignedUser: string);
begin
   result := FAssignedUser; 
end;

function TResultSummary.GetCollectedDate: string);
begin
   result := FCollectedDate; 
end;

function TResultSummary.GetReportedDate: string);
begin
   result := FReportedDate; 
end;

function TResultSummary.GetRequestedDate: string);
begin
   result := FRequestedDate; 
end;

function TResultSummary.GetRecievedByLabDate: string);
begin
   result := FRecievedByLabDate; 
end;

function TResultSummary.GetDocumentDate: string);
begin
   result := FDocumentDate; 
end;

function TResultSummary.GetPatientNotifiedDate: string);
begin
   result := FPatientNotifiedDate; 
end;

function TResultSummary.GetReferringDoctor: string);
begin
   result := FReferringDoctor; 
end;

function TResultSummary.GetPatient : TZedmedPatient);
begin
   if not assigned(FPatient) then 
      FPatient := TZedmedPatient.Create;
   result := FPatient;
end;

function TResultSummary.GetDocumentType : TBlobFileType);
begin
   if not assigned(FDocumentType) then 
      FDocumentType := TBlobFileType.Create;
   result := FDocumentType;
end;

 { ScheduleSlot }

procedure TScheduleSlot.SetStart(const AValue: string);
begin
   FStart := AValue; 
end;

procedure TScheduleSlot.SetEnd(const AValue: string);
begin
   FEnd := AValue; 
end;

procedure TScheduleSlot.SetTypeDescription(const AValue: string);
begin
   FTypeDescription := AValue; 
end;

procedure TScheduleSlot.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TScheduleSlot.SetBackgroundColor(const AValue: string);
begin
   FBackgroundColor := AValue; 
end;

function TScheduleSlot.GetStart: string);
begin
   result := FStart; 
end;

function TScheduleSlot.GetEnd: string);
begin
   result := FEnd; 
end;

function TScheduleSlot.GetTypeDescription: string);
begin
   result := FTypeDescription; 
end;

function TScheduleSlot.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TScheduleSlot.GetBackgroundColor: string);
begin
   result := FBackgroundColor; 
end;

 { SophiaMimsValidityPassword }

procedure TSophiaMimsValidityPassword.SetMonth(const AValue: integer);
begin
   FMonth := AValue; 
end;

procedure TSophiaMimsValidityPassword.SetYear(const AValue: integer);
begin
   FYear := AValue; 
end;

procedure TSophiaMimsValidityPassword.SetPassword(const AValue: string);
begin
   FPassword := AValue; 
end;

function TSophiaMimsValidityPassword.GetMonth: integer);
begin
   result := FMonth; 
end;

function TSophiaMimsValidityPassword.GetYear: integer);
begin
   result := FYear; 
end;

function TSophiaMimsValidityPassword.GetPassword: string);
begin
   result := FPassword; 
end;

 { StockAdjustment }

procedure TStockAdjustment.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TStockAdjustment.SetStockGroupId(const AValue: integer);
begin
   FStockGroupId := AValue; 
end;

procedure TStockAdjustment.SetAdjustment(const AValue: integer);
begin
   FAdjustment := AValue; 
end;

procedure TStockAdjustment.SetAdjustmentReason(const AValue: integer);
begin
   FAdjustmentReason := AValue; 
end;

procedure TStockAdjustment.SetReasonDescription(const AValue: string);
begin
   FReasonDescription := AValue; 
end;

procedure TStockAdjustment.SetCreatedById(const AValue: string);
begin
   FCreatedById := AValue; 
end;

procedure TStockAdjustment.SetCreatedAt(const AValue: string);
begin
   FCreatedAt := AValue; 
end;

procedure TStockAdjustment.SetBatchNumber(const AValue: string);
begin
   FBatchNumber := AValue; 
end;

procedure TStockAdjustment.SetExpiryDate(const AValue: string);
begin
   FExpiryDate := AValue; 
end;

procedure TStockAdjustment.SetNote(const AValue: string);
begin
   FNote := AValue; 
end;

function TStockAdjustment.GetId: integer);
begin
   result := FId; 
end;

function TStockAdjustment.GetStockGroupId: integer);
begin
   result := FStockGroupId; 
end;

function TStockAdjustment.GetAdjustment: integer);
begin
   result := FAdjustment; 
end;

function TStockAdjustment.GetAdjustmentReason: integer);
begin
   result := FAdjustmentReason; 
end;

function TStockAdjustment.GetReasonDescription: string);
begin
   result := FReasonDescription; 
end;

function TStockAdjustment.GetCreatedById: string);
begin
   result := FCreatedById; 
end;

function TStockAdjustment.GetCreatedAt: string);
begin
   result := FCreatedAt; 
end;

function TStockAdjustment.GetBatchNumber: string);
begin
   result := FBatchNumber; 
end;

function TStockAdjustment.GetExpiryDate: string);
begin
   result := FExpiryDate; 
end;

function TStockAdjustment.GetNote: string);
begin
   result := FNote; 
end;

 { StockGroup }

procedure TStockGroup.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TStockGroup.SetProductId(const AValue: integer);
begin
   FProductId := AValue; 
end;

procedure TStockGroup.SetSupplierId(const AValue: integer);
begin
   FSupplierId := AValue; 
end;

procedure TStockGroup.SetBatchNumber(const AValue: string);
begin
   FBatchNumber := AValue; 
end;

procedure TStockGroup.SetSerialNumber(const AValue: string);
begin
   FSerialNumber := AValue; 
end;

procedure TStockGroup.SetExpiryDate(const AValue: string);
begin
   FExpiryDate := AValue; 
end;

procedure TStockGroup.SetPurchasePrice(const AValue: number);
begin
   FPurchasePrice := AValue; 
end;

procedure TStockGroup.SetArrivalDate(const AValue: string);
begin
   FArrivalDate := AValue; 
end;

procedure TStockGroup.SetOrderCode(const AValue: string);
begin
   FOrderCode := AValue; 
end;

procedure TStockGroup.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TStockGroup.SetCreatedById(const AValue: string);
begin
   FCreatedById := AValue; 
end;

procedure TStockGroup.SetCreatedAt(const AValue: string);
begin
   FCreatedAt := AValue; 
end;

procedure TStockGroup.SetGroupSplitFrom(const AValue: integer);
begin
   FGroupSplitFrom := AValue; 
end;

procedure TStockGroup.SetIsBatchRequired(const AValue: boolean);
begin
   FIsBatchRequired := AValue; 
end;

procedure TStockGroup.SetIsExpiryDateRequired(const AValue: boolean);
begin
   FIsExpiryDateRequired := AValue; 
end;

procedure TStockGroup.SetIsSerialRequired(const AValue: boolean);
begin
   FIsSerialRequired := AValue; 
end;

procedure TStockGroup.SetStockAdjustments(const AValue: );
begin
   FStockAdjustments := AValue; 
end;

function TStockGroup.GetId: integer);
begin
   result := FId; 
end;

function TStockGroup.GetProductId: integer);
begin
   result := FProductId; 
end;

function TStockGroup.GetSupplierId: integer);
begin
   result := FSupplierId; 
end;

function TStockGroup.GetBatchNumber: string);
begin
   result := FBatchNumber; 
end;

function TStockGroup.GetSerialNumber: string);
begin
   result := FSerialNumber; 
end;

function TStockGroup.GetExpiryDate: string);
begin
   result := FExpiryDate; 
end;

function TStockGroup.GetPurchasePrice: number);
begin
   result := FPurchasePrice; 
end;

function TStockGroup.GetArrivalDate: string);
begin
   result := FArrivalDate; 
end;

function TStockGroup.GetOrderCode: string);
begin
   result := FOrderCode; 
end;

function TStockGroup.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TStockGroup.GetCreatedById: string);
begin
   result := FCreatedById; 
end;

function TStockGroup.GetCreatedAt: string);
begin
   result := FCreatedAt; 
end;

function TStockGroup.GetGroupSplitFrom: integer);
begin
   result := FGroupSplitFrom; 
end;

function TStockGroup.GetIsBatchRequired: boolean);
begin
   result := FIsBatchRequired; 
end;

function TStockGroup.GetIsExpiryDateRequired: boolean);
begin
   result := FIsExpiryDateRequired; 
end;

function TStockGroup.GetIsSerialRequired: boolean);
begin
   result := FIsSerialRequired; 
end;

function TStockGroup.GetStockAdjustments: );
begin
   if not assigned(FStockAdjustments) then 
     FStockAdjustments := TCollections.CreateList<  >;
   FStockAdjustments := AValue; 
end;

 { StockProduct }

procedure TStockProduct.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TStockProduct.SetParentId(const AValue: integer);
begin
   FParentId := AValue; 
end;

procedure TStockProduct.SetLookupValueId(const AValue: integer);
begin
   FLookupValueId := AValue; 
end;

procedure TStockProduct.SetLookUpValueDescription(const AValue: string);
begin
   FLookUpValueDescription := AValue; 
end;

procedure TStockProduct.SetProductName(const AValue: string);
begin
   FProductName := AValue; 
end;

procedure TStockProduct.SetBrand(const AValue: string);
begin
   FBrand := AValue; 
end;

procedure TStockProduct.SetAdjustmentMethod(const AValue: string);
begin
   FAdjustmentMethod := AValue; 
end;

procedure TStockProduct.SetReorderThreshold(const AValue: integer);
begin
   FReorderThreshold := AValue; 
end;

procedure TStockProduct.SetNotes(const AValue: string);
begin
   FNotes := AValue; 
end;

procedure TStockProduct.SetIsBatchRequired(const AValue: boolean);
begin
   FIsBatchRequired := AValue; 
end;

procedure TStockProduct.SetIsExpiryDateRequired(const AValue: boolean);
begin
   FIsExpiryDateRequired := AValue; 
end;

procedure TStockProduct.SetIsActive(const AValue: boolean);
begin
   FIsActive := AValue; 
end;

procedure TStockProduct.SetCreatedById(const AValue: string);
begin
   FCreatedById := AValue; 
end;

procedure TStockProduct.SetCreatedAt(const AValue: string);
begin
   FCreatedAt := AValue; 
end;

procedure TStockProduct.SetModifiedById(const AValue: string);
begin
   FModifiedById := AValue; 
end;

procedure TStockProduct.SetModifiedAt(const AValue: string);
begin
   FModifiedAt := AValue; 
end;

procedure TStockProduct.SetPreferredProductSupplierId(const AValue: integer);
begin
   FPreferredProductSupplierId := AValue; 
end;

procedure TStockProduct.SetPreferredSupplierId(const AValue: integer);
begin
   FPreferredSupplierId := AValue; 
end;

procedure TStockProduct.SetPreferredSupplierName(const AValue: string);
begin
   FPreferredSupplierName := AValue; 
end;

procedure TStockProduct.SetCurrentStock(const AValue: integer);
begin
   FCurrentStock := AValue; 
end;

procedure TStockProduct.SetCurrentStockValue(const AValue: number);
begin
   FCurrentStockValue := AValue; 
end;

procedure TStockProduct.SetThresholdDifference(const AValue: number);
begin
   FThresholdDifference := AValue; 
end;

procedure TStockProduct.SetItemCode(const AValue: string);
begin
   FItemCode := AValue; 
end;

procedure TStockProduct.SetProductNameU(const AValue: string);
begin
   FProductNameU := AValue; 
end;

procedure TStockProduct.SetBrandU(const AValue: string);
begin
   FBrandU := AValue; 
end;

procedure TStockProduct.SetItemCodeU(const AValue: string);
begin
   FItemCodeU := AValue; 
end;

procedure TStockProduct.SetPreferredSupplierNameU(const AValue: string);
begin
   FPreferredSupplierNameU := AValue; 
end;

procedure TStockProduct.SetLookUpValueDescriptionU(const AValue: string);
begin
   FLookUpValueDescriptionU := AValue; 
end;

procedure TStockProduct.SetImmTypeId(const AValue: integer);
begin
   FImmTypeId := AValue; 
end;

procedure TStockProduct.SetIsSerialRequired(const AValue: boolean);
begin
   FIsSerialRequired := AValue; 
end;

procedure TStockProduct.SetSplitQuantity(const AValue: integer);
begin
   FSplitQuantity := AValue; 
end;

procedure TStockProduct.SetLinkedItem(const AValue: TStockProductItem);
begin
   if assigned(FLinkedItem) and (AValue<>FLinkedItem) then 
     freeAndNil(FLinkedItem);
   FLinkedItem := AValue; 
end;

procedure TStockProduct.SetSubProduct(const AValue: TStockProduct);
begin
   if assigned(FSubProduct) and (AValue<>FSubProduct) then 
     freeAndNil(FSubProduct);
   FSubProduct := AValue; 
end;

procedure TStockProduct.SetProductSuppliers(const AValue: );
begin
   FProductSuppliers := AValue; 
end;

procedure TStockProduct.SetStockGroups(const AValue: );
begin
   FStockGroups := AValue; 
end;

function TStockProduct.GetId: integer);
begin
   result := FId; 
end;

function TStockProduct.GetParentId: integer);
begin
   result := FParentId; 
end;

function TStockProduct.GetLookupValueId: integer);
begin
   result := FLookupValueId; 
end;

function TStockProduct.GetLookUpValueDescription: string);
begin
   result := FLookUpValueDescription; 
end;

function TStockProduct.GetProductName: string);
begin
   result := FProductName; 
end;

function TStockProduct.GetBrand: string);
begin
   result := FBrand; 
end;

function TStockProduct.GetAdjustmentMethod: string);
begin
   result := FAdjustmentMethod; 
end;

function TStockProduct.GetReorderThreshold: integer);
begin
   result := FReorderThreshold; 
end;

function TStockProduct.GetNotes: string);
begin
   result := FNotes; 
end;

function TStockProduct.GetIsBatchRequired: boolean);
begin
   result := FIsBatchRequired; 
end;

function TStockProduct.GetIsExpiryDateRequired: boolean);
begin
   result := FIsExpiryDateRequired; 
end;

function TStockProduct.GetIsActive: boolean);
begin
   result := FIsActive; 
end;

function TStockProduct.GetCreatedById: string);
begin
   result := FCreatedById; 
end;

function TStockProduct.GetCreatedAt: string);
begin
   result := FCreatedAt; 
end;

function TStockProduct.GetModifiedById: string);
begin
   result := FModifiedById; 
end;

function TStockProduct.GetModifiedAt: string);
begin
   result := FModifiedAt; 
end;

function TStockProduct.GetPreferredProductSupplierId: integer);
begin
   result := FPreferredProductSupplierId; 
end;

function TStockProduct.GetPreferredSupplierId: integer);
begin
   result := FPreferredSupplierId; 
end;

function TStockProduct.GetPreferredSupplierName: string);
begin
   result := FPreferredSupplierName; 
end;

function TStockProduct.GetCurrentStock: integer);
begin
   result := FCurrentStock; 
end;

function TStockProduct.GetCurrentStockValue: number);
begin
   result := FCurrentStockValue; 
end;

function TStockProduct.GetThresholdDifference: number);
begin
   result := FThresholdDifference; 
end;

function TStockProduct.GetItemCode: string);
begin
   result := FItemCode; 
end;

function TStockProduct.GetProductNameU: string);
begin
   result := FProductNameU; 
end;

function TStockProduct.GetBrandU: string);
begin
   result := FBrandU; 
end;

function TStockProduct.GetItemCodeU: string);
begin
   result := FItemCodeU; 
end;

function TStockProduct.GetPreferredSupplierNameU: string);
begin
   result := FPreferredSupplierNameU; 
end;

function TStockProduct.GetLookUpValueDescriptionU: string);
begin
   result := FLookUpValueDescriptionU; 
end;

function TStockProduct.GetImmTypeId: integer);
begin
   result := FImmTypeId; 
end;

function TStockProduct.GetIsSerialRequired: boolean);
begin
   result := FIsSerialRequired; 
end;

function TStockProduct.GetSplitQuantity: integer);
begin
   result := FSplitQuantity; 
end;

function TStockProduct.GetLinkedItem : TStockProductItem);
begin
   if not assigned(FLinkedItem) then 
      FLinkedItem := TStockProductItem.Create;
   result := FLinkedItem;
end;

function TStockProduct.GetSubProduct : TStockProduct);
begin
   if not assigned(FSubProduct) then 
      FSubProduct := TStockProduct.Create;
   result := FSubProduct;
end;

function TStockProduct.GetProductSuppliers: );
begin
   if not assigned(FProductSuppliers) then 
     FProductSuppliers := TCollections.CreateList<  >;
   FProductSuppliers := AValue; 
end;

function TStockProduct.GetStockGroups: );
begin
   if not assigned(FStockGroups) then 
     FStockGroups := TCollections.CreateList<  >;
   FStockGroups := AValue; 
end;

 { StockProductItem }

procedure TStockProductItem.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TStockProductItem.SetProductId(const AValue: integer);
begin
   FProductId := AValue; 
end;

procedure TStockProductItem.SetItemCode(const AValue: string);
begin
   FItemCode := AValue; 
end;

function TStockProductItem.GetId: integer);
begin
   result := FId; 
end;

function TStockProductItem.GetProductId: integer);
begin
   result := FProductId; 
end;

function TStockProductItem.GetItemCode: string);
begin
   result := FItemCode; 
end;

 { StockProductSupplier }

procedure TStockProductSupplier.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TStockProductSupplier.SetProductId(const AValue: integer);
begin
   FProductId := AValue; 
end;

procedure TStockProductSupplier.SetSupplierId(const AValue: integer);
begin
   FSupplierId := AValue; 
end;

procedure TStockProductSupplier.SetSupplierName(const AValue: string);
begin
   FSupplierName := AValue; 
end;

procedure TStockProductSupplier.SetOrderCode(const AValue: string);
begin
   FOrderCode := AValue; 
end;

function TStockProductSupplier.GetId: integer);
begin
   result := FId; 
end;

function TStockProductSupplier.GetProductId: integer);
begin
   result := FProductId; 
end;

function TStockProductSupplier.GetSupplierId: integer);
begin
   result := FSupplierId; 
end;

function TStockProductSupplier.GetSupplierName: string);
begin
   result := FSupplierName; 
end;

function TStockProductSupplier.GetOrderCode: string);
begin
   result := FOrderCode; 
end;

 { StockSplit }

procedure TStockSplit.SetProductId(const AValue: integer);
begin
   FProductId := AValue; 
end;

procedure TStockSplit.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TStockSplit.SetSerialNumber(const AValue: string);
begin
   FSerialNumber := AValue; 
end;

procedure TStockSplit.SetAdjustmentReasonFrom(const AValue: integer);
begin
   FAdjustmentReasonFrom := AValue; 
end;

procedure TStockSplit.SetAdjustmentReasonTo(const AValue: integer);
begin
   FAdjustmentReasonTo := AValue; 
end;

procedure TStockSplit.SetItemsToSplit(const AValue: integer);
begin
   FItemsToSplit := AValue; 
end;

procedure TStockSplit.SetSplitInto(const AValue: integer);
begin
   FSplitInto := AValue; 
end;

procedure TStockSplit.SetNote(const AValue: string);
begin
   FNote := AValue; 
end;

procedure TStockSplit.SetIsBatchRequired(const AValue: boolean);
begin
   FIsBatchRequired := AValue; 
end;

procedure TStockSplit.SetIsExpiryDateRequired(const AValue: boolean);
begin
   FIsExpiryDateRequired := AValue; 
end;

procedure TStockSplit.SetIsSerialRequired(const AValue: boolean);
begin
   FIsSerialRequired := AValue; 
end;

procedure TStockSplit.SetStockSplitParameters(const AValue: TStockSplitParameters);
begin
   if assigned(FStockSplitParameters) and (AValue<>FStockSplitParameters) then 
     freeAndNil(FStockSplitParameters);
   FStockSplitParameters := AValue; 
end;

function TStockSplit.GetProductId: integer);
begin
   result := FProductId; 
end;

function TStockSplit.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TStockSplit.GetSerialNumber: string);
begin
   result := FSerialNumber; 
end;

function TStockSplit.GetAdjustmentReasonFrom: integer);
begin
   result := FAdjustmentReasonFrom; 
end;

function TStockSplit.GetAdjustmentReasonTo: integer);
begin
   result := FAdjustmentReasonTo; 
end;

function TStockSplit.GetItemsToSplit: integer);
begin
   result := FItemsToSplit; 
end;

function TStockSplit.GetSplitInto: integer);
begin
   result := FSplitInto; 
end;

function TStockSplit.GetNote: string);
begin
   result := FNote; 
end;

function TStockSplit.GetIsBatchRequired: boolean);
begin
   result := FIsBatchRequired; 
end;

function TStockSplit.GetIsExpiryDateRequired: boolean);
begin
   result := FIsExpiryDateRequired; 
end;

function TStockSplit.GetIsSerialRequired: boolean);
begin
   result := FIsSerialRequired; 
end;

function TStockSplit.GetStockSplitParameters : TStockSplitParameters);
begin
   if not assigned(FStockSplitParameters) then 
      FStockSplitParameters := TStockSplitParameters.Create;
   result := FStockSplitParameters;
end;

 { StockSplitParameters }

procedure TStockSplitParameters.SetBatchNumber(const AValue: string);
begin
   FBatchNumber := AValue; 
end;

procedure TStockSplitParameters.SetExpiryDate(const AValue: string);
begin
   FExpiryDate := AValue; 
end;

procedure TStockSplitParameters.SetCurrentStock(const AValue: integer);
begin
   FCurrentStock := AValue; 
end;

function TStockSplitParameters.GetBatchNumber: string);
begin
   result := FBatchNumber; 
end;

function TStockSplitParameters.GetExpiryDate: string);
begin
   result := FExpiryDate; 
end;

function TStockSplitParameters.GetCurrentStock: integer);
begin
   result := FCurrentStock; 
end;

 { StockSupplier }

procedure TStockSupplier.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TStockSupplier.SetSupplierName(const AValue: string);
begin
   FSupplierName := AValue; 
end;

procedure TStockSupplier.SetWebsite(const AValue: string);
begin
   FWebsite := AValue; 
end;

procedure TStockSupplier.SetPhoneNumber(const AValue: string);
begin
   FPhoneNumber := AValue; 
end;

procedure TStockSupplier.SetEmail(const AValue: string);
begin
   FEmail := AValue; 
end;

procedure TStockSupplier.SetContactName(const AValue: string);
begin
   FContactName := AValue; 
end;

procedure TStockSupplier.SetCreatedById(const AValue: string);
begin
   FCreatedById := AValue; 
end;

procedure TStockSupplier.SetCreatedAt(const AValue: string);
begin
   FCreatedAt := AValue; 
end;

function TStockSupplier.GetId: integer);
begin
   result := FId; 
end;

function TStockSupplier.GetSupplierName: string);
begin
   result := FSupplierName; 
end;

function TStockSupplier.GetWebsite: string);
begin
   result := FWebsite; 
end;

function TStockSupplier.GetPhoneNumber: string);
begin
   result := FPhoneNumber; 
end;

function TStockSupplier.GetEmail: string);
begin
   result := FEmail; 
end;

function TStockSupplier.GetContactName: string);
begin
   result := FContactName; 
end;

function TStockSupplier.GetCreatedById: string);
begin
   result := FCreatedById; 
end;

function TStockSupplier.GetCreatedAt: string);
begin
   result := FCreatedAt; 
end;

 { StockUpdate }

procedure TStockUpdate.SetProductId(const AValue: integer);
begin
   FProductId := AValue; 
end;

procedure TStockUpdate.SetBatchNumber(const AValue: string);
begin
   FBatchNumber := AValue; 
end;

procedure TStockUpdate.SetExpiryDate(const AValue: string);
begin
   FExpiryDate := AValue; 
end;

procedure TStockUpdate.SetSerialNumber(const AValue: string);
begin
   FSerialNumber := AValue; 
end;

procedure TStockUpdate.SetAdjustment(const AValue: integer);
begin
   FAdjustment := AValue; 
end;

procedure TStockUpdate.SetAdjustmentReason(const AValue: integer);
begin
   FAdjustmentReason := AValue; 
end;

procedure TStockUpdate.SetAdjustmentNote(const AValue: string);
begin
   FAdjustmentNote := AValue; 
end;

procedure TStockUpdate.SetDirection(const AValue: boolean);
begin
   FDirection := AValue; 
end;

procedure TStockUpdate.SetOverdraw(const AValue: boolean);
begin
   FOverdraw := AValue; 
end;

procedure TStockUpdate.SetClinicCode(const AValue: string);
begin
   FClinicCode := AValue; 
end;

procedure TStockUpdate.SetIsBatchRequired(const AValue: boolean);
begin
   FIsBatchRequired := AValue; 
end;

procedure TStockUpdate.SetIsExpiryDateRequired(const AValue: boolean);
begin
   FIsExpiryDateRequired := AValue; 
end;

procedure TStockUpdate.SetIsSerialRequired(const AValue: boolean);
begin
   FIsSerialRequired := AValue; 
end;

function TStockUpdate.GetProductId: integer);
begin
   result := FProductId; 
end;

function TStockUpdate.GetBatchNumber: string);
begin
   result := FBatchNumber; 
end;

function TStockUpdate.GetExpiryDate: string);
begin
   result := FExpiryDate; 
end;

function TStockUpdate.GetSerialNumber: string);
begin
   result := FSerialNumber; 
end;

function TStockUpdate.GetAdjustment: integer);
begin
   result := FAdjustment; 
end;

function TStockUpdate.GetAdjustmentReason: integer);
begin
   result := FAdjustmentReason; 
end;

function TStockUpdate.GetAdjustmentNote: string);
begin
   result := FAdjustmentNote; 
end;

function TStockUpdate.GetDirection: boolean);
begin
   result := FDirection; 
end;

function TStockUpdate.GetOverdraw: boolean);
begin
   result := FOverdraw; 
end;

function TStockUpdate.GetClinicCode: string);
begin
   result := FClinicCode; 
end;

function TStockUpdate.GetIsBatchRequired: boolean);
begin
   result := FIsBatchRequired; 
end;

function TStockUpdate.GetIsExpiryDateRequired: boolean);
begin
   result := FIsExpiryDateRequired; 
end;

function TStockUpdate.GetIsSerialRequired: boolean);
begin
   result := FIsSerialRequired; 
end;

 { StockUpdateFromImmunisation }

procedure TStockUpdateFromImmunisation.SetPatientId(const AValue: integer);
begin
   FPatientId := AValue; 
end;

procedure TStockUpdateFromImmunisation.SetImmunisationId(const AValue: integer);
begin
   FImmunisationId := AValue; 
end;

procedure TStockUpdateFromImmunisation.SetAirCode(const AValue: string);
begin
   FAirCode := AValue; 
end;

procedure TStockUpdateFromImmunisation.SetCancelledBatchNumberInClinical(const AValue: string);
begin
   FCancelledBatchNumberInClinical := AValue; 
end;

procedure TStockUpdateFromImmunisation.SetStockUpdate(const AValue: TStockUpdate);
begin
   if assigned(FStockUpdate) and (AValue<>FStockUpdate) then 
     freeAndNil(FStockUpdate);
   FStockUpdate := AValue; 
end;

function TStockUpdateFromImmunisation.GetPatientId: integer);
begin
   result := FPatientId; 
end;

function TStockUpdateFromImmunisation.GetImmunisationId: integer);
begin
   result := FImmunisationId; 
end;

function TStockUpdateFromImmunisation.GetAirCode: string);
begin
   result := FAirCode; 
end;

function TStockUpdateFromImmunisation.GetCancelledBatchNumberInClinical: string);
begin
   result := FCancelledBatchNumberInClinical; 
end;

function TStockUpdateFromImmunisation.GetStockUpdate : TStockUpdate);
begin
   if not assigned(FStockUpdate) then 
      FStockUpdate := TStockUpdate.Create;
   result := FStockUpdate;
end;

 { UnreadSMSMessageParams }

procedure TUnreadSMSMessageParams.SetLastReadMailId(const AValue: integer);
begin
   FLastReadMailId := AValue; 
end;

procedure TUnreadSMSMessageParams.SetLastCheckMailId(const AValue: integer);
begin
   FLastCheckMailId := AValue; 
end;

function TUnreadSMSMessageParams.GetLastReadMailId: integer);
begin
   result := FLastReadMailId; 
end;

function TUnreadSMSMessageParams.GetLastCheckMailId: integer);
begin
   result := FLastCheckMailId; 
end;

 { ZedmedClientConfiguration }

procedure TZedmedClientConfiguration.SetSuperplusPath(const AValue: string);
begin
   FSuperplusPath := AValue; 
end;

procedure TZedmedClientConfiguration.SetClinplusPath(const AValue: string);
begin
   FClinplusPath := AValue; 
end;

procedure TZedmedClientConfiguration.SetDatabaseUsername(const AValue: string);
begin
   FDatabaseUsername := AValue; 
end;

procedure TZedmedClientConfiguration.SetDatabasePassword(const AValue: string);
begin
   FDatabasePassword := AValue; 
end;

procedure TZedmedClientConfiguration.SetCrsAppServerUrl(const AValue: string);
begin
   FCrsAppServerUrl := AValue; 
end;

procedure TZedmedClientConfiguration.SetHiServiceUrl(const AValue: string);
begin
   FHiServiceUrl := AValue; 
end;

procedure TZedmedClientConfiguration.SetClinicalServiceUrl(const AValue: string);
begin
   FClinicalServiceUrl := AValue; 
end;

function TZedmedClientConfiguration.GetSuperplusPath: string);
begin
   result := FSuperplusPath; 
end;

function TZedmedClientConfiguration.GetClinplusPath: string);
begin
   result := FClinplusPath; 
end;

function TZedmedClientConfiguration.GetDatabaseUsername: string);
begin
   result := FDatabaseUsername; 
end;

function TZedmedClientConfiguration.GetDatabasePassword: string);
begin
   result := FDatabasePassword; 
end;

function TZedmedClientConfiguration.GetCrsAppServerUrl: string);
begin
   result := FCrsAppServerUrl; 
end;

function TZedmedClientConfiguration.GetHiServiceUrl: string);
begin
   result := FHiServiceUrl; 
end;

function TZedmedClientConfiguration.GetClinicalServiceUrl: string);
begin
   result := FClinicalServiceUrl; 
end;

 { ZedmedPatient }

procedure TZedmedPatient.SetId(const AValue: integer);
begin
   FId := AValue; 
end;

procedure TZedmedPatient.SetExternalID(const AValue: string);
begin
   FExternalID := AValue; 
end;

procedure TZedmedPatient.SetIhi(const AValue: string);
begin
   FIhi := AValue; 
end;

procedure TZedmedPatient.SetIhiNumberStatus(const AValue: integer);
begin
   FIhiNumberStatus := AValue; 
end;

procedure TZedmedPatient.SetIhiRecordStatus(const AValue: integer);
begin
   FIhiRecordStatus := AValue; 
end;

procedure TZedmedPatient.SetMedicareNumber(const AValue: string);
begin
   FMedicareNumber := AValue; 
end;

procedure TZedmedPatient.SetMedicareNumberExpiry(const AValue: string);
begin
   FMedicareNumberExpiry := AValue; 
end;

procedure TZedmedPatient.SetHealthCareCard(const AValue: string);
begin
   FHealthCareCard := AValue; 
end;

procedure TZedmedPatient.SetHealthCareCardExpiry(const AValue: string);
begin
   FHealthCareCardExpiry := AValue; 
end;

procedure TZedmedPatient.SetDvaNumber(const AValue: string);
begin
   FDvaNumber := AValue; 
end;

procedure TZedmedPatient.SetDvaNumberExpiry(const AValue: string);
begin
   FDvaNumberExpiry := AValue; 
end;

procedure TZedmedPatient.SetAtsiStatus(const AValue: string);
begin
   FAtsiStatus := AValue; 
end;

procedure TZedmedPatient.SetFamilyName(const AValue: string);
begin
   FFamilyName := AValue; 
end;

procedure TZedmedPatient.SetGivenName(const AValue: string);
begin
   FGivenName := AValue; 
end;

procedure TZedmedPatient.SetInitial(const AValue: string);
begin
   FInitial := AValue; 
end;

procedure TZedmedPatient.SetPopularName(const AValue: string);
begin
   FPopularName := AValue; 
end;

procedure TZedmedPatient.SetTitle(const AValue: string);
begin
   FTitle := AValue; 
end;

procedure TZedmedPatient.SetGender(const AValue: string);
begin
   FGender := AValue; 
end;

procedure TZedmedPatient.SetBirthDate(const AValue: string);
begin
   FBirthDate := AValue; 
end;

procedure TZedmedPatient.SetAge(const AValue: integer);
begin
   FAge := AValue; 
end;

procedure TZedmedPatient.SetEmail(const AValue: string);
begin
   FEmail := AValue; 
end;

procedure TZedmedPatient.SetHomePhone(const AValue: string);
begin
   FHomePhone := AValue; 
end;

procedure TZedmedPatient.SetWorkPhone(const AValue: string);
begin
   FWorkPhone := AValue; 
end;

procedure TZedmedPatient.SetMobilePhone(const AValue: string);
begin
   FMobilePhone := AValue; 
end;

procedure TZedmedPatient.SetPreferredContact(const AValue: string);
begin
   FPreferredContact := AValue; 
end;

procedure TZedmedPatient.SetHomeAddressLine1(const AValue: string);
begin
   FHomeAddressLine1 := AValue; 
end;

procedure TZedmedPatient.SetHomeAddressLine2(const AValue: string);
begin
   FHomeAddressLine2 := AValue; 
end;

procedure TZedmedPatient.SetHomeSuburb(const AValue: string);
begin
   FHomeSuburb := AValue; 
end;

procedure TZedmedPatient.SetHomePostcode(const AValue: string);
begin
   FHomePostcode := AValue; 
end;

procedure TZedmedPatient.SetMailingAddressLine1(const AValue: string);
begin
   FMailingAddressLine1 := AValue; 
end;

procedure TZedmedPatient.SetMailingAddressLine2(const AValue: string);
begin
   FMailingAddressLine2 := AValue; 
end;

procedure TZedmedPatient.SetMailingSuburb(const AValue: string);
begin
   FMailingSuburb := AValue; 
end;

procedure TZedmedPatient.SetMailingPostcode(const AValue: string);
begin
   FMailingPostcode := AValue; 
end;

procedure TZedmedPatient.SetStatusCode(const AValue: string);
begin
   FStatusCode := AValue; 
end;

procedure TZedmedPatient.SetEmergencyContactName(const AValue: string);
begin
   FEmergencyContactName := AValue; 
end;

procedure TZedmedPatient.SetEmergencyContactHomePhone(const AValue: string);
begin
   FEmergencyContactHomePhone := AValue; 
end;

procedure TZedmedPatient.SetEmergencyContactWorkPhone(const AValue: string);
begin
   FEmergencyContactWorkPhone := AValue; 
end;

procedure TZedmedPatient.SetEmergencyContactMobilePhone(const AValue: string);
begin
   FEmergencyContactMobilePhone := AValue; 
end;

procedure TZedmedPatient.SetNextOfKin(const AValue: string);
begin
   FNextOfKin := AValue; 
end;

procedure TZedmedPatient.SetNextOfKinRelationship(const AValue: string);
begin
   FNextOfKinRelationship := AValue; 
end;

procedure TZedmedPatient.SetNextOfKinHomePhone(const AValue: string);
begin
   FNextOfKinHomePhone := AValue; 
end;

procedure TZedmedPatient.SetNextOfKinWorkPhone(const AValue: string);
begin
   FNextOfKinWorkPhone := AValue; 
end;

procedure TZedmedPatient.SetNextOfKinMobilePhone(const AValue: string);
begin
   FNextOfKinMobilePhone := AValue; 
end;

procedure TZedmedPatient.SetSafetyNetNo(const AValue: string);
begin
   FSafetyNetNo := AValue; 
end;

procedure TZedmedPatient.SetPensionStatus(const AValue: integer);
begin
   FPensionStatus := AValue; 
end;

procedure TZedmedPatient.SetErxNotifyConsent(const AValue: string);
begin
   FErxNotifyConsent := AValue; 
end;

procedure TZedmedPatient.SetPbsCoPaymentRelief(const AValue: string);
begin
   FPbsCoPaymentRelief := AValue; 
end;

procedure TZedmedPatient.SetDvaCardColour(const AValue: string);
begin
   FDvaCardColour := AValue; 
end;

procedure TZedmedPatient.SetNpdrPrerequisitesCheck(const AValue: boolean);
begin
   FNpdrPrerequisitesCheck := AValue; 
end;

procedure TZedmedPatient.SetIsPatientIhiValid(const AValue: boolean);
begin
   FIsPatientIhiValid := AValue; 
end;

procedure TZedmedPatient.SetDoNotSendSMS(const AValue: boolean);
begin
   FDoNotSendSMS := AValue; 
end;

procedure TZedmedPatient.SetJoinedOnline(const AValue: string);
begin
   FJoinedOnline := AValue; 
end;

function TZedmedPatient.GetId: integer);
begin
   result := FId; 
end;

function TZedmedPatient.GetExternalID: string);
begin
   result := FExternalID; 
end;

function TZedmedPatient.GetIhi: string);
begin
   result := FIhi; 
end;

function TZedmedPatient.GetIhiNumberStatus: integer);
begin
   result := FIhiNumberStatus; 
end;

function TZedmedPatient.GetIhiRecordStatus: integer);
begin
   result := FIhiRecordStatus; 
end;

function TZedmedPatient.GetMedicareNumber: string);
begin
   result := FMedicareNumber; 
end;

function TZedmedPatient.GetMedicareNumberExpiry: string);
begin
   result := FMedicareNumberExpiry; 
end;

function TZedmedPatient.GetHealthCareCard: string);
begin
   result := FHealthCareCard; 
end;

function TZedmedPatient.GetHealthCareCardExpiry: string);
begin
   result := FHealthCareCardExpiry; 
end;

function TZedmedPatient.GetDvaNumber: string);
begin
   result := FDvaNumber; 
end;

function TZedmedPatient.GetDvaNumberExpiry: string);
begin
   result := FDvaNumberExpiry; 
end;

function TZedmedPatient.GetAtsiStatus: string);
begin
   result := FAtsiStatus; 
end;

function TZedmedPatient.GetFamilyName: string);
begin
   result := FFamilyName; 
end;

function TZedmedPatient.GetGivenName: string);
begin
   result := FGivenName; 
end;

function TZedmedPatient.GetInitial: string);
begin
   result := FInitial; 
end;

function TZedmedPatient.GetPopularName: string);
begin
   result := FPopularName; 
end;

function TZedmedPatient.GetTitle: string);
begin
   result := FTitle; 
end;

function TZedmedPatient.GetGender: string);
begin
   result := FGender; 
end;

function TZedmedPatient.GetBirthDate: string);
begin
   result := FBirthDate; 
end;

function TZedmedPatient.GetAge: integer);
begin
   result := FAge; 
end;

function TZedmedPatient.GetEmail: string);
begin
   result := FEmail; 
end;

function TZedmedPatient.GetHomePhone: string);
begin
   result := FHomePhone; 
end;

function TZedmedPatient.GetWorkPhone: string);
begin
   result := FWorkPhone; 
end;

function TZedmedPatient.GetMobilePhone: string);
begin
   result := FMobilePhone; 
end;

function TZedmedPatient.GetPreferredContact: string);
begin
   result := FPreferredContact; 
end;

function TZedmedPatient.GetHomeAddressLine1: string);
begin
   result := FHomeAddressLine1; 
end;

function TZedmedPatient.GetHomeAddressLine2: string);
begin
   result := FHomeAddressLine2; 
end;

function TZedmedPatient.GetHomeSuburb: string);
begin
   result := FHomeSuburb; 
end;

function TZedmedPatient.GetHomePostcode: string);
begin
   result := FHomePostcode; 
end;

function TZedmedPatient.GetMailingAddressLine1: string);
begin
   result := FMailingAddressLine1; 
end;

function TZedmedPatient.GetMailingAddressLine2: string);
begin
   result := FMailingAddressLine2; 
end;

function TZedmedPatient.GetMailingSuburb: string);
begin
   result := FMailingSuburb; 
end;

function TZedmedPatient.GetMailingPostcode: string);
begin
   result := FMailingPostcode; 
end;

function TZedmedPatient.GetStatusCode: string);
begin
   result := FStatusCode; 
end;

function TZedmedPatient.GetEmergencyContactName: string);
begin
   result := FEmergencyContactName; 
end;

function TZedmedPatient.GetEmergencyContactHomePhone: string);
begin
   result := FEmergencyContactHomePhone; 
end;

function TZedmedPatient.GetEmergencyContactWorkPhone: string);
begin
   result := FEmergencyContactWorkPhone; 
end;

function TZedmedPatient.GetEmergencyContactMobilePhone: string);
begin
   result := FEmergencyContactMobilePhone; 
end;

function TZedmedPatient.GetNextOfKin: string);
begin
   result := FNextOfKin; 
end;

function TZedmedPatient.GetNextOfKinRelationship: string);
begin
   result := FNextOfKinRelationship; 
end;

function TZedmedPatient.GetNextOfKinHomePhone: string);
begin
   result := FNextOfKinHomePhone; 
end;

function TZedmedPatient.GetNextOfKinWorkPhone: string);
begin
   result := FNextOfKinWorkPhone; 
end;

function TZedmedPatient.GetNextOfKinMobilePhone: string);
begin
   result := FNextOfKinMobilePhone; 
end;

function TZedmedPatient.GetSafetyNetNo: string);
begin
   result := FSafetyNetNo; 
end;

function TZedmedPatient.GetPensionStatus: integer);
begin
   result := FPensionStatus; 
end;

function TZedmedPatient.GetErxNotifyConsent: string);
begin
   result := FErxNotifyConsent; 
end;

function TZedmedPatient.GetPbsCoPaymentRelief: string);
begin
   result := FPbsCoPaymentRelief; 
end;

function TZedmedPatient.GetDvaCardColour: string);
begin
   result := FDvaCardColour; 
end;

function TZedmedPatient.GetNpdrPrerequisitesCheck: boolean);
begin
   result := FNpdrPrerequisitesCheck; 
end;

function TZedmedPatient.GetIsPatientIhiValid: boolean);
begin
   result := FIsPatientIhiValid; 
end;

function TZedmedPatient.GetDoNotSendSMS: boolean);
begin
   result := FDoNotSendSMS; 
end;

function TZedmedPatient.GetJoinedOnline: string);
begin
   result := FJoinedOnline; 
end;

 { $parent }

 { $key }

#IF initialization

#IF finalization

end.