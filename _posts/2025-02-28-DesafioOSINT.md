---

title: 'TryHackMe: Desafio OSINT'
author: Karina
categories: [TryHackMe, OSINT Challenge, OSINT Tools, ExifTool, Capture The Flag, Cybersecurity Training, GitHub OSINT, Social Media OSINT, Facebook Investigation, Red Team Tactics, Offensive Security, Ethical Hacking, CTF Walkthrough, Digital Footprint, Online Reconnaissance, Beginner CTF Guide, TryHackMe Rooms, Kai Nola Sato, nolasatokai]
tags: [tryhackme, tryhackme osint challenge, osint tools, exiftool tutorial, capture the flag, ctf walkthrough, github osint, social media osint, facebook osint, red team, offensive security, ethical hacking, online footprint, digital reconnaissance, beginner ctf, open source intelligence, kai nola sato, nolasatokai, wappalyzer]
render_with_liquid: false
image:
  path: /assets/img/tryhackme/desafioOSINT/icon.webp
  
---

# TryHackMe: Desafio OSINT

## Full Walkthrough & Guide

<p style="text-align: justify;"> 
This is a complete walkthrough of the <strong>OSINT Challenge</strong> hosted on <strong>TryHackMe</strong>, a popular cybersecurity learning platform. This open-source intelligence (OSINT) room challenges users to trace a fictional character’s digital footprint, starting from a single image. 
</p> 

<p style="text-align: justify;"> 
Throughout the challenge, participants will extract metadata, perform reverse image searches, investigate social media activity, and explore GitHub repositories to discover hidden flags—one of which is cleverly embedded in an interactive element on a personal blog. Perfect for cybersecurity beginners and digital investigators, this hands-on <strong>CTF (Capture The Flag)</strong> provides practical OSINT training using real-world techniques.
</p> 

<p style="text-align: justify;"> 
Whether you're preparing for a cybersecurity career, studying for OSINT certifications, or just love solving online puzzles, this room is a great way to boost your reconnaissance skills and learn how to track someone online using only publicly available data.
</p>

## Access room here: 

