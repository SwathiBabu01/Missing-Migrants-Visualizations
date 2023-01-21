#Milestone 2 - DATA PIRATES -Group 3 - Missing Migrants Dataset
library(ggplot2)
library(dplyr)
library(base)
#Importing the datatset
mig = read.csv("/Users/swathib/Desktop/Spring Term 2021-22/DSC 465 Data Visualization/Final Project/Final Project extra files/MissingMigrantsProject.csv")

#changing column name
colnames(mig)
names(mig)[names(mig) == "affected_nationality"] = "nationality"


#Cleaning 
#Cause of death
mig$cause_of_death[mig$cause_of_death=='AH1N1 influenza virus, while stuck at border'] = 'Virus'
mig$cause_of_death[mig$cause_of_death=='Asphyxiation (Silica sand inhalation)']= 'Asphyxiation'
mig$cause_of_death[mig$cause_of_death=='Asphyxiation and crushing'] = 'Asphyxiation + Others'
mig$cause_of_death[mig$cause_of_death=='Assaulted by smugglers']= 'Assualted'
mig$cause_of_death[mig$cause_of_death=='Attacked by hippopotamus'] = 'Attacked by Animal'
mig$cause_of_death[mig$cause_of_death=='Beat-up and killed']= 'Assualted'
mig$cause_of_death[mig$cause_of_death=='Beat-up and thrown into river']= 'Assualted'
mig$cause_of_death[mig$cause_of_death=='Beaten to death on train']= 'Assualted'
mig$cause_of_death[mig$cause_of_death=='Beating/shot by traffickers']= 'Assualted'
mig$cause_of_death[mig$cause_of_death=='Blunt force head trauma']= 'Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Blunt force injuries']= 'Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Boat fire']= 'Burned to death'
mig$cause_of_death[mig$cause_of_death=='Bronchial aspiration']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Bronchopneumonia']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Burned to death hiding in truck']= 'Burned to death'
mig$cause_of_death[mig$cause_of_death=='Burns and Suffocation']= 'Burned to death'
mig$cause_of_death[mig$cause_of_death=='Burns from cooking gas explosion in connection house in Libya']= 'Burned to death'
mig$cause_of_death[mig$cause_of_death=='Car accident']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Cervix cancer']='Cancer'
mig$cause_of_death[mig$cause_of_death=='Clubbed/beaten to death']= 'Assualted'
mig$cause_of_death[mig$cause_of_death=='Criminal Violence']= 'Criminal Violence'
mig$cause_of_death[mig$cause_of_death=='Crushed']='Crushed'
mig$cause_of_death[mig$cause_of_death=='Crushed / drowning']= 'Crushed'
mig$cause_of_death[mig$cause_of_death=='Crushed by bus on ferry']= 'Crushed'
mig$cause_of_death[mig$cause_of_death=='Crushed by pallets']= 'Crushed'
mig$cause_of_death[mig$cause_of_death=='Crushed to death']= 'Crushed'
mig$cause_of_death[mig$cause_of_death=='Cut in half by train']='Accident'
mig$cause_of_death[mig$cause_of_death=='Dehydration']= 'Dehydration'
mig$cause_of_death[mig$cause_of_death=='Dehydration Harsh_weather_lack_of_adequate_shelter']='Dehydration + Others'
mig$cause_of_death[mig$cause_of_death=='Dehydration Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse Sexual_abuse']='Dehydration + Others'
mig$cause_of_death[mig$cause_of_death=='Dehydration Suffocation Vehicle_Accident']='Dehydration + Others'
mig$cause_of_death[mig$cause_of_death=='Dehydration Vehicle_Accident Excessive_physical_abuse']= 'Dehydration + Others'
mig$cause_of_death[mig$cause_of_death=='Dehydration and exposure to the elements']='Dehydration + Others'
mig$cause_of_death[mig$cause_of_death=='Dehydration, Asphyxiation']= 'Dehydration + Others'
mig$cause_of_death[mig$cause_of_death=='Dehydration, Presumed drowning']= 'Dehydration + Others'
mig$cause_of_death[mig$cause_of_death=='Dehydration, Starvation']= 'Dehydration + Others'
mig$cause_of_death[mig$cause_of_death=='Died of unknown cause in hospital shortly after rescue']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Digestive bleeding']= 'Digestive Bleeding'
mig$cause_of_death[mig$cause_of_death=='Drowning after being thrown overboard by other passengers']= 'Drowning'
mig$cause_of_death[mig$cause_of_death=='Drowning due to forced disembarcation']= 'Drowning'
mig$cause_of_death[mig$cause_of_death=='Drowning or suffocation in hull']= 'Drowning'
mig$cause_of_death[mig$cause_of_death=='Drowning, Asphyxiation']='Drowning'
mig$cause_of_death[mig$cause_of_death=='Drowning, Other']='Drowning'
mig$cause_of_death[mig$cause_of_death=='Drowning, Trampling']='Drowning + Others'
mig$cause_of_death[mig$cause_of_death=='Drowning. Boat collided with ferry']='Drowning'
mig$cause_of_death[mig$cause_of_death=='Electrocuted on train']='Electrocution'
mig$cause_of_death[mig$cause_of_death=='Electrocution on railway']= 'Electrocution'
mig$cause_of_death[mig$cause_of_death=='Excessive_physical_abuse']= 'Excessive_physical_abuse'
mig$cause_of_death[mig$cause_of_death=='Excessive_physical_abuse Sexual_abuse']='Excessive_physical_abuse + Others'
mig$cause_of_death[mig$cause_of_death=='Excessive_physical_abuse Shot_or_Stabbed']='Excessive_physical_abuse + Others'
mig$cause_of_death[mig$cause_of_death=='Exposure']='Exposure'
mig$cause_of_death[mig$cause_of_death=='Exposure, Hyperthermia']='Exposure + Others'
mig$cause_of_death[mig$cause_of_death=='Exposure, Hypothermia']= 'Exposure + Others'
mig$cause_of_death[mig$cause_of_death=='Exposure, hypothermia']= 'Exposure + Others'
mig$cause_of_death[mig$cause_of_death=='Exposure. Died upon entry to refugee camp.']= 'Exposure'
mig$cause_of_death[mig$cause_of_death=='Fall from cliff']= 'Fall'
mig$cause_of_death[mig$cause_of_death=='Fell from boat']='Fall'
mig$cause_of_death[mig$cause_of_death=='Fell from train']= 'Fall'
mig$cause_of_death[mig$cause_of_death=='Fell from truck']= 'Fall'
mig$cause_of_death[mig$cause_of_death=='Fell from wall']= 'Fall'
mig$cause_of_death[mig$cause_of_death=='Found hanged']= 'Hanged'
mig$cause_of_death[mig$cause_of_death=='Fuel Inhalation']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Fuel burns']= 'Burned to death'
mig$cause_of_death[mig$cause_of_death=='Glycemic crisis (Lack of Insuline Treatment)']= 'Glycaemic crisis'
mig$cause_of_death[mig$cause_of_death=='Gylcemic crisis (Diabetic, medicine thrown overboard)']= 'Glycaemic crisis'
mig$cause_of_death[mig$cause_of_death=='Harsh conditions']= 'Harsh Conditions'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter Excessive_physical_abuse']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter Excessive_physical_abuse Sexual_abuse']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter Other']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter Suffocation']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse Sexual_abuse']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter Suffocation Vehicle_Accident']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter Vehicle_Accident']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Harsh_weather_lack_of_adequate_shelter, Suffocation, Excessive_physical_abuse, Sexual_abuse']= 'Harsh Conditions + Others'
mig$cause_of_death[mig$cause_of_death=='Head injury']= 'Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Head injury from fall']='Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Head trauma (hit by boat propeller)']= 'Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Heart Attack']= 'Heart Attack'
mig$cause_of_death[mig$cause_of_death=='Heart attack']='Heart Attack'
mig$cause_of_death[mig$cause_of_death=='Hi by truck']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Hit by Vehicle']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Hit by car']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Hit by train']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Hit by truck']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Hit by vehicle']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Homicide, likely by asphyxiation']= 'Asphyxiation'
mig$cause_of_death[mig$cause_of_death=='Hunger, fatigue']= 'Starvation'
mig$cause_of_death[mig$cause_of_death=='Hyperthermia']= 'Hyperthermia'
mig$cause_of_death[mig$cause_of_death=='Hyperthermia, Abandoned by smugglers in the desert']= 'Hyperthermia'
mig$cause_of_death[mig$cause_of_death=='Hyperthermia, Dehydration']= 'Hyperthermia + Others'
mig$cause_of_death[mig$cause_of_death=='Hyperthermia, starvation']= 'Hyperthermia + Others'
mig$cause_of_death[mig$cause_of_death=='Hypothermia']= 'Hypothermia'
mig$cause_of_death[mig$cause_of_death=='Hypothermia, Exhaustion']= 'Hypothermia + Others'
mig$cause_of_death[mig$cause_of_death=='Hypothermia, Malnutrition']= 'Hypothermia + Others'
mig$cause_of_death[mig$cause_of_death=='Inhalation of toxic fumes from boat engine']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Injured from a fight']='Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Injuries caused by boat motor']= 'Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Killed']= 'Murdered'
mig$cause_of_death[mig$cause_of_death=='Landmine']= 'Landmine'
mig$cause_of_death[mig$cause_of_death=='Likely drowning']= 'Drowning'
mig$cause_of_death[mig$cause_of_death=='Likely suffocation (found dead in a truck)']= 'Suffocation'
mig$cause_of_death[mig$cause_of_death=='Lung infection']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Meningitis']= 'Meningitis'
mig$cause_of_death[mig$cause_of_death=='Mixed']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Mixed - mostly drownings or shootings']= 'Drowning + Others'
mig$cause_of_death[mig$cause_of_death=='Mixed. Migrants were stranded on boats']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Mostly starvation, dehydration, and beatings by crew members']='Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Multiple blunt force injuries']= 'Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Murdered']= 'Murdered'
mig$cause_of_death[mig$cause_of_death=='Murdered (bandits)']='Murdered'
mig$cause_of_death[mig$cause_of_death=='Murdered (head wound)']= 'Murdered'
mig$cause_of_death[mig$cause_of_death=='Murdered (militia)']= 'Murdered'
mig$cause_of_death[mig$cause_of_death=='Murdered by gang members']= 'Murdered'
mig$cause_of_death[mig$cause_of_death=='On board violence']= 'Criminal Violence'
mig$cause_of_death[mig$cause_of_death=='Other']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Other Shot_or_Stabbed']= 'Shot'
mig$cause_of_death[mig$cause_of_death=='Pending']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Pima County (see spreadsheet for exact location)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Plane Stowaway']= 'Plane Stowaway'
mig$cause_of_death[mig$cause_of_death=='Plane stowaway']= 'Plane Stowaway'
mig$cause_of_death[mig$cause_of_death=='Poison']= 'Poison'
mig$cause_of_death[mig$cause_of_death=='Presumed Dehydration']= 'Dehydration'
mig$cause_of_death[mig$cause_of_death=='Presumed Drowning']= 'Drowning'
mig$cause_of_death[mig$cause_of_death=='Presumed asphyxiation']= 'Asphyxiation'
mig$cause_of_death[mig$cause_of_death=='Presumed dehydration']= 'Dehydration'
mig$cause_of_death[mig$cause_of_death=='Presumed drowning']='Drowning'
mig$cause_of_death[mig$cause_of_death=='Presumed exposure']= 'Exposure'
mig$cause_of_death[mig$cause_of_death=='Presumed hyperthermia']= 'Hyperthermia'
mig$cause_of_death[mig$cause_of_death=='Presumed hypothermia']= 'Hypothermia'
mig$cause_of_death[mig$cause_of_death=='Presumed shot']= 'Shot'
mig$cause_of_death[mig$cause_of_death=='Presumed violence']= 'Criminal Violence'
mig$cause_of_death[mig$cause_of_death=='Probable drowning']= 'Drowning'
mig$cause_of_death[mig$cause_of_death=='Pulmonary complications']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Pulmonary edema']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Pulmonary edema, Kidney failure']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Raped and Murdured']= 'Raped & Murdered'
mig$cause_of_death[mig$cause_of_death=='Raped and murdered']= 'Raped & Murdered'
mig$cause_of_death[mig$cause_of_death=='Renal insufficiency']= 'Renal Insufficiency'
mig$cause_of_death[mig$cause_of_death=='Renal insufficiency and pulmonary edema']= 'Renal Insufficiency'
mig$cause_of_death[mig$cause_of_death=='Respiratory illness']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Respiratory problem']= 'Respiratory Complication'
mig$cause_of_death[mig$cause_of_death=='Road accident']= 'Accident'
mig$cause_of_death[mig$cause_of_death=='Severe exhaustion and dehydration']= 'Exhaustion'
mig$cause_of_death[mig$cause_of_death=='Sexual_abuse']= 'Sexual Abuse'
mig$cause_of_death[mig$cause_of_death=='Shot']= 'Shot'
mig$cause_of_death[mig$cause_of_death=='Shot by Apache helicopter']= 'Shot'
mig$cause_of_death[mig$cause_of_death=='Shot_or_Stabbed']= 'Shot'
mig$cause_of_death[mig$cause_of_death=='Sickness']='Sickness'
mig$cause_of_death[mig$cause_of_death=='Sickness, Harsh conditions']= 'Sickness + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines']= 'Sickness & No Medicines'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Dehydration']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Excessive_physical_abuse Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Harsh_weather_lack_of_adequate_shelter']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Harsh_weather_lack_of_adequate_shelter Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Harsh_weather_lack_of_adequate_shelter Excessive_physical_abuse Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Shot_or_Stabbed']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Suffocation']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration Vehicle_Accident']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Excessive_physical_abuse Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Excessive_physical_abuse Sexual_abuse Shot_or_Stabbed']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Excessive_physical_abuse Shot_or_Stabbed']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Harsh_weather_lack_of_adequate_shelter']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Harsh_weather_lack_of_adequate_shelter Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Harsh_weather_lack_of_adequate_shelter Other']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Harsh_weather_lack_of_adequate_shelter Suffocation']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Harsh_weather_lack_of_adequate_shelter Suffocation Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Harsh_weather_lack_of_adequate_shelter, Vehicle_Accident']='Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Shot_or_Stabbed']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Dehydration']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Dehydration Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Starvation, Dehydration, Excessive_physical_abuse, Sexual_abuse']='Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Dehydration Harsh_weather_lack_of_adequate_shelter']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Dehydration Harsh_weather_lack_of_adequate_shelter Suffocation']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Dehydration Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Dehydration Harsh_weather_lack_of_adequate_shelter Suffocation Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Dehydration Harsh_weather_lack_of_adequate_shelter Vehicle_Accident Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Dehydration Suffocation']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Excessive_physical_abuse Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Excessive_physical_abuse Shot_or_Stabbed']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter Excessive_physical_abuse Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter Suffocation']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter Suffocation Vehicle_Accident Excessive_physical_abuse Sexual_abuse']='Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter Vehicle_Accident Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Starvation, Harsh_weather_lack_of_adequate_shelter, Vehicle_Accident, Excessive_physical_abuse']='Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Suffocation Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Suffocation Excessive_physical_abuse Shot_or_Stabbed']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Suffocation']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Suffocation Vehicle_Accident']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Vehicle_Accident']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Dehydration']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Dehydration, Harsh_weather_lack_of_adequate_shelter']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Harsh_weather_lack_of_adequate_shelter Vehicle_Accident']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Starvation']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Starvation, Dehydration Excessive_physical_abuse, Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Starvation, Excessive_physical_abuse, Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines, Starvation, Harsh_weather_lack_of_adequate_shelter, Excessive_physical_abuse, Sexual_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Sickness_and_lack_of_access_to_medicines Starvation Harsh_weather_lack_of_adequate_shelter Vehicle_Accident Excessive_physical_abuse']= 'Sickness & No Medicines + Others'
mig$cause_of_death[mig$cause_of_death=='Stabbed']= 'Stabbed'
mig$cause_of_death[mig$cause_of_death=='Starvation']= 'Starvation'
mig$cause_of_death[mig$cause_of_death=='Starvation, Dehydration']='Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Excessive_physical_abuse']='Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Excessive_physical_abuse Sexual_abuse Shot_or_Stabbed']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Excessive_physical_abuse Shot_or_Stabbed']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Harsh_weather_lack_of_adequate_shelter']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Harsh_weather_lack_of_adequate_shelter Excessive_physical_abuse']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Harsh_weather_lack_of_adequate_shelter Suffocation']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Other']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Suffocation Excessive_physical_abuse']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Suffocation Excessive_physical_abuse Sexual_abuse Shot_or_Stabbed']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration Vehicle_Accident']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Excessive_physical_abuse']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Excessive_physical_abuse Sexual_abuse']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Harsh_weather_lack_of_adequate_shelter']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Harsh_weather_lack_of_adequate_shelter Suffocation']= 'Starvation + Others' 
mig$cause_of_death[mig$cause_of_death=='Starvation Harsh_weather_lack_of_adequate_shelter Suffocation Excessive_physical_abuse']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Suffocation Excessive_physical_abuse']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Suffocation Excessive_physical_abuse Sexual_abuse']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Suffocation Shot_or_Stabbed']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation Dehydration']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation, Dehydration, Exhaustion']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation, Dehydration, Suffocation']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation, Suffocation']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Starvation, sickness']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Suffocation Excessive_physical_abuse']= 'Suffocation + Others'
mig$cause_of_death[mig$cause_of_death=='Suffocation Vehicle_Accident']= 'Suffocation + Others'
mig$cause_of_death[mig$cause_of_death=='Suffocation, Other']= 'Suffocation + Others'
mig$cause_of_death[mig$cause_of_death=='Suffocation, Trampled']= 'Suffocation + Others'
mig$cause_of_death[mig$cause_of_death=='Suicide']= 'Suicide'
mig$cause_of_death[mig$cause_of_death=='Tekeze River, near Himora, Ethiopia']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Tortured to death']= 'Criminal Violence'
mig$cause_of_death[mig$cause_of_death=='Toxic fumes/asphyxiation']= 'Asphyxiation'
mig$cause_of_death[mig$cause_of_death=='Train accident']= 'Accident'
mig$cause_of_death[mig$cause_of_death=='Truck crash (was clinging to bottom of truck)']= 'Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Unclear, possibly related to earlier beating by truck driver']= 'Blunt Force'
mig$cause_of_death[mig$cause_of_death=='Undernourished, dehydration']= 'Starvation + Others'
mig$cause_of_death[mig$cause_of_death=='Unknow (skeletal remains)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (Mummified remains)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (Skeletal remains)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (bodies found decomposed)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (bodies recovered from boat)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (bodies recovered on boat)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (body found in advanced state of decomposition)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (body found in desert)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (body recovered from boat)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (decomposed remains)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (found dead near train tracks)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (found dead on dinghy)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (found dead on top of train)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (found on motorway)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (mummified remains)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (postmortem decomposition)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (remains)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (skeletal and mummified remains)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (skeletal remains and mummified)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown (skeletal remains)']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown, Skeletal Remains']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unknown, plane stowaway']= 'Plane Stowaway'
mig$cause_of_death[mig$cause_of_death=='Unknown, torture involved']= 'Torture'
mig$cause_of_death[mig$cause_of_death=="Unspecified deaths on 'La Bestia' train"]='Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Unspecified location between North Africa and Italy. Body brought to Calabria.']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Van accident']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Various']='Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='Vehicle accident']='Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Vehicle incident']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Vehicle_Accident']= 'Vehicle Accident'
mig$cause_of_death[mig$cause_of_death=='Vehicle_Accident Other']= 'Vehicle Accident + Others'
mig$cause_of_death[mig$cause_of_death=='Vehicle_Accident Shot_or_Stabbed']= 'Vehicle Accident + Others'
mig$cause_of_death[mig$cause_of_death=='Violence']= 'Criminal Violence'
mig$cause_of_death[mig$cause_of_death=='Violence during riot']= 'Criminal Violence'
mig$cause_of_death[mig$cause_of_death=='Violent robbery']= 'Criminal Violence'
mig$cause_of_death[mig$cause_of_death=='heart attack']= 'Heart Attack'
mig$cause_of_death[mig$cause_of_death=='drowning']= 'Drowning'
mig$cause_of_death[mig$cause_of_death=='gang violence (body dismembered)']= 'Criminal Violence'
mig$cause_of_death[mig$cause_of_death=='mixed']= 'Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='unknown (corpses recovered from boats)']='Unknown Situation'
mig$cause_of_death[mig$cause_of_death=='shot']='Shot'
mig$cause_of_death[is.na(mig$cause_of_death)]='Unknown'
mig$cause_of_death[mig$cause_of_death=='']='Unknown'

