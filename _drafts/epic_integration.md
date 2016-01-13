---
layout: post
title: EPIC integration
tags: [glooko, epic, wsdl, ws*, webservices, healthcare]
draft: true
---

## Glooko - Diabetes Management Platform

I was very excited to find Glooko and start working there last year. Glooko has built a diabetes management platform - where we enable users to sync with variety of blood glucose meters(BGM), continuous glucose meters(CGM) and Insulin Pumps. Once this data is uploaded the users can review them in context with their fitness data, food data, as well as other clinical information to help with managing their blood glucose levels. Glooko platform also enables health care providers(Doctors, nurses, caregivers, parents) to monitor diabetes for under care persons.

At Glooko we now have a data platform that is open to integrations. Our preferred way to integrate is via our RESTful APIs using JSON.

## EPIC Integration

Although that is the case a number of our partners/healthcare systems have invested in Electronic Health Record(EHR) software that is in place as well as the Doctors are comfortable using that technology. In order to integrate with the EHR technologies we had to learn about them and build custom integration with them.

<!--more-->

One of the frontrunners in EHR technology is [EPIC](http://www.epic.com/). EPIC EHR is used by a number of clinics and hospitals and provides a single window view into all the data for the patient. EPIC also allows for some integration points into the EHR if some strict protocols are adhered to. Newer versions of EPIC promise better ways of integration but their installations are few and path to upgrading them is longer based on how quickly the IT organizations are able to roll them out.

EPIC 2012 WSDL specification was handed to us to build a WebService to adhere to this WSDL.

## Build Web Services in Ruby
I had not done anything with WSDLs for a while let alone building an actual webservice. Doing all this in Ruby/Rails seemed to be another challenge. Thanks to  [Boris Staal](https://github.com/inossidabile) for building the [wash_out gem](https://github.com/inossidabile/wash_out) which made this task much more achievable.
I was able to build a webservice pretty quickly and test it using [savon](https://github.com/savonrb/savon) and everything seemed to be working within a day or two.
I was able to use a [WSDLBrowser](http://wsdlbrowser.com) to see the webservice I had built and also run a few tests to retrieve data.

For some reason though it refused to work against the real EPIC EHR. We found the usual suspects - semantic gaps in what the wsdl expected (capital letters vs small letters), date of birth format(specified in a different string format) etc and we were fixed them.
These fixes got us that much closer to the integration but we continued to receive generic soap syntax errors.
Then we found deep in the stack possible reason for these errors.

## Double Enveloped Soap request
The EPIC WSDL required us process a soap request that contained two soap envelopes instead of one. The EPIC clients seem to have this issue where they expect double envelopes sent by their requests and our server was not able to process them(given that it was built against standard soap). Once we found this issue we were able to patch [our fork of wash_out gem](https://github.com/glooko/wash_out) and accomodate these requests.

Once this was resolved we were able to see and process requests from EPIC and integrate successfully. For those of you who are having issues with EPIC and integrating them with you ruby server feel free to use [our fork of wash_out gem](https://github.com/glooko/wash_out).

## Result

With this integration successful, we were able to release this to our users at AtriusHealth. We also are happy that we partnered with Michael Lee from Atrius and he had some words of praise for us. [MobiHealthNews](http://campaign.r20.constantcontact.com/render?ca=2a3ac90a-fdd5-4be1-9fc6-c4aef3c5ca25&c=592c8410-604f-11e4-a758-d4ae52754aa9&ch=5992e700-604f-11e4-a758-d4ae52754aa9)

I would like to acknowledge the effort put in by Amanda Lee for making this integration a success.
