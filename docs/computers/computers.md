# Overview
This is not exactly a guide, but (at least the last time I checked) these links were a better summary of their topics than I could write.

## how to use the internet
* https://www.nytimes.com/wirecutter/blog/internet-security-layers/
* https://www.nytimes.com/wirecutter/blog/best-antivirus
* https://blog.lastpass.com/2021/10/are-you-cyber-smart-a-checklist/
* https://arstechnica.com/features/2021/10/securing-your-digital-life-part-1/

## how to store data
This section needs work!

* Computers fail: the goal is for that to be as painless as possible.
* Install your operating system on a small, fast disk.
  * Keep your personal data files (including documents folders) on a separate disk whenever possible.
  * icloud, onedrive are great options for redundancy.
* Computer parts fail eventually.
  * Cloud storage services from reputable sources (apple, microsoft) are absolutely more secure and reliable than any hardware you can buy and put in your home.
  * Consider backing up most data files to the cloud.
  * High security files you can keep on small jump drives in a safe.

## security
In general:
* Always use a password manager like 1password
* Whenever possible, use pass_keys_ instead of pass_words_
  * Not all websites support passkeys yet -- that's ok. Just do it where you can.
  * Feel free to store those passkeys in your password manager.
  * Passwords are better for sharing, such as between family members. They are not very secure.
    * Never reuse passwords. They are regularly leaked in data breaches, any leaked passwords will be tried on other accounts you may own.
    * Every password should be long (>15 characters)
    * If you can remember it at all, it is a bad password.
* Always use two-factor authorization (aka: 2FA, or "multi-factor auth" MFA -- these are the same thing)
  * As an attacker, there's a certain amount of work required to steal a password, or a physical key, phone, or email account.
  However, as a user, you already have all of those things and it's not _that_ much more annoying to use two of them instead of one.
  * This asymmetry between the small annoyance incurred by having to use two factors versus the large difficulty incurred by the need to steal multiple factors is the reason the system works.
  * Feel free to use your password manager as your second factor (with some exceptions, see below).


What is the minimum number of things you have to protect?
* how do you gain access to your password manager (the "vault" where all your passwords are stored.)
* what are the reset processes for each of those tools?
* Your email account is one of the critical elements because internet accounts are based on your email address. We do this because it's assumed that you and only you have access to your email account.
  * a malicious person with access to your email account could access most of your online identities by initiating a password reset request that sends and email for verification.
* "two factor auth" (2fa)
  * Passwords alone are problematic -- Ali Baba overhearing the password "open sesame" was all it took to defeat the 40 thieves' security system! If they had required the password in addition to having the right physical key (a second form of auth) they might have kept their treasure. https://en.wikipedia.org/wiki/Ali_Baba_and_the_Forty_Thieves
  *

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

# the basic plan

Minimize critical accounts
In an emergency (house burns down, all authorized devices destroyed somehow) you'll need to recover these first as a way "bootstrap" your way back into all your other accounts.
These should be the hardest accounts to steal as an attacker.

If your password manager is compromised / stolen, it must not be possible to log into these accounts.
That means no one time recovery codes for google or 1password should be stored _in_ 1password.




* google account
  * lots of sites use email for primary verification
  * password resets for many sites still rely on email
  * primary form of identification (you must be you if you can log into your email)
* password manager (1password)
  * most of your passwords and passkeys are here.

