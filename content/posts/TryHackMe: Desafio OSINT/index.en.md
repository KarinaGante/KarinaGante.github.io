---
weight: 1
title: "TryHackMe: OSINT Challenge"
date: 2025-02-28T21:29:01+08:00
draft: false
authors: ["Karina"]
description: "Walkthrough of TryHackMe’s OSINT Challenge, tracing a digital footprint using real-world OSINT techniques."
featuredImage: "/images/TryHackMe: Desafio OSINT/osint.png"

tags: ["TryHackMe", "OSINT", "Capture The Flag", "cybersecurity", "digital forensics"]
categories: ["CTF Walkthroughs"]
lightgallery: true
license: '<a rel="license external nofollow noopener noreferrer" href="https://creativecommons.org/licenses/by-nc/4.0/" target="_blank">CC BY-NC 4.0</a>'
toc:
  auto: false
---

Walkthrough of TryHackMe’s OSINT Challenge, tracing a digital footprint using real-world OSINT techniques.

<!--more-->

> ***🇧🇷 Ler em [Português](http://karinagante.github.io/pt-br/tryhackme-desafio-osint/).***

## TryHackMe: OSINT Challenge

### Full Walkthrough & Guide

<p align="justify">This is a complete walkthrough of the OSINT Challenge hosted on TryHackMe, a popular cybersecurity learning platform. This open-source intelligence (OSINT) room challenges users to trace a fictional character’s digital footprint, starting from a single image.</p>

<p align="justify">Throughout the challenge, you'll extract metadata, perform reverse image searches, investigate social media activity, and explore GitHub repositories to uncover hidden flags—one of which is cleverly embedded in an interactive element on a personal blog. Perfect for cybersecurity newbies and digital investigators, this hands-on Capture The Flag (CTF) provides OSINT training using real-world techniques.</p>

<p align="justify">Whether you're preparing for a cybersecurity career, studying for OSINT certifications, or just love solving online puzzles, this room is a great way to boost your reconnaissance skills and learn how to track someone online using only publicly available data.</p>

### Access room here:

👉 [https://tryhackme.com/room/desafioosint](https://tryhackme.com/room/desafioosint)

### Task 1 - OSINT: Image

<p align="justify">The challenge starts with an image. Your mission: extract metadata and find clues that reveal the photo's location.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/trip-1719941392499-1729532974063.JPG">
</p>
<br>

|  Questions  |
|:-------|
| Q1. What is the username? |
| Q2. What is the User's full name? |
| Q3. Where was the photo taken? |


#### Q1. What is the username?

<p style="text-align: justify;">To retrieve image metadata, you can use various online EXIF viewers. On Linux systems, the <strong>exiftool</strong> command is ideal: </p>

```console
exiftool <filename>
```
<br>
<p style="text-align: justify;">If it's not installed, run: </p>

```console
sudo apt install exiftool
```

> ***☝️🤓 For other platforms, follow the [Installation Guide](https://exiftool.org/install.html).***

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/username.png">
</p>
<br>

#### Q2. What is the User's full name?

<p style="text-align: justify;"> By continuing to analyze the metadata, you’ll uncover the user’s real name. Always look carefully at fields like Author, Artist, Creator, Copyright and Owner: </p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/user-full-name.png">
</p>
<br>

#### Q3. Where was the photo taken?

<p style="text-align: justify;">
Drop the image on Google:
</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/place.png">
</p>
<br>

> ***🇧🇷 This challenge is in **Portuguese**, so remember to translate and interpret clues accordingly.***

### Task 2 - OSINT: Social Media

<p style="text-align: justify;">Now that you have the username and full name, start your social media investigation. Use platforms like Facebook, Instagram, X (Twitter), and LinkedIn to track down personal details.</p>

|  Questions  |
|:-------|
| Q1. What is the user's city of birth? |
| Q2. Where was the user on May 13, 2024? |
| Q3. What is the user's email? |


#### Q1. What is the user's city of birth?

<p style="text-align: justify;"> Look at the user’s public profiles. Facebook and LinkedIn often contain biographical details like the city of birth or hometown.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/facebook.png">
</p>
<br>

<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/twitter-x.png">
</p>
<br>

> ***☝️🤓 Again: This challenge is in **Portuguese**, so remember to translate and interpret clues accordingly.***

#### Q2. Where was the user on May 13, 2024?

<p style="text-align: justify;">Scroll through social media posts and geotagged photos. Users often share travel details or check-ins that reveal their location.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/may-13-2024.png">
</p>
<br>

<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/may-13-place.png">
</p>
<br>

#### Q3. What is the user's email?

<p style="text-align: justify;"> GitHub can be a goldmine for OSINT. Check commits and profile settings to uncover the user’s email address.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/email.png">
</p>
<br>

### Task 3 - First Flag: Welcome to the CSSDC OSINT CTF

<p style="text-align: justify;">
Now that you have several user data, look for the first flag.
</p>

|  Question  |
|:-------|
| Q1. What flag is found in the repository? |


#### Q1. What flag is found in the repository? 

<p style="text-align: justify;">
Now that we’ve gathered some personal data, the first flag is hidden inside a GitHub repository. Look for a repo named <strong>"cssdc"</strong>, as referenced in the challenge description.
</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/repo.png">
</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/file.png">
</p>
<br>

<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/flag.png">
</p>
<br>

### Task 4 - Final Flag

<p style="text-align: justify;">Continue collecting more data from the user and find the last flag on the user's personal page.</p>

|  Questions  |
|:-------|
| Q1. What is the user's blog address? |
| Q2. Which database does the website use? |
| Q3. Search for the Flag on the Website. |

#### Q1. What is the user's blog address?

<p style="text-align: justify;">Most GitHub profiles include personal websites or blogs in the bio section. You’ll find the link easily.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/blog.png">
</p>
<br>

#### Q2. Which database does the website use?

Use tools like [Wappalyzer](https://www.wappalyzer.com/) to analyze the site’s backend technologies.

> ***☝️🤓 Install Wappalyzer as a browser extension.***

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/db.png">
</p>
<br>

#### Q3. Search for the Flag on the Website.

<p style="text-align: justify;"> Click around every element on the blog. Hover over unusual elements and inspect hidden content or embedded text.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/dot.png">
</p>
<br>

<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/final-flag.png">
</p>
<br>

### 🎉 Congratulations! All Tasks Completed!

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/completed.png">
</p>
<br>

<p style="text-align: justify;"> You’ve successfully completed the TryHackMe OSINT Challenge. This room is an excellent introduction to practical OSINT and digital forensics, teaching how to gather and analyze open-source information across multiple platforms.</p>

### 🚩 Ready for your next TryHackMe adventure?