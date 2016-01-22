---
layout: post
title: EPIC integration
tags: [glooko, epic, wsdl, ws*, webservices, healthcare]
draft: true
---

## Glooko - Diabetes Management Platform

I was very excited to find out about [Glooko](http://www.glooko.com) and start working there last year. Glooko has built a unified diabetes management platform, where we enable users to sync data from a variety of blood glucose meters, continuous glucose monitor(CGM) and insulin pumps, as well as popular fitness trackers. Once their data is uploaded, users can review their diabetes data in context with their insulin, food and fitness data, as well as other relevant clinical information to help with manage their blood glucose levels and keep them under control. Glooko platform also enables health care providers(doctors, nurses, caregivers, parents, etc.) to monitor a person with diabetes remotely and provide more timely, collaborative care.

At Glooko, we now have a data platform that is open to integrations. Our preferred way to integrate is via our RESTful APIs using JSON.

## EPIC Integration

Although Glooko is also available on the web and sends patient data securely via the cloud, a number of our partners/healthcare systems have invested in and are required to use Electronic Health Records(EHR) software in their clinic. And doctors are familiar and comfortable using that technology. In order to integrate with EHR technologies we had to learn about them and build custom integration with them.

<!--more-->

One of the frontrunners in EHR technology is [EPIC](http://www.epic.com/). EPIC EHR is used by a number of clinics and hospitals and provides a single window view into all patients' the data. EPIC also allows for some integration points into their EHR as long as the 3rd party adheres to their strict protocols. Newer versions of EPIC promise better ways for integration but their installations are few and the path to upgrading them is long, which is based on how quickly the health system's IT organization is able to do the installation.

EPIC 2012 WSDL specification was handed to us to build a WebService that adheres to this WSDL.

## Build Web Services in Ruby
I had not done anything with WSDLs for a while, let alone building an actual webservice. Doing all of this in Ruby/Rails seemed to be whole other challenge. Thank you to [Boris Staal](https://github.com/inossidabile) for building the [wash_out gem](https://github.com/inossidabile/wash_out) which made this task much more achievable.

I was able to build a webservice pretty quickly and test it using [savon](https://github.com/savonrb/savon) and fortunately, everything seemed to be working within a day or two.
I was able to use a [WSDLBrowser](http://wsdlbrowser.com) to see the webservice I had built and also run a few tests to retrieve data.

For some reason though, the webservice to work against the real EPIC EHR. We found the usual suspects - semantic gaps in what the wsdl expected (capital letters vs small letters), date of birth format(specified in a different string format) etc. Thus, we were fixed them.
While these fixes got us that much closer to completing the integration, we continued to receive generic soap syntax errors.
Then we found deep in the stack a possible reason for these errors.

## Double Enveloped Soap request
The EPIC WSDL required us to process a soap request that contained two SOAP envelopes instead of one. The EPIC clients seemed to have an issue where they expected double envelopes sent by their requests and our server was unable to process them(given that it was built against standard SOAP). Once we found this issue we were able to patch [our fork of wash_out gem](https://github.com/glooko/wash_out) and accommodate these requests.

Once this was resolved, we were able to see and process requests from EPIC and integrate successfully. For those of you who are having issues with EPIC and integrating them with you ruby server feel free to use [our fork of wash_out gem](https://github.com/glooko/wash_out).

(In general, "WashOut is a gem that greatly simplifies creation of SOAP service providers. But if you have a chance, please [stopsoap](http://stopsoap.com/)")

## Result

With this successful integration, we were able to release this to our users at [Atrius Health](http://www.atriushealth.org). Based on the quality of our work along with our partnership with Dr. Michael Lee from Atrius Health, he had some words of praise for us. [MobiHealthNews](http://campaign.r20.constantcontact.com/render?ca=2a3ac90a-fdd5-4be1-9fc6-c4aef3c5ca25&c=592c8410-604f-11e4-a758-d4ae52754aa9&ch=5992e700-604f-11e4-a758-d4ae52754aa9).

Thank you Amanda Lee from Atrius Health for her patience and support during this integration.