#Region of origin
length(unique(mig$region_origin))
View(unique(mig$region_origin))
mig$region_origin[mig$region_origin=='']='Unknown'
mig$region_origin[mig$region_origin=='Horn of Africa (P)']= 'Horn of Africa'
mig$region_origin[mig$region_origin=='MENA']='Middle East/North Africa'


#Nationality
length(unique(mig$nationality))
View(unique(mig$nationality))
mig$nationality[mig$nationality=='']='Unknown Nationality'
mig$nationality[mig$nationality=='1 Honduran, 3 Mexican']='Honduras, Mexico'
mig$nationality[mig$nationality=='1 Nigerian, others unknown. Survivors all from Sub-Saharan Africa']='Nigeria'
mig$nationality[mig$nationality=='1 Venezuelan, 1 unknown']='Venezuela'
mig$nationality[mig$nationality=='13 Cuba, 1 Dominican Republic, 1 Colombia']='Cuba, Domnican Republic, Colombia'
mig$nationality[mig$nationality=='15 dead from Palestine. Missing are from Palestine, Syria, and Egypt']='Palestine'
mig$nationality[mig$nationality=='2 from Niger']='Niger'
mig$nationality[mig$nationality=='2 Senegal, 2 Guinea, 1 Ghana']='Senegal, Guinea, Ghana'
mig$nationality[mig$nationality=='20 Unknown, 1 Bangladesh, 1 Senegal']='Bangladesh, Senegal'
mig$nationality[mig$nationality=='Afghan']='Afghanistan'
mig$nationality[mig$nationality=='Afghanistan, Syrian Arab Republic']='Afghanistan, Syria'
mig$nationality[mig$nationality=='African']='Africa'
mig$nationality[mig$nationality=='Algerian']='Algeria'
mig$nationality[mig$nationality=='At least 1 from Mexico']='Mexico'
mig$nationality[mig$nationality=='at least 4 Syrian']='Syria'
mig$nationality[mig$nationality=='Bangladeshi, Rohingya']='Bangladesh, Myanmar'
mig$nationality[mig$nationality=='Brazil (12), Dominican Republic (5), Cuba (2)']='Brazil, Dominican Republic, Cuba'
mig$nationality[mig$nationality=='Brazilian']='Brazil'
mig$nationality[mig$nationality=='Cameroon (2) Gambia (1), Mauritius (1), Ivory Coast (2)']='Cameroon, Gambia, Mauritius, Ivory Coast'
mig$nationality[mig$nationality=='Cameroon, Senegal and Ivory Coast']='Cameroon, Senegal, Ivory Coast'
mig$nationality[mig$nationality=='Cameroonian']='Cameroon'
mig$nationality[mig$nationality=='China (ethnic Uighur)']='China'
mig$nationality[mig$nationality=='Comoran']='Comoros'
mig$nationality[mig$nationality=='Congo']='Democratic Republic of Congo'
mig$nationality[mig$nationality=='Costa rica']='Costa Rica'
mig$nationality[mig$nationality=='Cuba or Dominican Republic']='Cuba'
mig$nationality[mig$nationality=='Democratic Republic of the Congo']='Democratic Republic of Congo'
mig$nationality[mig$nationality=='Domican Republic']='Dominican Republic'
mig$nationality[mig$nationality=='Ecuadorian']='Ecuador'
mig$nationality[mig$nationality=='Ecuator']='Ecuador'
mig$nationality[mig$nationality=='Egypt (est.80), Ethiopia (est.150), Somalia (est.190), Sudan, Syria']='Egypt, Ethiopia, Somalia, Sudan, Syria'
mig$nationality[mig$nationality=='Egypt, Syrian Arab Republic']='Egypt, Syria'
mig$nationality[mig$nationality=='Egyptian, Eritrean, Sudanese, Syrian']='Egypt, Eritrea, Sudan, Syria'
mig$nationality[mig$nationality=='Eritrea (2), Syria (1)']='Eritrea, Syria'
mig$nationality[mig$nationality=='Eritrea or Somalia']='Eritrea'
mig$nationality[mig$nationality=='Eritrean']='Eritrea'
mig$nationality[mig$nationality=='Ethiopia and Somalia']='Ethiopia, Somalia'
mig$nationality[mig$nationality=='Ethiopian']='Ethiopia'
mig$nationality[mig$nationality=='Ethnic Rohingya']='Myanmar'
mig$nationality[mig$nationality=='Ethnic Yazidis (Iraq)']='Iraq'
mig$nationality[mig$nationality=='Gambia (2) Guinea  Bissau (1)']='Gambia, Guinea Bissau'
mig$nationality[mig$nationality=='Gambia, Nigeria and Senegal']='Gambia, Nigeria, Senegal'
mig$nationality[mig$nationality=='Guatemala and El Salvador']='Guatemala, El Salvador'
mig$nationality[mig$nationality=='Guatemalan']='Guatemala'
mig$nationality[mig$nationality=='Guinea Conakry']='Guinea'
mig$nationality[mig$nationality=='Guinean']='Guinea'
mig$nationality[mig$nationality=='Haitian']='Haiti'
mig$nationality[mig$nationality=='Honduran']='Honduras'
mig$nationality[mig$nationality=='Honduras and Guatemala']='Honduras, Guatemala'
mig$nationality[mig$nationality=='Honduras or El Salvador']='Honduras'
mig$nationality[mig$nationality=='Iran and Iraq']='Iran, Iraq'
mig$nationality[mig$nationality=='Iraq, Algeria and Syria (initial reports)']='Iraq, Algeria, Syria'
mig$nationality[mig$nationality=='Iraqi']='Iraq'
mig$nationality[mig$nationality=='Iraqui']='Iraq'
mig$nationality[mig$nationality=='Ivory Coast (1) Unknown (16)']='Ivory Coast'
mig$nationality[mig$nationality=='Ivory Coast (15), Mali (7), Senegal (5), Guinea (1), Mauritania (1)']='Ivory Coast, Mali, Senegal, Guinea, Mauritania'
mig$nationality[mig$nationality=='Ivory Coast and Guinea Conakry']='Ivory Coast, Guinea'
mig$nationality[mig$nationality=='Lebanese']='Lebanon'
mig$nationality[mig$nationality=='Likely Comorian']='Comoros'
mig$nationality[mig$nationality=='likely Comoros']='Comoros'
mig$nationality[mig$nationality=='Likely Eritrea']='Eritrea'
mig$nationality[mig$nationality=='Likely Rohingya']='Myanmar'
mig$nationality[mig$nationality=='Mahgreb']='Maghreb'
mig$nationality[mig$nationality=='Malagasy']='Madagascar'
mig$nationality[mig$nationality=='Malawian']='Malawi'
mig$nationality[mig$nationality=='Mexican']='Mexico'
mig$nationality[mig$nationality=='Mixed']='Mixed Nationality'
mig$nationality[mig$nationality=='Moroccan']='Morocco'
mig$nationality[mig$nationality=='Mostly Ethiopian. Others were Somalian and 2 Yemeni crew']='Ethiopia, Somalia, Yemen'
mig$nationality[mig$nationality=='mostly from Sudan, Bangladesh']='Sudan, Bangladesh'
mig$nationality[mig$nationality=='Mostly from Syria, possibly some from Iraq']='Syria, Iraq'
mig$nationality[mig$nationality=='Mozambican']='Mozambique'
mig$nationality[mig$nationality=='Myanmar (Rohingya)']='Myanmar'
mig$nationality[mig$nationality=='Niger (3), Mali(3), Senegal(3), Guinea(3), Ivory Coast(2), CAR(1), Liberia(1)']='Niger, Mali, Senegal, Guinea, Ivory Coast, Central African Republic, Liberia'
mig$nationality[mig$nationality=='Nigeria (2) Cameroon (2)']='Nigeria, Cameroon'
mig$nationality[mig$nationality=='Nigeria, others']='Nigeria'
mig$nationality[mig$nationality=='Nigerian']='Nigeria'
mig$nationality[mig$nationality=='Pakistani']='Pakistan'
mig$nationality[mig$nationality=='Peru (1), Unknown (1)']='Peru'
mig$nationality[mig$nationality=='Reported as \"mostly\" Senegal']='Senegal'
mig$nationality[mig$nationality=='Reported as unspecified national of Africa']='Africa'
mig$nationality[mig$nationality=='Reported as unspecified national of Central America']='Central America'
mig$nationality[mig$nationality=='Reported as unspecified national of Sub-Saharan Africa']='Africa'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Africa']='Africa'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Central America']='Central America'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Honduras']='Honduras'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Honduras and Guatemala']='Honduras, Guatemala'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Horn of Africa']='Africa'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Rohingya']='Myanmar'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Somalia, Sudan and Nigeria']='Somalia, Sudan, Nigeria'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Sub-Saharan Africa']='Africa'
mig$nationality[mig$nationality=='Reported as unspecified nationals of Syria, Afghanistan, Iraq, Iran']='Syria, Afghanistan, Iraq, Iran'
mig$nationality[mig$nationality=='Reported as unspecified nationals of the Horn of Africa']='Africa'
mig$nationality[mig$nationality=='Reported as unspecified nationals of West Africa']='Africa'
mig$nationality[mig$nationality=='Rohingya']='Myanmar'
mig$nationality[mig$nationality=='Salvadoran']='El Salvadoran'
mig$nationality[mig$nationality=='Senegal, Ivory Coast, Gambia, Guinea, Niger, Mali and Mauritania']='Senegal, Ivory Coast, Gambia, Guinea, Niger, Mali, Mauritania'
mig$nationality[mig$nationality=='Somalia (1) Eritrea (1)']='Somalia, Eritrea'
mig$nationality[mig$nationality=='Sub-Saharan Africa']='Africa'
mig$nationality[mig$nationality=='Sudan, Ethiopia, Eritrea']=''
mig$nationality[mig$nationality=='Sudanese']='Sudan'
mig$nationality[mig$nationality=='Survivors from Burkina Faso, Malia, Guinea, and the Ivory Coast']='Burkina Faso, Malia, Guinea, Ivory Coast'
mig$nationality[mig$nationality=='Survivors from Nigeria, Ghana, Niger']='Nigeria, Ghana, Niger'
mig$nationality[mig$nationality=='Survivors from Sub-Saharan Africa']='Africa'
mig$nationality[mig$nationality=='Survivors from Syria, Iraq, and Somalia']='Syria, Iraq, Somalia'
mig$nationality[mig$nationality=='Survivors were from Gambia, Ghana and Mali']='Gambia, Ghana, Mali'
mig$nationality[mig$nationality=='Syria (mostly)']='Syria'
mig$nationality[mig$nationality=='Syrian']='Syria'
mig$nationality[mig$nationality=='Syrian and Iraqi']='Syria, Iraq'
mig$nationality[mig$nationality=='Syrian Arab Republic']='Syria'
mig$nationality[mig$nationality=='Syrian Arab Republic, Egypt, Sudan']='Syria, Egypt, Sudan'
mig$nationality[mig$nationality=='Syrian Arab Republic, Eritrea, Somalia, Cameroon']='Syria, Eritrea, Somalia, Cameroon'
mig$nationality[mig$nationality=='Syrian Kurds']='Syria'
mig$nationality[mig$nationality=='Syrian, Egyptian, other African']='Syria, Egypt, Africa'
mig$nationality[mig$nationality=='Syrian, Iraqi, Afghan']='Syria, Iraq, Afghanistan'
mig$nationality[mig$nationality=='Syrian. An infant was among the dead']='Syria'
mig$nationality[mig$nationality=='Uknown']='Unknown Nationality'
mig$nationality[mig$nationality=='Unknown (5 reported as nationals from Sub-Saharan Africa and 1 from Morocco)']='Africa, Morocco'
mig$nationality[mig$nationality=='Unknown (Kurdish)']='Iran'
mig$nationality[mig$nationality=='Unknown (skeletal remains)']='Unknown Nationality'
mig$nationality[mig$nationality=='Unknown. Survivors all from Sub-Saharan African nations.']='Africa'
mig$nationality[mig$nationality=='Unknown. Survivors from Bangladesh, Burma, or are ethnic Rohingya']='Bangladesh, Myanmar'
mig$nationality[mig$nationality=='Unkown']='Unknown Nationality'
mig$nationality[mig$nationality=='Unnknown']='Unknown Nationality'
mig$nationality[mig$nationality=='Unspecfied nationals of Western Africa']='Africa'
mig$nationality[mig$nationality=='Unspecified national of Sub-Saharan Africa']='Africa'
mig$nationality[mig$nationality=='Unspecified nationalities of Sub-Saharan Africa']='Africa'
mig$nationality[mig$nationality=='Unspecified nationalities of Subsaharan Africa']='Africa'
mig$nationality[mig$nationality=='Unspecified nationality of North Africa']='Africa'
mig$nationality[mig$nationality=='Unspecified nationality of Sub-Saharan Africa']='Africa'
mig$nationality[mig$nationality=='Unspecified nationals of Africa']='Africa'
mig$nationality[mig$nationality=='Unspecified nationals of Sub-Saharan Africa']='Africa'
mig$nationality[mig$nationality=='Unspecified nationals of West Africa']='Africa'
mig$nationality[mig$nationality=='Various']='Unknown Nationality'
mig$nationality[mig$nationality=='Venezulean']='Venezuela'

