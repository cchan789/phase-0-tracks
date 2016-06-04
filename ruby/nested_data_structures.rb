#Nested Data Structure


hospital = {
  surgery_dept: {
      dept_head:  "name",
      beds_info: {   
          total_beds: 420 ,
          beds_available: 38
      },
      
      major_diseases:  {:Appendicitis => "Appendicectomy",
                        :Cholecystitis => "Cholecystectomy",    
                        :Kidney_stone => "Nephrolithiasis",
                       :Colon_cancer => "Total_Colectomy",
                        :Peritonitis => "Laparotomy" },
      
      common_medicines: ['Ceftin',
                        'Gentamycin',
                        'Metronidazole',]
  },
  
  medicine_dept: {
      dept_head:  "name",
      beds_info:  {    
          total_beds:672,
          beds_available:86
      },
      major_diseases:  ["Pneumonia",
                        "Myocardia_infarction",
                        "Coronary_heart_disease",
                        "Strokes",
                        "Lung_cancers"],
     
      common_medicines:['Augmentin',
                        'Gentamycin',
                        'Cipro']
  },
  ob_gyn_dept: {
      dept_head:  "name",
      beds_info:  {    
          total_beds:328,
          beds_available:65
      },
      major_diseases:  ["Pelvic_inflammatory_Diseases",
                        "Normal_Child_Birth",
                        "Ceasarian_Section_delivery",
                        "Total_Abdominal_Hysterectomy",
                        "Laparoscopic_Sterilization"],
      
      common_medicines:['Flagyl',
                       'Doxycycline',
                        'Monistat']
  },
  emergency_dept:{
      dept_head:  "name",
      beds_info:   {   
          total_beds:42,
          beds_available:6

      },
      major_diseases:  ["Motor_vehicle_Accidents",
                        "Acute_Abdominal_Pain",
                        "Household_Trauma",
                        "Children_Injuries",
                        "Food_poisoning",
                        "Depression_Suicides",
                        "Febrile_Illnesses"],
      
      common_medicines:['Amoxil',
                        'Penicillin',
                        'Robitussin',]
  }
     
  
}

puts hospital[:surgery_dept][:major_diseases][:Appendicitis]

puts hospital[:medicine_dept][:common_medicines][1]

puts hospital[:ob_gyn_dept][:beds_info][:beds_available]

puts hospital[:emergency_dept][:beds_info][:beds_available]