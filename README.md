# Text to audio
Bash scripts which generate speech using google Cloud Text-to-Speech API

Used API:
- [Cloud Text-to-Speech API](https://console.cloud.google.com/apis/library/texttospeech.googleapis.com)

Before use you need to install:
- [jq](https://stedolan.github.io/jq/) - This is a lightweight and flexible command-line JSON processor.
~~~
$ sudo apt install jq
~~~

All audio files will be saved in ```./out``` folder.

To generate speech use `texttospeech.sh` script with arguments
- First: GOOGLE_API_KEY
- Second: Name of file
- Third: Text which you want to generate

Expample: ```$ ./texttospeech.sh YOUR_GOOGLE_API_KEY hello "Hello world!"```. After this you take file `hello.wav` and after playing you hear text "Hello world!".


To generate speech from file use `filetospeech.sh` script with arguments:
- First: GOOGLE_API_KEY
- Second: Path to file which text needed to be voiced

 Structure  of file must be:

```Name_of_file : Text_which_you_want_to_generate```

Example of file `dog_and_cat_voices.txt`:
~~~
dog : woof
cat : meow
~~~
After using script ```$ ./filetospeech.sh YOUR_GOOGLE_API_KEY ./dog_and_cat_voices.txt``` you wiil get two files:
~~~
$ls ./out
cat.wav    dog.wav
~~~
