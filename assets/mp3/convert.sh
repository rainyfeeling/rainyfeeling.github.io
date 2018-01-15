string="abcdefghijklmnopgrstuvwxyz"

# num=0~25
for num in `seq 0 9`
do
	letter=`echo ${string:$num:1}`
	letter=$num
	vlc "$letter.mp3" -I dummy --sout="#transcode{vcodec=none,acodec=vorb,ab=64,channels=2,samplerate=44100}:std{access=file,mux=ogg,dst='$letter.ogg'}" vlc://quit
done
