
# refence from Zhuoqin Yu
for i in 20170301_play.log.gz 20170302_1_play.log.tar.gz 20170303_1_play.log.tar.gz 20170304_1_play.log.tar.gz 20170305_1_play.log.tar.gz 20170306_1_play.log.tar.gz 20170307_1_play.log.tar.gz 20170308_1_play.log.tar.gz 20170309_1_play.log.tar.gz 20170329_1_play.log.tar.gz 20170330_3_play.log.tar.gz 20170331_1_play.log.tar.gz 20170331_2_play.log.tar.gz 20170331_3_play.log.tar.gz 20170401_1_play.log.tar.gz 20170401_2_play.log.tar.gz 20170401_3_play.log.tar.gz 20170402_1_play.log.tar.gz 20170402_2_play.log.tar.gz 20170402_3_play.log.tar.gz 20170403_1_play.log.tar.gz 20170403_2_play.log.tar.gz 20170404_1_play.log.tar.gz 20170404_2_play.log.tar.gz 20170404_3_play.log.tar.gz 20170405_1_play.log.tar.gz 20170405_2_play.log.tar.gz 20170405_3_play.log.tar.gz 20170406_1_play.log.tar.gz 20170406_2_play.log.tar.gz 20170406_3_play.log.tar.gz 20170407_1_play.log.tar.gz 20170407_2_play.log.tar.gz 20170407_3_play.log.tar.gz 20170408_1_play.log.tar.gz 20170408_2_play.log.tar.gz 20170408_3_play.log.tar.gz 20170409_1_play.log.tar.gz 20170409_2_play.log.tar.gz 20170409_3_play.log.tar.gz 20170410_1_play.log.tar.gz 20170410_2_play.log.tar.gz 20170410_3_play.log.tar.gz 20170411_1_play.log.tar.gz 20170411_2_play.log.tar.gz 20170412_1_play.log.tar.gz 20170412_2_play.log.tar.gz 20170412_3_play.log.tar.gz 20170413_1_play.log.tar.gz 20170413_2_play.log.tar.gz 20170413_3_play.log.tar.gz 20170414_1_play.log.tar.gz 20170414_2_play.log.tar.gz 20170414_3_play.log.tar.gz 20170415_1_play.log.tar.gz 20170415_2_play.log.tar.gz 20170415_3_play.log.tar.gz 20170416_1_play.log.tar.gz 20170416_2_play.log.tar.gz 20170416_3_play.log.tar.gz 20170417_1_play.log.tar.gz 20170417_2_play.log.tar.gz 20170417_3_play.log.tar.gz 20170418_1_play.log.tar.gz 20170418_2_play.log.tar.gz 20170418_3_play.log.tar.gz 20170419_1_play.log.tar.gz 20170419_2_play.log.tar.gz 20170419_3_play.log.tar.gz 20170420_1_play.log.tar.gz 20170420_2_play.log.tar.gz 20170420_3_play.log.tar.gz 20170421_1_play.log.tar.gz 20170421_2_play.log.tar.gz 20170421_3_play.log.tar.gz 20170422_1_play.log.tar.gz 20170422_2_play.log.tar.gz 20170422_3_play.log 20170422_3_play.log.tar.gz 20170423_1_play.log.tar.gz 20170423_2_play.log.tar.gz 20170423_3_play.log.tar.gz 20170424_1_play.log.tar.gz 20170424_2_play.log.tar.gz 20170424_3_play.log.tar.gz 20170425_1_play.log.tar.gz 20170425_2_play.log.tar.gz 20170425_3_play.log.tar.gz 20170426_1_play.log.tar.gz 20170426_2_play.log.tar.gz 20170426_3_play.log.tar.gz 20170427_1_play.log.tar.gz 20170427_2_play.log.tar.gz 20170427_3_play.log.tar.gz 20170428_1_play.log.tar.gz 20170428_2_play.log.tar.gz 20170428_3_play.log.tar.gz 20170429_1_play.log.tar.gz 20170429_2_play.log.tar.gz 20170429_3_play.log.tar.gz 20170430_1_play.log.tar.gz 20170430_2_play.log.tar.gz 20170430_3_play.log.tar.gz 20170501_1_play.log.tar.gz 20170501_2_play.log.tar.gz 20170501_3_play.log.tar.gz 20170502_1_play.log.tar.gz 20170502_2_play.log.tar.gz 20170502_3_play.log.tar.gz 20170503_1_play.log.tar.gz 20170503_2_play.log.tar.gz 20170503_3_play.log.tar.gz 20170504_1_play.log.tar.gz 20170504_2_play.log.tar.gz 20170504_3_play.log.tar.gz 20170505_1_play.log.tar.gz 20170505_2_play.log.tar.gz 20170505_3_play.log.tar.gz 20170506_1_play.log.tar.gz 20170506_2_play.log.tar.gz 20170506_3_play.log.tar.gz 20170507_1_play.log.tar.gz 20170507_2_play.log.tar.gz 20170507_3_play.log.tar.gz 20170508_1_play.log.tar.gz 20170508_2_play.log.tar.gz 20170508_3_play.log.tar.gz 20170509_1_play.log.tar.gz 20170509_2_play.log.tar.gz 20170509_3_play.log.tar.gz 20170510_1_play.log.tar.gz 20170510_2_play.log.tar.gz 20170510_3_play.log.tar.gz 20170511_1_play.log.tar.gz 20170511_2_play.log.tar.gz 20170511_3_play.log.tar.gz 20170512_1_play.log.tar.gz 20170512_2_play.log.tar.gz 20170512_3_play.log.tar.gz 

do 
curl -o data/raw/$i https://bittigermusicplayerdata.s3-us-west-2.amazonaws.com/$i
done

