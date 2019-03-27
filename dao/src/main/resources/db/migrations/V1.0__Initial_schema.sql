CREATE TABLE `assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assessJobCommute` varchar(30) DEFAULT NULL,
  `assessJobCompensation` varchar(30) DEFAULT NULL,
  `assessJobDept` varchar(30) DEFAULT NULL,
  `assessJobDiversity` varchar(30) DEFAULT NULL,
  `assessJobExp` varchar(30) DEFAULT NULL,
  `assessJobFinances` varchar(30) DEFAULT NULL,
  `assessJobIndustry` varchar(30) DEFAULT NULL,
  `assessJobLeaders` varchar(30) DEFAULT NULL,
  `assessJobOffice` varchar(30) DEFAULT NULL,
  `assessJobProduct` varchar(30) DEFAULT NULL,
  `assessJobProfDevel` varchar(30) DEFAULT NULL,
  `assessJobProjects` varchar(30) DEFAULT NULL,
  `assessJobRemote` varchar(30) DEFAULT NULL,
  `assessJobRole` varchar(30) DEFAULT NULL,
  `assessJobTech` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `company_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) DEFAULT NULL,
  `sizeClass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cousinEducation` varchar(150) DEFAULT NULL,
  `educationImportant` varchar(30) DEFAULT NULL,
  `educationTypes` varchar(200) DEFAULT NULL,
  `formalEducation` varchar(80) DEFAULT NULL,
  `highestEducationParents` varchar(60) DEFAULT NULL,
  `majorUndergrad` varchar(70) DEFAULT NULL,
  `selfTaughtTypes` varchar(220) DEFAULT NULL,
  `timeAfterBootcamp` varchar(70) DEFAULT NULL,
  `university` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `employment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `careerSatisfaction` varchar(5) DEFAULT NULL,
  `companySize` varchar(30) DEFAULT NULL,
  `companyType` varchar(80) DEFAULT NULL,
  `developerType` varchar(350) DEFAULT NULL,
  `employmentStatus` varchar(63) DEFAULT NULL,
  `homeRemote` varchar(70) DEFAULT NULL,
  `jobSatisfaction` varchar(5) DEFAULT NULL,
  `mobileDeveloperType` varchar(70) DEFAULT NULL,
  `nonDeveloperType` varchar(180) DEFAULT NULL,
  `webDeveloperType` varchar(30) DEFAULT NULL,
  `yearsCodedJob` varchar(20) DEFAULT NULL,
  `yearsCodedJobPast` varchar(20) DEFAULT NULL,
  `yearsProgram` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipmentSatisfiedCPU` varchar(30) DEFAULT NULL,
  `equipmentSatisfiedMonitors` varchar(30) DEFAULT NULL,
  `equipmentSatisfiedRAM` varchar(30) DEFAULT NULL,
  `equipmentSatisfiedRW` varchar(30) DEFAULT NULL,
  `equipmentSatisfiedStorage` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `ex_coder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exCoder10Years` varchar(20) DEFAULT NULL,
  `exCoderActive` varchar(20) DEFAULT NULL,
  `exCoderBalance` varchar(20) DEFAULT NULL,
  `exCoderBelonged` varchar(20) DEFAULT NULL,
  `exCoderNotForMe` varchar(20) DEFAULT NULL,
  `exCoderReturn` varchar(20) DEFAULT NULL,
  `exCoderSkills` varchar(20) DEFAULT NULL,
  `exCoderWillNotCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `experience_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `yearsProgram` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `have_worked_and_want` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `haveWorkedDatabase` varchar(80) DEFAULT NULL,
  `haveWorkedFramework` varchar(80) DEFAULT NULL,
  `haveWorkedLanguage` varchar(300) DEFAULT NULL,
  `haveWorkedPlatform` varchar(200) DEFAULT NULL,
  `wantWorkDatabase` varchar(80) DEFAULT NULL,
  `wantWorkFramework` varchar(80) DEFAULT NULL,
  `wantWorkLanguage` varchar(300) DEFAULT NULL,
  `wantWorkPlatform` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `important_hiring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `importantHiringAlgorithms` varchar(30) DEFAULT NULL,
  `importantHiringCommunication` varchar(30) DEFAULT NULL,
  `importantHiringCompanies` varchar(30) DEFAULT NULL,
  `importantHiringEducation` varchar(30) DEFAULT NULL,
  `importantHiringGettingThingsDone` varchar(30) DEFAULT NULL,
  `importantHiringOpenSource` varchar(30) DEFAULT NULL,
  `importantHiringPMExp` varchar(30) DEFAULT NULL,
  `importantHiringRep` varchar(30) DEFAULT NULL,
  `importantHiringTechExp` varchar(30) DEFAULT NULL,
  `importantHiringTitles` varchar(30) DEFAULT NULL,
  `learnedHiring` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `influence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `influenceCloud` varchar(30) DEFAULT NULL,
  `influenceCommunication` varchar(30) DEFAULT NULL,
  `influenceConsultants` varchar(30) DEFAULT NULL,
  `influenceDatabase` varchar(30) DEFAULT NULL,
  `influenceDeptTech` varchar(30) DEFAULT NULL,
  `influenceHardware` varchar(30) DEFAULT NULL,
  `influenceInternet` varchar(30) DEFAULT NULL,
  `influenceRecruitment` varchar(30) DEFAULT NULL,
  `influenceServers` varchar(30) DEFAULT NULL,
  `influenceTechStack` varchar(30) DEFAULT NULL,
  `influenceVizTools` varchar(30) DEFAULT NULL,
  `influenceWorkstation` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `job_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clickyKeys` varchar(5) DEFAULT NULL,
  `currency` varchar(30) DEFAULT NULL,
  `hoursPerWeek` varchar(5) DEFAULT NULL,
  `importantBenefits` varchar(120) DEFAULT NULL,
  `jobProfile` varchar(130) DEFAULT NULL,
  `jobSeekingStatus` varchar(70) DEFAULT NULL,
  `lastNewJob` varchar(30) DEFAULT NULL,
  `overpaid` varchar(40) DEFAULT NULL,
  `resumePrompted` varchar(70) DEFAULT NULL,
  `workStart` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `respondent_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `annoyingUI` varchar(20) DEFAULT NULL,
  `boringDetails` varchar(20) DEFAULT NULL,
  `buildingThings` varchar(20) DEFAULT NULL,
  `challengeMyself` varchar(255) DEFAULT NULL,
  `changeWorld` varchar(20) DEFAULT NULL,
  `competePeers` varchar(20) DEFAULT NULL,
  `diversityImportant` varchar(20) DEFAULT NULL,
  `friendsDevelopers` varchar(20) DEFAULT NULL,
  `investTimeTools` varchar(20) DEFAULT NULL,
  `jobSecurity` varchar(20) DEFAULT NULL,
  `kinshipDevelopers` varchar(20) DEFAULT NULL,
  `learningNewTech` varchar(20) DEFAULT NULL,
  `problemSolving` varchar(20) DEFAULT NULL,
  `pronounceGIF` varchar(100) DEFAULT NULL,
  `rightWrongWay` varchar(20) DEFAULT NULL,
  `seriousWork` varchar(20) DEFAULT NULL,
  `understandComputers` varchar(20) DEFAULT NULL,
  `workPayCare` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `stack_overflow_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stackOverflowAdsDistracting` varchar(20) DEFAULT NULL,
  `stackOverflowAdsRelevant` varchar(20) DEFAULT NULL,
  `stackOverflowAnswer` varchar(30) DEFAULT NULL,
  `stackOverflowBetter` varchar(20) DEFAULT NULL,
  `stackOverflowCommunity` varchar(20) DEFAULT NULL,
  `stackOverflowCompanyPage` varchar(30) DEFAULT NULL,
  `stackOverflowCopiedCode` varchar(30) DEFAULT NULL,
  `stackOverflowDescribes` varchar(100) DEFAULT NULL,
  `stackOverflowDevices` varchar(100) DEFAULT NULL,
  `stackOverflowFoundAnswer` varchar(30) DEFAULT NULL,
  `stackOverflowHelpful` varchar(20) DEFAULT NULL,
  `stackOverflowJobListing` varchar(30) DEFAULT NULL,
  `stackOverflowJobSearch` varchar(30) DEFAULT NULL,
  `stackOverflowMakeMoney` varchar(20) DEFAULT NULL,
  `stackOverflowMetaChat` varchar(30) DEFAULT NULL,
  `stackOverflowModeration` varchar(20) DEFAULT NULL,
  `stackOverflowNewQuestion` varchar(30) DEFAULT NULL,
  `stackOverflowSatisfaction` varchar(5) DEFAULT NULL,
  `stackOverflowWhatDo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `technical_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditoryEnvironment` varchar(70) DEFAULT NULL,
  `checkInCode` varchar(40) DEFAULT NULL,
  `collaborateRemote` varchar(20) DEFAULT NULL,
  `difficultCommunication` varchar(20) DEFAULT NULL,
  `enjoyDebugging` varchar(20) DEFAULT NULL,
  `ide` varchar(255) DEFAULT NULL,
  `inTheZone` varchar(20) DEFAULT NULL,
  `methodology` varchar(120) DEFAULT NULL,
  `metricAssess` varchar(255) DEFAULT NULL,
  `otherPeoplesCode` varchar(20) DEFAULT NULL,
  `projectManagement` varchar(20) DEFAULT NULL,
  `shipIt` varchar(20) DEFAULT NULL,
  `tabsSpaces` varchar(10) DEFAULT NULL,
  `versionControl` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `respondent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interestedAnswers` varchar(20) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `expectedSalary` varchar(20) DEFAULT NULL,
  `gender` varchar(60) DEFAULT NULL,
  `professional` varchar(60) DEFAULT NULL,
  `programHobby` varchar(60) DEFAULT NULL,
  `questionsConfusing` varchar(20) DEFAULT NULL,
  `questionsInteresting` varchar(20) DEFAULT NULL,
  `race` varchar(255) DEFAULT NULL,
  `respondentName` varchar(11) DEFAULT NULL,
  `salary` varchar(20) DEFAULT NULL,
  `surveyLong` varchar(20) DEFAULT NULL,
  `assesses_id` int(11) DEFAULT NULL,
  `educationInfo_id` int(11) DEFAULT NULL,
  `employmentInfo_id` int(11) DEFAULT NULL,
  `equipmentInfo_id` int(11) DEFAULT NULL,
  `exCoderInfo_id` int(11) DEFAULT NULL,
  `haveWorkedAndWantInfo_id` int(11) DEFAULT NULL,
  `importantHiringInfo_id` int(11) DEFAULT NULL,
  `influenceInfo_id` int(11) DEFAULT NULL,
  `job_Id` int(11) DEFAULT NULL,
  `respondentDetailsInfo_id` int(11) DEFAULT NULL,
  `stackOverflow_id` int(11) DEFAULT NULL,
  `technicalDetailsInfo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`assesses_id`) REFERENCES `assess`(`id`),
  FOREIGN KEY (`educationInfo_id`) REFERENCES `education`(`id`),
  FOREIGN KEY (`employmentInfo_id`) REFERENCES `employment`(`id`),
  FOREIGN KEY (`equipmentInfo_id`) REFERENCES `equipment`(`id`),
  FOREIGN KEY (`exCoderInfo_id`) REFERENCES `ex_coder`(`id`),
  FOREIGN KEY (`haveWorkedAndWantInfo_id`) REFERENCES `have_worked_and_want`(`id`),
  FOREIGN KEY (`importantHiringInfo_id`) REFERENCES `important_hiring`(`id`),
  FOREIGN KEY (`influenceInfo_id`) REFERENCES `influence`(`id`),
  FOREIGN KEY (`job_Id`) REFERENCES `job_info`(`id`),
  FOREIGN KEY (`respondentDetailsInfo_id`) REFERENCES `respondent_details`(`id`),
  FOREIGN KEY (`stackOverflow_id`) REFERENCES `stack_overflow_info`(`id`),
  FOREIGN KEY (`technicalDetailsInfo_id`) REFERENCES `technical_details`(`id`),
  KEY `FK7tqut5b95smd8m2usb6wsmbue` (`assesses_id`),
  KEY `FKpgrwk50soo6sjlginp4byepwu` (`educationInfo_id`),
  KEY `FK6we22ed6xnu0s3ik0tdmls95x` (`employmentInfo_id`),
  KEY `FKs8qiingfkpgjcr3cra4ibojlv` (`equipmentInfo_id`),
  KEY `FKc7lbdbrqhk97c0q6qjxmlkmne` (`exCoderInfo_id`),
  KEY `FKt7woxi1vh2sbbw9jksskymy54` (`haveWorkedAndWantInfo_id`),
  KEY `FKei23052c7jtrxkkxhswbdbly2` (`importantHiringInfo_id`),
  KEY `FK4fbg0107qhbxxt5vvsjbtuxjo` (`influenceInfo_id`),
  KEY `FKqow3sp84b9uuov6nm4gqxktio` (`job_Id`),
  KEY `FK6ssd4a6ovs2l32axa3x4uddon` (`respondentDetailsInfo_id`),
  KEY `FKcgej6wb98ah7mksfa50jru5mk` (`stackOverflow_id`),
  KEY `FKh6du11ufuuw7c7unwucvpww16` (`technicalDetailsInfo_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
