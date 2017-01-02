# The Four Fabulous Fanatics

In the Spring of 2016, 4 Software Engineers from a variety of backgrounds came together to take on a challenge: Let's say an binary message was received from deep space.  How would you go about decoding it?

The 4 Software Engineers?
Benjamin: The Mathematician
Brian: The Engineer
Ksenia: The Biologist
Matt: The, uh, Other Biologist

Together with a buttload of caffeine, they combined their skills somewhere in Petaluma, CA, to answer The Great Questions (see below).  We solved it using a variety of techniques and creativity.   You can find us on the list of successful decoders [here](http://www2.mps.mpg.de/homes/heller/downloads/files/SETI_crackers.txt).


# The Challenge Given To Us

This is a call for a fun scientific challenge.

Suppose a telescope on Earth receives a series of pulses from a fixed, unresolved source beyond the solar system. The source is a star about 50 light years from Earth. The pulses are in the form of short/long signals and they are received in a very narrow band around an electromagnetic frequency of 452.12919 MHz. A computer algorithm identifies the artificial nature of the pulses. It turns out the pulses carry a message. The pulses signify binary digits. Suppose further that you were, by whatsoever reason, put in charge of decoding this message.

If you successfully decrypted the message, you should be able to answer the following questions:

1. What is the typical body height of our interstellar counterparts?
2. What is their typical lifetime?
3. What is the scale of the devices they used to submit their message?
4. Since when have they been communicating interstellar?
5. What kind of object do they live on?
6. How old is their stellar system?

These are the rules.

1. No restrictions on collaborations.
2. Open discussion (social networks etc.) of possible solutions strongly encouraged.
3. 3 hints to the solutions can be offered as per request.
4. Send your solutions to me via e-mail (heller@mps.mpg.de), twitter (@DrReneHeller) or facebook (DrReneHeller). Human-readable format and the format of the message are allowed.
5. On 3 June 2016, a list of the successful SETI crackers (in chronological order) will be released.


UPDATE 6 May 2016:
This call generated an e-mail storm on me. I kindly ask you for your understanding that I will restrict replies via e-mail to a minimum. Correct submissions will, of course, be acknowledged.


UPDATE 7 May 2016
E-mail traffic is still overwhelming. From now on, I will not be able to give additional hints and will only respond to correct (or very creative) solutions via e-mail in English or German.

These are the three hints mentioned in the rules.

1. The number of bits (0 or 1) is 1902341. This is a product of the prime numbers 7, 359, and 757.

2. The message is the black/white pixel map of an image.

3. The image shows 7 pictures or pages. As a sanity check, you will be able to recover the duration of the travel time (50 years) from page 4.

# Our Solution

Below is the logic that we used to solve the challenge.

## The Primes

The fact that the size of the number of bits was two large prime numbers (in addition to 7) was a bit suspicious to us.  If we were to try to send an image via binary symbology, such that the image was rectangular, it would make sense to make the full length the product of two large coprime numbers.  Thus it was reasonable to conclude that the image would take the form of a rectangle, with width either 359 or 757.

## The First "Eureka"

After attempting many viewing formats (since the file is HUGE), we decided to output the rectangular image to the console.  We figured it would be easiest to view with " " in place of the zeroes, and "X" in place of the ones.  If you'd like to see what we saw, try opening 'image_files/imagify.rb' in the console (be aware it's a HUGE file).  As we all gathered around one laptop to assess the slowly-loading image, imagine our surprise when THIS popped up on the screen.

![alt text](images/AlienHead.png "Scary Alien Head")

So we all screamed out of excitement/horror and knew that we were on the right track.  In addition to the freaky alien staring out of our screen, we had also seen a vertical line of 1s (meaning one every 359 bits, probably to inform the reader of the scale), as well as a sine curve (?).

## The 7 Parts

In time, we sorted the image into 7 equal-height (757 parts).

1. A "vertical line".  Nothing else, possibly to set the width standard.  No dividing line afterward.

2. A list of numbers 1 to 756 in binary.  Note that these aliens write binary starting from the right, rather than the left (making 011=6, and so on).  This is probably the result of their anatomy.  We use this system throughout the rest of the decoding process.  No dividing line afterward.

3. A list of 756 primes using their binary system.  It begins with the first prime (2) to the 756th (5743).  At first we thought this would be relevant later, but someone pointed out that this is probably just to show a sign of intelligence.

4. A sine curve.  We figure this represents the wave that the message was sent in (frequency of 452.12919 MHz).  We initially compared this to the image in #5 to approximate the size of the alien, but this information proved to be incorrect later.  Following the primes is two lines of seemingly-random 1s and 0s.  We now had access to their numbering system, so we recorded this for later.

5. An image of an alien.  Height: ~ 1.32 meters when compared to the sine wave, later shown to be incorrect.  More seemingly-random 1s and 0s.

6. An image of spaceships/satellites, followed by more seemingly-random 1s and 0s.

7. An image of an alien sideways next to a planet, followed by other planets.  This is most likely an indication of their home planet being 4th from their sun.  More seemingly-random 1s and 0s.

## The Seemingly-Random 1s and 0s Between Each Section

The images correlated to the questions in a strange way.

Sine Curve: Not connected to any questions, possibly sets the constants.
Alien Body: Connected to Questions 1 and 2
Spaceships/Satellites: Connected to Questions 3 and 4
Planets: Connected to Questions 5 and 6

We figured there was a possibility that the 2 numbers at the bottom of each image specified something to do with the image.  Maybe the 2 numbers above the Alien Body meant their height and typical lifetime for example.  If this is true then for each pair of numbers, one would be a reference to a certain distance (height), and the other would be a reference to a certain length of time (lifespan).

So if we can find a certain scale to compare the alien height to, we could use that to convert the other numbers.  This pointed us to the numbers above the sine curve, since they aren't used for any of the questions.  Brian figured out a very strange pattern between these two numbers.  Number2 / Number1 is equal to 50 light years (distance from the alien planet) * 365.25 days/year * 24 hours/ day * 3600 seconds/hour * frequency of the signal (452.12919 MHz).

The implications of this are HUGE, since this not only gives us a unit of distance / time, which can be used as a unit for the other distances and times, but it also means that the aliens specifically sent the message to us.  The distance between our planets was used as a conversion factor, since they probably figured that we would be able to calculate that number ourselves.  It's like they're winking at us.

This conversion number (let's call it X) was multiplied by all of the numbers in order to convert them to a distance (number1) and a timeframe (number2).

## The Sections and the Numbers

Below each section are two numbers.  One that refers to a distance, and one that refers to a length of time.  Given the images, we infer the following connections.

The numbers below the alien body are the aliens' height (distance), and lifespan (time).
The numbers below the satellites are the size of the devices they used to submit their message (distance), and how long they have been communicating interstellar.
The numbers below the planets are the size of their planet (distance), and the age of their stellar system (time).

This allowed us to answer the following questions:
1. What is the typical body height of our interstellar counterparts?
2.45m
2. What is their typical lifetime?
180 years
3. What is the scale of the devices they used to submit their message?
100km
4. Since when have they been communicating interstellar?
10,000 Earth-years
5. What kind of object do they live on?
.26 AU, on the fourth planet from their sun.
6. How old is their stellar system?
6 million Earth-years

The height and lifespan seemed reasonable, so we submitted our solutions to Dr. Rene Heller and got a confirmation that evening!  You can find us on the list of successful decoders [here](http://www2.mps.mpg.de/homes/heller/downloads/files/SETI_crackers.txt).