length(unique(mig$nationality))#134



#Incident Region 
length(unique(mig$incident_region))
View(unique(mig$incident_region))

mig$incident_region[mig$incident_region=='']='Unknown incident region'
mig$incident_region[mig$incident_region=='Central America incl. Mexico']='Central America'


#Missing number of people
#Filling the number of missing with missing value as 0
mig$missing[is.na(mig$missing)] = 0

#Dead number of people
#Filling in the missing data with mode based on region
find_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

x = find_mode(mig$dead)#Found the mode for all regions(individually) using the above function to be 1
mig$dead[is.na(mig$dead)]= x

#Relialibilty 
mig$reliability[is.na(mig$reliability)]= "Unknown"
mig$reliability[mig$reliability==""]= "Unknown"
mig$reliability[mig$reliability=="Partially verified"]= "Partially Verified"

#Cleaning for the glyph map plot
mig$map_region = mig$incident_region
mig$map_region[mig$map_region=='']='Unknown'
mig$map_region[mig$map_region=='Central America incl. Mexico']='Central America'
mig$map_region[mig$map_region=='Middle East']='Middle East'
mig$map_region[mig$map_region=='Middle East ']='Middle East'
mig$map_region[mig$map_region=='Central America']='Central America & Mexico'

#Exporting the dataset -- for using in tableau
library(writexl)
write_xlsx(mig, "//Users/swathib/Desktop/Spring Term 2021-22/DSC 465 Data Visualization/Final Project/Final Project extra files/migrants.xlsx")

