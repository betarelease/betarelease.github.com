---
layout: post
title: 3 challenges, One HealthCare App, Continuously Delivered
tags: [healthcare, glooko, fda, hipaa, regulatory]
---

# Glooko
I spent the last 3 years in building and supporting an exciting HealthCare app - Glooko - which supports
people with diabetes get a unified view of their health with a single click. When I started on it, I thought of it as
another software application, but was about to learn a lot more about it. First, I learnt that Software is more useful
when it applies to people's health. Then, I learnt that Software is also more difficult when it applies to people's health - rightfully so. Here I detail, what I learnt and why it makes sense.

# FDA
In working with anything to do with Health, you will come across the FDA - who makes sure that we don't hurt the one
who we sought to help. FDA is the central regulatory authority that approves and controls how technology is introduced
into health treatments. In Glooko's case specifically, when you build a product that aggregates data, it comes under the scrutiny of FDA and needs to prove that the data is not going hurt the person - and while doing so is represented in its true form. FDA [classifies](https://en.wikipedia.org/wiki/Medical_device) any such technology as a medical device(a notion from the time when actual physical devices are used to treat/monitor).Now this definition extends to medical devices where devices include software. The classes go from Class I(where the device may not harm you if used/misused - like a toothbrush) to Class III(where the device could cause you harm if misused/miscalibrated - eg. [defibrillator](https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfPCD/classification.cfm?ID=NIK)). As the class number goes up the sensitivity of FDA towards your medical device increases and stricter guideliness need to be followed to get approvals. These guidelines also need to be followed with each new version of the medical device.

# Regulatory

Working with the FDA is usually a local(in house) regulatory team who spends a lot of energy in understanding the classification and preparing for such submissions. This team usually helps you dot the t's and dash the i's(if you are paying attention .. you know it is the other way around) - which ends up being a lot of ts and is.
This regulatory team also trains the software team on what it means to work in the healthcare setup and work with the FDA.

# HIPAA
[HIPAA](https://en.wikipedia.org/wiki/Health_Insurance_Portability_and_Accountability_Act) on the other hand is not related to FDA and operates independently in defining how patient data can be handled to improve patient safety. In the way it applies to healthcare software it governs security of patient data in ways that it is stored, accessed, handled and archived. A comprehensive [HIPAA compliance checklist](https://www.hipaajournal.com/hipaa-compliance-checklist/) documents it well.

## Security for patient data
HIPAA classified sensitive patient data as data that can be use to adversely affect a patient/person. In order to ensure that data is protected HIPAA details what is expected of data in its different states.
When we talk about patient privacy it means the ability to restrict restrict the data is available to Identify the patient as well as disclose information about their health. While securing this data we have been sure that the patient's credentials identifiable's which include there name Their data birth muscle security number the past passwords the address none of these open to the public. Along with this it is important cannot let their health data, be alterable without their permission. Often getting the correct permissions from the patient dr. Is allowed to look at, modify are annotate the patient's date.

## Security while storing patient data
When handling patient data what has to ensure that the data is stored in a secure fashion. What it means is is that if anyone is able to get to the storage Office data they are not able to read or write that do the data store without proper credentials with the most current encryption mechanisms. Doing this ensures that data is secure at rest.
HIPAA Also mandatesHowLeave the storage devicesMeet be handledAnd how they need to be destroyedWhat is. HIPAA Hey but has strict requirementsOn how The Hard disks Are reused And are destroyed.

## Security while accessing patient data
Securing data in storage seems to be an easier problem solve. Once you have ensured that, the next challenge is secure it in transit. In order to do that you need to ensure, that the path of the data from storage to they user stays secure. It is very critical to monitor how how big that is handled and manipulated by your infrastructure as well as your application. Since of this application is delivered over the web you need to ensure bad it is delivered using HTTPS with the highest level of encryption.


## Security while monitoring patient data
When it comes to patient data it is mandated that the access and usage of that data be monitored correctly.
Audit logs need to ensure that only the patient that permissions are strictly applied when accessing patient data. Along with that, you need to keep your logs clean of any patient identifiable information.
Much like passwords need to be masked for web security, patient identifiable data needs to be obfuscated to be not printed in log statements. A proper log etiquette/rule will ensure that no patient identification
data leaks into the logs.

## Security while archiving patient data
All of the above protects patient data when it is hot - or being used/reviewed. Business Continuity practices require that you have an archival strategy for all your data - in order to support quick disaster recovery. Needless to say, even while archiving snapshots of data, the data needs to be encrypted and the encryption key needs to be protected from unprivileged usage.

## Attacks on patient data

## Patient Safety


FDA regulations Care about

* how you built it

FDA requires that you document the process well. From the time you started thinking about a feature of the device/software,
detailed documentation of the process that was used to build your software/device, is a must. This process includes your project management tool, how it is configured, how the work is tracked and traced traced. This tool needs to be able to connect the dots between feature description, design, code as well as the testing that was carried out to accomplish the release.


* what you built

The feature itself needs to be meticulously described, test scenarios identified and reasoned with appropriate design documentation attached for completeness. When this particular feature has been built, a verification has to be conducted and documented that proves how the feature works. This verification documentation is also used as part of the instruction manual document.

* traceability

When a feature is built, it could undergo some changes/tweaks based on what you learn during the development process. These changes need to be tracked. Once the development is completed the code changes need to be linked to the feature description so that incase of an audit the path can be traced. This is also useful in case an issue is found after the release to allow for root-cause analysis.

* Root cause and Root effect

When a particular issue is reported by a user, this issue is recorded in the project management system and an analysis will need to be performed to identify what caused the issue. Sometimes the user will experience the issue in a certain way, but data will not reflect exactly what the user experienced. Let me give you an example.

Let us say the medical device you have allows you to record a continuum of activity. Usually this continuum is specified by the start time and an end time. Now when this device is synced the activity is in progress and there is no endtime reported(say nil). The bug is that the device recorded this a single point and not as a continuum due to lack of end time. But due to this bug the user experience calculations of integral, average that are completely off. The user reports this root effect as the calculations being wrong while the root cause is the fix the end-time should be considered as sync time for any activity that has started but not ended.(unless they are for a different date in which case those data need to be flagged for admin action)

The above example illustrates the nuances involved in storing the data as well and how the data is interpreted and affects the user. This scenario requires that you as a system designer perform this analysis and report and test the fix with that context.

* Identify, fix issue, fix process, Repeat - and document all the way


Some tools and technologies that can help you with all this:

* Code scanning
* Code quality - OWASP 10
* Static code scanning - Code Climate
* Black box application scanning - QualysGuard
* White box application scanning - QualysGuard - vulnerability scanning
* Infrastructure Monitoring - Intrusion Detection
* Penetration testing
* SLA
* Patient Safety

AWS as your partner
* BAA for HIPAA compliance
* Guarantees of data quality

Ref:
how a healthcare tech could not get her bill adjusted

https://www.cnbc.com/2017/12/19/social-capital-kristin-baker-spohn-health-bill-horror-story.html?lipi=urn%3Ali%3Apage%3Ad_flagship3_feed%3BTop78XymS6exZxtF0G1VAQ%3D%3D