👉 [https://tryhackme.com/room/desafioosint](https://tryhackme.com/room/desafioosint)


## Task 1 - OSINT: Image

<p style="text-align: justify;">
The challenge starts with an image. Your mission: extract metadata and find clues that reveal the photo's location.
</p>

![/assets/img/tryhackme/desafioOSINT/trip-1719941392499-1729532974063.JPG](/assets/img/tryhackme/desafioOSINT/trip-1719941392499-1729532974063.JPG)

|  Questions  |
|-------|
| Q1. What is the username? |
| Q2. What is the User's full name? |
| Q3. Where was the photo taken? |


### Q1. What is the username?

<p style="text-align: justify;">
To retrieve image metadata, you can use various online EXIF viewers. On Linux systems, the <strong>exiftool</strong> command is ideal: 
</p>

```console
exiftool <filename>
```

<p style="text-align: justify;"> If it's not installed, run: </p>

```console
sudo apt install exiftool
```

> _☝️🤓 For other platforms, follow the [Installation Guide](https://exiftool.org/install.html)._

![/assets/img/tryhackme/desafioOSINT/username.png](/assets/img/tryhackme/desafioOSINT/username.png)

### Q2. What is the User's full name?

<p style="text-align: justify;">
By continuing to analyze the metadata, you’ll uncover the user’s real name. Always look carefully at fields like Author, Artist, Creator, Copyright and Owner: 
</p>

![/assets/img/tryhackme/desafioOSINT/user-full-name.png](/assets/img/tryhackme/desafioOSINT/user-full-name.png)

### Q3. Where was the photo taken?

<p style="text-align: justify;">
Drop the image on Google:
</p>

![/assets/img/tryhackme/desafioOSINT/place.png](/assets/img/tryhackme/desafioOSINT/place.png)

> _🇧🇷 This challenge is in **Portuguese**, so remember to translate and interpret clues accordingly._


## Task 2 - OSINT: Social Media

<p style="text-align: justify;">
Now that you have the username and full name, start your social media investigation. Use platforms like Facebook, Instagram, X (Twitter), and LinkedIn to track down personal details. 
</p>

|  Questions  |
|-------|
| Q1. What is the user's city of birth? |
| Q2. Where was the user on May 13, 2024? |
| Q3. What is the user's email? |


### Q1. What is the user's city of birth?

<p style="text-align: justify;">
Look at the user’s public profiles. Facebook and LinkedIn often contain biographical details like the city of birth or hometown.
</p>

![/assets/img/tryhackme/desafioOSINT/facebook.png](/assets/img/tryhackme/desafioOSINT/facebook.png) 

![/assets/img/tryhackme/desafioOSINT/twitter-x.png](/assets/img/tryhackme/desafioOSINT/twitter-x.png) 

> _☝️🤓 Again: This challenge is in **Portuguese**, so remember to translate and interpret clues accordingly._

### Q2. Where was the user on May 13, 2024?

<p style="text-align: justify;">
Scroll through social media posts and geotagged photos. Users often share travel details or check-ins that reveal their location.
</p>

![/assets/img/tryhackme/desafioOSINT/may-13-2024.png](/assets/img/tryhackme/desafioOSINT/may-13-2024.png)

![/assets/img/tryhackme/desafioOSINT/may-13-place.png](/assets/img/tryhackme/desafioOSINT/may-13-place.png)

### Q3. What is the user's email?

<p style="text-align: justify;">
GitHub can be a goldmine for OSINT. Check commits and profile settings to uncover the user’s email address.
</p>

![/assets/img/tryhackme/desafioOSINT/email.png](/assets/img/tryhackme/desafioOSINT/email.png)

## Task 3 - First Flag: Welcome to the CSSDC OSINT CTF

<p style="text-align: justify;">
Now that you have several user data, look for the first flag.
</p>

|  Question  |
|-------|
| Q1. What flag is found in the repository? |


### Q1. What flag is found in the repository? 

<p style="text-align: justify;">
Now that we’ve gathered some personal data, the first flag is hidden inside a GitHub repository. Look for a repo named <strong>"cssdc"</strong>, as referenced in the challenge description.
</p>

![/assets/img/tryhackme/desafioOSINT/repo.png](/assets/img/tryhackme/desafioOSINT/repo.png) 

![/assets/img/tryhackme/desafioOSINT/file.png](/assets/img/tryhackme/desafioOSINT/file.png) 

> _😲 Spoiler alert... it’s in there!_

![/assets/img/tryhackme/desafioOSINT/flag.png](/assets/img/tryhackme/desafioOSINT/flag.png) 

## 🏁 Task 4 - Final Flag

<p style="text-align: justify;">
Continue collecting more data from the user and find the last flag on the user's personal page.
</p>

|  Questions  |
|-------|
| Q1. What is the user's blog address? |
| Q2. Which database does the website use? |
| Q3. Search for the Flag on the Website. |

### Q1. What is the user's blog address?

<p style="text-align: justify;">
Most GitHub profiles include personal websites or blogs in the bio section. You’ll find the link easily.
</p>

![/assets/img/tryhackme/desafioOSINT/blog.png](/assets/img/tryhackme/desafioOSINT/blog.png) 

### Q2. Which database does the website use?

Use tools like [Wappalyzer](https://www.wappalyzer.com/) to analyze the site’s backend technologies.

> _☝️🤓 Install Wappalyzer as a browser extension._

![/assets/img/tryhackme/desafioOSINT/db.png](/assets/img/tryhackme/desafioOSINT/db.png)

### Q3. Search for the Flag on the Website.

<p style="text-align: justify;">
Click around every element on the blog. Hover over unusual elements and inspect hidden content or embedded text.
</p>

![/assets/img/tryhackme/desafioOSINT/dot.png](/assets/img/tryhackme/desafioOSINT/dot.png)

![/assets/img/tryhackme/desafioOSINT/final-flag.png](/assets/img/tryhackme/desafioOSINT/final-flag.png)

## 🎉 Congratulations! All Tasks Completed!

![/assets/img/tryhackme/desafioOSINT/completed.png](/assets/img/tryhackme/desafioOSINT/completed.png)

<p style="text-align: justify;">
You’ve successfully completed the TryHackMe OSINT Challenge. This room is an excellent introduction to practical OSINT and digital forensics, teaching how to gather and analyze open-source information across multiple platforms.
</p>

## 🚩 Ready for your next TryHackMe adventure?