#EXPLORATORY ANALYSIS
summary(mig)

#Boxplots - doesn't seem to work since there are too many zeroes

ggplot(mig, aes(missing))+ geom_boxplot()
ggplot(mig, aes(dead))+ geom_boxplot()

#Histogram - not great either 
mig%>% filter(mig$missing!=0)%>%
ggplot(aes(missing))+ geom_histogram() # definitely skewed to the left

mig%>% filter(mig$dead!=0)%>%
ggplot(aes(dead))+ geom_histogram() #definitely skewed to the left

#Bar plots 
ggplot(mig, aes(cause_of_death)) + geom_bar() #too many categories. Maybe specific regions would be better
ggplot(mig, aes(nationality)) + geom_bar() #too many
ggplot(mig, aes(region_origin)) + geom_bar() #Horn of africa - that's where most migrants originated from
ggplot(mig, aes(incident_region)) + geom_bar()#Most incidents happened at North America followed by Mediterranean and US/Mexico border
ggplot(mig, aes(reliability)) + geom_bar() #Majority - partially verified

#Univariate scatterplots -  Not sure what interesting thing to say about these
ggplot(mig, aes(x=factor(region_origin), y =dead))+
  geom_point(alpha = 0.5)
ggplot(mig, aes(x=factor(region_origin), y =missing))+
  geom_point(alpha = 0.5)
