# Prompt 1

I used Gemini


```
I have already created a version of Bubble Bobble in godot, the code is complete, I just need you to generate me the assets for the game. Each message I will tell you what the image should be called, its purpose and the size of the image.

Lets start with the background, call it bg0.png, make it 800x480.
```

1 Iteration and I got the current background. I had to resize every image that it generated.

# Prompt 2

```
Now, I need you to generate a block0.png, this is what makes up the platforms the player stands on, make it 25x25
```
This produced a 3D image of the block

```
No, I just need a face of the block, make it the entire image
```

This gave me the current block0.png I use

# Prompt 3

```
now I need you to generate a character for the player, make an image of the character standing still facing the camera, make sure there is no background and make it 62x69.
```

1 Iteration but I had to remove the background myself (and I have to for every image after this one), and resize the image.

# Prompt 4

```
ok, great, now make an image of this character facing right, while leaning forward to "blow a bubble". DO NOT INCLUDE THE BUBBLE IN THE IMAGE. make it 72x69
```

1 Iteration, I used this for both directions, by flipping the image.

# Prompt 5

```
ok, now I need you to generate an image of the character jumping to the right. make this one also 72x69
```

This generated an image of the character jumping while blowing a bubble

# Prompt 6

```
keep its mouth closed, it should not look like its blowing a bubble while jumping, also position its legs like mario jumping (one forward, the other behind)
```

This generated the image I use, I flipped the image for the other direction.

# Prompt 7

```
ok, these next 3 images will be for the character to be running. First one, I want the character facing right, right arm forward, left arm behind, left leg forward, and right leg behind. make it 74x69.
```

I use this image, flipping it for the other direction.

# Prompt 8

```
ok, next image will be the in between frame, both legs in the middle, and both arms down. 74x69
```

I used this image, flipping it for the other direction

# Prompt 9

```
now I need the next one, this should be the the opposite arm and leg positions of the first running image but still facing right. 74x69
```

This gave me the same image as the first image of the character running

# Prompt 10

```
ok, you just gave the same image as before, flip whichever arm and leg is forward. so for the image you just gave me, you have the left arm forward and the left leg forward. make it so the right arm is forward and the right leg is forward
```

Same Image again

# Prompt 11

```
You just gave me the same image again, when I say left or right, I am talking about the characters left or right
```

Same Image again

# Prompt 12

```
please, put the other arm forward and the other leg forward
```

This finally gave me the image I use, I flipped it for the other direction

# Prompt 13

```
ok, now the next 5 images are going to be the enemy walking cycle. Keep in mind it will be a 5 frame animation that has to loop. Generate the first image, make them all 50x75.
```

This gave me the first frame in the enemies walking animation, I had to crop and resize the image, as it wasn't using the whole frame for the enemy.

# Prompt 14-17

```
next one
```

Same as before

# Prompt 18

```
Now, I want you to make 8 images (one by one) of the enemy you created but trapped in a bubble like the image I attached. The 8 images should just be the same image but rotated in even steps each time so. The first image should be the enemy trapped in the bubble, while still upright. make all the images 70x72.
```

This generated a table with 1 entry for some reason???

| Frame | Rotation | Trapped | Enemy Asset | Description |
|:-:|:-:|:-:|:-:|:-:|
|1 |0° |(Upright) | | | | |

# Prompt 19

```
what is that, just generate me an image of the enemy trapped in the pink bubble I sent, I will rotate it myself
```

It gave me the image I used, and I rotated the images for the other 7 frames myself

# Prompt 20

```
OK, thats enough for the images, now I want to add some sounds to my game, can you generate me an .ogg file for the player jumping.
```

This generated my a song, I ended up using that song as my background theme, I used a snippet of the song as my jump sound

# Prompt 21

```
ok, I asked for just the jumping sound but I was able to take a part of what you gave me and turned it into a jump sound.



Now I need a very short bubble blowing sound. JUST THE BUBBLE BLOWING SOUND, I DONT WANT BACKGROUND MUSIC.
```

This gave me an entire song, with lyrics and everything so I gave up and recorded the blow, hurt, pop, and step sounds myself.

