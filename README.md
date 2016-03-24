Title: Bitcoin/Altcoin Tools for Newbies - Version 0.2 (Mar 2016)

Created By: ExabyteMiner (exabyte.miner@aol.com)

Help/Info/Requests: https://bitcointalk.org/index.php?topic=1409955.0

BTC: 1MTyUhGqoJNwS7CmgB4ftPv8e2scZCLPgr

LTC: LSUmutbRFsfrJEcgTNSpjStHpg5899gUJX

BERN: BSUbLQodGQ3Jd6QtvpFTg2N7SWzm3feQpT

BOD: bYhmxJ5NXMfPXmkHh3xbZeZaCaiu5rmQ3n

CANN: CZBWsz2TQEJNPZ7d6PBCtVWeKBEH8Gtqn7



INTRO
------------------------
This is the very first edition of BATforN (Bitcoin/Altcoin Tools for Newbies).

BATforN started as a way to make my own Bitcoin/Altcoin tasks faster and easier to accomplish. As I progressed, I decided I
would release my files for public use and so I have also added scripts that I thought might be useful for people who are 
either new to Bitcoin or just less tech-savvy in general. If you're not comfortable with using the debug console, you find 
the debug console confusing to use, etc... then this tool will likely be helpful for you. I will continue to improve and add
features.

All elements of BATforN are entirely open-source with the exception of "coind". If you do not trust my daemon then you can
replace it by going to http://bitcoin.org, download either the 32 or 64 bit ZIP package of the Bitcoin wallet, extract the
downloaded folder, open the "bin" folder inside, rename "bitcoin-cli" to "coind" then copy to "BATforN\Scripts" and
overwrite the old file. Once done, you can delete the rest of the downloaded Bitcoin files.

To view the source code for any of the scripts, simply right-click the script and select "Edit". Do NOT make/save any changes
or you can/will break the script.


USAGE
------------------------
Step 1: Configure BATforN for your coin of choice by running the "Run_First" file. If you have more than one coin, you MUST
        run the "Run_First" file before working with each new coin. Follow the prompts & enter requested info.

Step 2: Open the "Scripts" folder and run the appropriate script for the task you wish to accomplish. Follow the prompts and
        enter the requested information.



CHANGELOG
-------------------------
Mar 24, 2016 - Fixed "SignMessage" and "VerifyMessage" scripts, added functionality to resend stuck transactions

Mar 23, 2016 - Initial Release
