# Overview
This is not exactly a guide, but (at least the last time I checked) these links were a better summary of their topics than I could write.

## how to use the internet
* https://www.nytimes.com/wirecutter/blog/internet-security-layers/
* https://www.nytimes.com/wirecutter/blog/best-antivirus
* https://blog.lastpass.com/2021/10/are-you-cyber-smart-a-checklist/
* https://arstechnica.com/features/2021/10/securing-your-digital-life-part-1/

## how to store data
This section needs work!

* operating system on one disk
* files on different disks
* important files backed up in cloud
* very important files on jump drives

## security

* Reduce the number of things you have to remember or protect.
* Always use a password manager like 1password
* Always use a password manager to generate strong passwords (never use the ones you make up yourself)
* Whenever possible, use passkeys and store them in the password manager


What is the minimum number of things you have to protect?
* how do you gain access to your password manager (the "vault" where all your passwords are stored.)
* what are the reset processes for each of those tools?
* Your email account is one of the critical elements because internet accounts are based on your email address. We do this because it's assumed that you and only you have access to your email account.
  * a malicious person with access to your email account could access most of your online identities by initiating a password reset request that sends and email for verification.
* "two factor auth" (2fa)
  * Passwords alone are problematic -- Ali Baba overhearing the password "open sesame" was all it took to defeat the 40 thieves' security system! If they had required the password in addition to having the right physical key (a second form of auth) they might have kept their treasure. https://en.wikipedia.org/wiki/Ali_Baba_and_the_Forty_Thieves
  * The idea of 2FA is that as an attacker, it's hard to steal a password, it's hard to steal a key, phone, or email account. However, as a user, it's easy to have both of those things, and it's not _that_ much more annoying to always use two of them instead of one.
  * This asymmetry between the additional annoyance incurred by having to use two factors versus the additional difficulty incurred by the need to _steal_ two factors is the reason the system works, and why it's kind of elegant.

### Different forms of 2FA
For real, why are there so many?

Ultimately, there are really a few main technologies, but they have a bunch of names.

A few videos might help you build a mental model of how they work:
* RSA https://www.youtube.com/watch?v=Pq8gNbvfaoM
* https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange

* SMS (code sent over text message)
* Email Verification (code sent over email)
* Authenticators (one-time-passwords)(Microsoft Authenticator, One-time-passwords, Google Authenticator)
* Passkeys, Security Keys, "hardware keys" (Apple)

### Normal Life

### Emergency Recovery
  * Always use 2FA whenever it's available.
  * Prefer to use
  * Always prefer 2FA technologies based on hardware keys. This includes tools like Microsoft Authenticator, 1Password, Google Authenticator and physical keys like yubikeys.
  * A common form of 2fa is based on SMS (text messages).
  * The basic idea is that there is only one of your phone, so the owner of the phone must be you!
  * Unfortunately, SMS is not a secure form of 2fa due to threats like [SIM swapping scams](https://en.wikipedia.org/wiki/SIM_swap_scam), although it is much better than no 2fa at all!