ggplot(mig, aes(x=factor(incident_region), y =dead))+
  geom_point(alpha = 0.5)
ggplot(mig, aes(x=factor(incident_region), y =missing))+
  geom_point(alpha = 0.5)

#Scatterplot
mig%>% filter(mig$missing!=0)%>%
  ggplot(aes(missing,dead))+
  geom_point(alpha = 0.5, size = 2)

#Quantile-Quantile plot
migQQ= mig%>% drop_na() %$%
  data.frame(missingSort=sort(missing),
             deadSort=sort(dead))
ggplot(migQQ,aes(missingSort,deadSort)) + geom_point()

#EXPLANATORY PLOTS - drafts
#(1)TIME VS MISSING ..... Not working out well. Don't know the issue
class(mig$date)
mig$date= as.Date(mig$date,"%d/%m/%Y")

#MonthYear VS missing
mig$mmyy = format(mig$date, "%m%y")

migTrans <- mig %>%  
  group_by(mmyy) %>%  
  summarise_at(vars(missing), list(sumMiss = sum))
migTrans$mmyy = as.numeric(migTrans$mmyy)

ggplot(migTrans,aes(x = mmyy, y = sumMiss))+
  geom_line()

#Year VS Missing
mig$yy = format(mig$date, "%Y")
migTrans1 <- mig %>%  
  group_by(yy) %>%  
  summarise_at(vars(missing), list(sumMiss = sum))
migTrans1$yy = as.numeric(migTrans1$yy)

ggplot(migTrans1,aes(x = yy, y = sumMiss))+
  geom_line()
str(migTrans1)


#(2)
library(gganimate)
library(gifski)
library(plotly)
mig[is.na(mig$yy),]
mig1 = mig[-c(460,489,540,594,640,1133,1134,1135,1214),]

p <- ggplot(mig1, aes(x = missing, y=dead,colour = region_origin)) +
  geom_point(alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(2, 12))+ 
  labs(x = "Missing migrants", y = "Dead migrants")
p
ggplotly(p)

#(3)
mig1$yy = as.numeric(mig1$yy,na.rm = TRUE)
p + transition_time(yy) +
  labs(title = "Year: {frame_time}")





