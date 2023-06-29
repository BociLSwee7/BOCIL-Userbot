#==============×==============#
#      Created by: ʙᴏᴄɪʟ_sᴡᴇᴇ7
#=========× ʙᴏᴄɪʟ_sᴡᴇᴇ7 ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Bocil-Userbot https://github.com/BociLSwee7/Bocil-Userbot /home/ayiinuserbot/ \
    && chmod 777 /home/ayiinuserbot \
    && mkdir /home/ayiinuserbot/bin/

COPY ./sample_config.env ./config.env* /home/ayiinuserbot/

WORKDIR /home/ayiinuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
