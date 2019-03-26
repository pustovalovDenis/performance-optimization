CREATE TABLE `assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assessJobCommute` varchar(255) DEFAULT NULL,
  `assessJobCompensation` varchar(255) DEFAULT NULL,
  `assessJobDept` varchar(255) DEFAULT NULL,
  `assessJobDiversity` varchar(255) DEFAULT NULL,
  `assessJobExp` varchar(255) DEFAULT NULL,
  `assessJobFinances` varchar(255) DEFAULT NULL,
  `assessJobIndustry` varchar(255) DEFAULT NULL,
  `assessJobLeaders` varchar(255) DEFAULT NULL,
  `assessJobOffice` varchar(255) DEFAULT NULL,
  `assessJobProduct` varchar(255) DEFAULT NULL,
  `assessJobProfDevel` varchar(255) DEFAULT NULL,
  `assessJobProjects` varchar(255) DEFAULT NULL,
  `assessJobRemote` varchar(255) DEFAULT NULL,
  `assessJobRole` varchar(255) DEFAULT NULL,
  `assessJobTech` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `company_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) DEFAULT NULL,
  `sizeClass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cousinEducation` varchar(255) DEFAULT NULL,
  `educationImportant` varchar(255) DEFAULT NULL,
  `educationTypes` varchar(255) DEFAULT NULL,
  `formalEducation` varchar(255) DEFAULT NULL,
  `highestEducationParents` varchar(255) DEFAULT NULL,
  `majorUndergrad` varchar(255) DEFAULT NULL,
  `selfTaughtTypes` varchar(255) DEFAULT NULL,
  `timeAfterBootcamp` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `employment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `careerSatisfaction` varchar(255) DEFAULT NULL,
  `companySize` varchar(255) DEFAULT NULL,
  `companyType` varchar(255) DEFAULT NULL,
  `developerType` varchar(512) DEFAULT NULL,
  `employmentStatus` varchar(255) DEFAULT NULL,
  `homeRemote` varchar(255) DEFAULT NULL,
  `jobSatisfaction` varchar(255) DEFAULT NULL,
  `mobileDeveloperType` varchar(255) DEFAULT NULL,
  `nonDeveloperType` varchar(255) DEFAULT NULL,
  `webDeveloperType` varchar(255) DEFAULT NULL,
  `yearsCodedJob` varchar(255) DEFAULT NULL,
  `yearsCodedJobPast` varchar(255) DEFAULT NULL,
  `yearsProgram` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipmentSatisfiedCPU` varchar(255) DEFAULT NULL,
  `equipmentSatisfiedMonitors` varchar(255) DEFAULT NULL,
  `equipmentSatisfiedRAM` varchar(255) DEFAULT NULL,
  `equipmentSatisfiedRW` varchar(255) DEFAULT NULL,
  `equipmentSatisfiedStorage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `ex_coder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exCoder10Years` varchar(255) DEFAULT NULL,
  `exCoderActive` varchar(255) DEFAULT NULL,
  `exCoderBalance` varchar(255) DEFAULT NULL,
  `exCoderBelonged` varchar(255) DEFAULT NULL,
  `exCoderNotForMe` varchar(255) DEFAULT NULL,
  `exCoderReturn` varchar(255) DEFAULT NULL,
  `exCoderSkills` varchar(255) DEFAULT NULL,
  `exCoderWillNotCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `experience_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `yearsProgram` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `have_worked_and_want` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `haveWorkedDatabase` varchar(255) DEFAULT NULL,
  `haveWorkedFramework` varchar(255) DEFAULT NULL,
  `haveWorkedLanguage` varchar(512) DEFAULT NULL,
  `haveWorkedPlatform` varchar(255) DEFAULT NULL,
  `wantWorkDatabase` varchar(255) DEFAULT NULL,
  `wantWorkFramework` varchar(255) DEFAULT NULL,
  `wantWorkLanguage` varchar(255) DEFAULT NULL,
  `wantWorkPlatform` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `important_hiring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `importantHiringAlgorithms` varchar(255) DEFAULT NULL,
  `importantHiringCommunication` varchar(255) DEFAULT NULL,
  `importantHiringCompanies` varchar(255) DEFAULT NULL,
  `importantHiringEducation` varchar(255) DEFAULT NULL,
  `importantHiringGettingThingsDone` varchar(255) DEFAULT NULL,
  `importantHiringOpenSource` varchar(255) DEFAULT NULL,
  `importantHiringPMExp` varchar(255) DEFAULT NULL,
  `importantHiringRep` varchar(255) DEFAULT NULL,
  `importantHiringTechExp` varchar(255) DEFAULT NULL,
  `importantHiringTitles` varchar(255) DEFAULT NULL,
  `learnedHiring` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `influence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `influenceCloud` varchar(255) DEFAULT NULL,
  `influenceCommunication` varchar(255) DEFAULT NULL,
  `influenceConsultants` varchar(255) DEFAULT NULL,
  `influenceDatabase` varchar(255) DEFAULT NULL,
  `influenceDeptTech` varchar(255) DEFAULT NULL,
  `influenceHardware` varchar(255) DEFAULT NULL,
  `influenceInternet` varchar(255) DEFAULT NULL,
  `influenceRecruitment` varchar(255) DEFAULT NULL,
  `influenceServers` varchar(255) DEFAULT NULL,
  `influenceTechStack` varchar(255) DEFAULT NULL,
  `influenceVizTools` varchar(255) DEFAULT NULL,
  `influenceWorkstation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `job_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `clickyKeys` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `hoursPerWeek` varchar(255) DEFAULT NULL,
  `importantBenefits` varchar(255) DEFAULT NULL,
  `jobProfile` varchar(255) DEFAULT NULL,
  `jobSeekingStatus` varchar(255) DEFAULT NULL,
  `lastNewJob` varchar(255) DEFAULT NULL,
  `overpaid` varchar(255) DEFAULT NULL,
  `resumePrompted` varchar(255) DEFAULT NULL,
  `workStart` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `respondent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interestedAnswers` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `expectedSalary` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `professional` varchar(255) DEFAULT NULL,
  `programHobby` varchar(255) DEFAULT NULL,
  `questionsConfusing` varchar(255) DEFAULT NULL,
  `questionsInteresting` varchar(255) DEFAULT NULL,
  `race` varchar(255) DEFAULT NULL,
  `respondentName` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `surveyLong` varchar(255) DEFAULT NULL,
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
  FOREIGN KEY (`assesses_id`) REFERENCES `assesses`(`id`),
  FOREIGN KEY (`educationInfo_id`) REFERENCES `educationInfo`(`id`),
  FOREIGN KEY (`employmentInfo_id`) REFERENCES `employmentInfo`(`id`),
  FOREIGN KEY (`equipmentInfo_id`) REFERENCES `equipmentInfo`(`id`),
  FOREIGN KEY (`exCoderInfo_id`) REFERENCES `exCoderInfo`(`id`),
  FOREIGN KEY (`haveWorkedAndWantInfo_id`) REFERENCES `haveWorkedAndWantInfo`(`id`),
  FOREIGN KEY (`importantHiringInfo_id`) REFERENCES `importantHiringInfo`(`id`),
  FOREIGN KEY (`influenceInfo_id`) REFERENCES `influenceInfo`(`id`),
  FOREIGN KEY (`job_Id`) REFERENCES `job`(`id`),
  FOREIGN KEY (`respondentDetailsInfo_id`) REFERENCES `respondentDetailsInfo`(`id`),
  FOREIGN KEY (`stackOverflow_id`) REFERENCES `stackOverflow`(`id`),
  FOREIGN KEY (`technicalDetailsInfo_id`) REFERENCES `technicalDetailsInfo`(`id`),
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `respondent_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `annoyingUI` varchar(255) DEFAULT NULL,
  `boringDetails` varchar(255) DEFAULT NULL,
  `buildingThings` varchar(255) DEFAULT NULL,
  `challengeMyself` varchar(255) DEFAULT NULL,
  `changeWorld` varchar(255) DEFAULT NULL,
  `competePeers` varchar(255) DEFAULT NULL,
  `diversityImportant` varchar(255) DEFAULT NULL,
  `friendsDevelopers` varchar(255) DEFAULT NULL,
  `investTimeTools` varchar(255) DEFAULT NULL,
  `jobSecurity` varchar(255) DEFAULT NULL,
  `kinshipDevelopers` varchar(255) DEFAULT NULL,
  `learningNewTech` varchar(255) DEFAULT NULL,
  `problemSolving` varchar(255) DEFAULT NULL,
  `pronounceGIF` varchar(255) DEFAULT NULL,
  `rightWrongWay` varchar(255) DEFAULT NULL,
  `seriousWork` varchar(255) DEFAULT NULL,
  `understandComputers` varchar(255) DEFAULT NULL,
  `workPayCare` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `stackoverflow_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stackOverflowAdsDistracting` varchar(255) DEFAULT NULL,
  `stackOverflowAdsRelevant` varchar(255) DEFAULT NULL,
  `stackOverflowAnswer` varchar(255) DEFAULT NULL,
  `stackOverflowBetter` varchar(255) DEFAULT NULL,
  `stackOverflowCommunity` varchar(255) DEFAULT NULL,
  `stackOverflowCompanyPage` varchar(255) DEFAULT NULL,
  `stackOverflowCopiedCode` varchar(255) DEFAULT NULL,
  `stackOverflowDescribes` varchar(255) DEFAULT NULL,
  `stackOverflowDevices` varchar(255) DEFAULT NULL,
  `stackOverflowFoundAnswer` varchar(255) DEFAULT NULL,
  `stackOverflowHelpful` varchar(255) DEFAULT NULL,
  `stackOverflowJobListing` varchar(255) DEFAULT NULL,
  `stackOverflowJobSearch` varchar(255) DEFAULT NULL,
  `stackOverflowMakeMoney` varchar(255) DEFAULT NULL,
  `stackOverflowMetaChat` varchar(255) DEFAULT NULL,
  `stackOverflowModeration` varchar(255) DEFAULT NULL,
  `stackOverflowNewQuestion` varchar(255) DEFAULT NULL,
  `stackOverflowSatisfaction` varchar(255) DEFAULT NULL,
  `stackOverflowWhatDo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `technical_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditoryEnvironment` varchar(255) DEFAULT NULL,
  `checkInCode` varchar(255) DEFAULT NULL,
  `collaborateRemote` varchar(255) DEFAULT NULL,
  `difficultCommunication` varchar(255) DEFAULT NULL,
  `enjoyDebugging` varchar(255) DEFAULT NULL,
  `ide` varchar(255) DEFAULT NULL,
  `inTheZone` varchar(255) DEFAULT NULL,
  `methodology` varchar(255) DEFAULT NULL,
  `metricAssess` varchar(255) DEFAULT NULL,
  `otherPeoplesCode` varchar(255) DEFAULT NULL,
  `projectManagement` varchar(255) DEFAULT NULL,
  `shipIt` varchar(255) DEFAULT NULL,
  `tabsSpaces` varchar(255) DEFAULT NULL,
  `versionControl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

