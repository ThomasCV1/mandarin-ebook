far_east_1 = Book.create(english_title: "Far East Everyday Chinese", chinese_title: "遠東生活", series: 1)
far_east_2 = Book.create(english_title: "Far East Everyday Chinese", chinese_title: "遠東生活", series: 2)
far_east_3 = Book.create(english_title: "Far East Everyday Chinese", chinese_title: "遠東生活", series: 3)
far_east_3.articles.create(title: "電腦與生活 Life and Computers", content: "大海 嗨，好久不見，你這麼著急，要上哪裡去啊？/家明 就是那篇其中報告嘛！我非去圖書館找資料不可，你的報告寫完了嗎？/大海 上網找不是比較方便嗎？用搜尋引擎很容易就可以找到任何你需要的資料，下載到隨身碟裡就可以了。/家明 我知道啊，可是我的電腦壞了，不能上網。/大海 那你怎麼不去學校的電腦教室上網呢？/家明 去是想去，可是聽說最近有很多厲害的病毒，我怕。。/大海 說的也是。雖然裝了防毒軟體，還是把所有的病毒都清除乾淨。", chapter_id: 1)
far_east_3.articles.create(title: "網路對生活的影響 The Internet's Influence on Our Lives", content: "", chapter_id: 2)
far_east_3.articles.create(title: "談生意 Doing Business", content: "", chapter_id: 3)
far_east_3.articles.create(title: "消費糾紛 Consumer Disputes", content: "", chapter_id: 4)
far_east_3.articles.create(title: "股票市場 The Stock Market", content: "", chapter_id: 5)
far_east_3.articles.create(title: "投資理財 Financial Management and Investment", content: "", chapter_id: 6)
far_east_3.articles.create(title: "金融危機 Economic Crisis", content: "", chapter_id: 7) 

far_east_3.vocab_lists.create(title: "電腦與生活 Life and Computers", chapter_id: 1)
far_east_3.vocab_lists.create(title: "網路對生活的影響 The Internet's Influence on Our Lives", chapter_id: 2)
far_east_3.vocab_lists.create(title: "談生意 Doing Business", chapter_id: 3)
far_east_3.vocab_lists.create(title: "消費糾紛 Consumer Disputes", chapter_id: 4)
far_east_3.vocab_lists.create(title: "股票市場 The Stock Market", chapter_id: 5)
far_east_3.vocab_lists.create(title: "投資理財 Financial Management and Investment", chapter_id: 6)
far_east_3.vocab_lists.create(title: "金融危機 Economic Crisis", chapter_id: 7) 

far_east_3.vocab_lists.find(1).entries.create(pinyin: "yu3", character: "與", part_of_speech: "Conj", definition: "and, with")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "tu2shu1guan3", character: "圖書館", part_of_speech: "N", definition: "library")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "zi1liao4", character: "資料", part_of_speech: "N", definition: "information, data, materials")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "shang4wang3", character: "上網", part_of_speech: "VO", definition: "to get online")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "sou1xun2yin3qing2", character: "搜尋引擎", part_of_speech: "N", definition: "search engine")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "sou1xun2", character: "搜尋", part_of_speech: "N/V", definition: "search/to search for")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "yin3qing2", character: "引擎", part_of_speech: "N", definition: "engine (sound loan)")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "ren4he2", character: "任何", part_of_speech: "AT", definition: "any, whatever")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "xia4zai4", character: "下載", part_of_speech: "V", definition: "to download")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "zai4", character: "載", part_of_speech: "V", definition: "to carry, to hold")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "sui2shen1die2", character: "隨身碟", part_of_speech: "N", definition: "USB drive")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "bing4du2", character: "病毒", part_of_speech: "N", definition: "virus")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "zhuang1", character: "裝", part_of_speech: "V", definition: "to install; to load, to fill")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "fang2du3ruan3ti3", character: "防毒軟體", part_of_speech: "N", definition: "antivirus software")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "ruan3ti3", character: "軟體", part_of_speech: "N", definition: "software")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "suo3you3de", character: "所有的", part_of_speech: "AT", definition: "all, every single one")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "shen4zhi4yu2", character: "甚至於", part_of_speech: "N", definition: "go so far as to, even to the point that")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "guang1die2", character: "光碟", part_of_speech: "N", definition: "compact disk")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "zhe4xia4zi", character: "這下子", part_of_speech: "Conj", definition: "now, in this case")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "dao3mei2", character: "倒楣", part_of_speech: "SV", definition: "to be out of luck, an unlucky break")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "hua4shuo1hui2lai2", character: "話說回來", part_of_speech: "IE", definition: "however, on the other hand")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "shuru1", character: "輸入", part_of_speech: "V", definition: "to enter, to input")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "guan1jian4zi4", character: "關鍵字", part_of_speech: "N", definition: "key word")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "guan1jian4", character: "關鍵", part_of_speech: "N", definition: "key, turning point, crux")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "suo1xiao3", character: "縮小", part_of_speech: "V", definition: "to reduce, to shrink")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "fan4wei2", character: "範圍", part_of_speech: "N", definition: "range, scope")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "kuo4da4", character: "擴大", part_of_speech: "V", definition: "to enlarge, expand")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "yuan2lai2ru2ci3", character: "原來如此", part_of_speech: "IE", definition: "I see (so that's how it is)")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "wang3zhi3", character: "網址", part_of_speech: "N", definition: "web address, URL")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "wang3zhan4", character: "網站", part_of_speech: "N", definition: "website")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "wangye1", character: "網頁", part_of_speech: "N", definition: "web page")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "hua4mian4", character: "畫面", part_of_speech: "N", definition: "screen, picture, image")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "fan3ying4", character: "反應", part_of_speech: "N/V", definition: "reaction, response/to react, respond")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "lian2xian4", character: "連線", part_of_speech: "VO", definition: "to connect (to the internet etc.), to get online, to log on to the internet")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "shang4xian4", character: "上線", part_of_speech: "VO", definition: "to get online, to get on the internet")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "li2feng1shi2jian1", character: "離峰時間", part_of_speech: "N", definition: "off-peak time (i.e. not during busy hours)")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "suo3wei4de", character: "所謂的", part_of_speech: "IE", definition: "so-called")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "zhi3", character: "指", part_of_speech: "V", definition: "to refer to, to point")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "xue2shu4", character: "學術", part_of_speech: "N", definition: "learning, academics, science")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "shang1ye4", character: "商業", part_of_speech: "N", definition: "commerce, business")
far_east_3.vocab_lists.find(1).entries.create(pinyin: "re4men2", character: "熱門", part_of_speech: "SV", definition: "to be popular")

# far_east_3 = Book.create(english_title: "Far East Everyday Chinese", chinese_title: "遠東生活", series: 3)
# far_east_3.articles.create(title: "Life and Computers", content: "大海 嗨，好久不見，你這麼著急，要上哪裡去啊？/家明 就是那篇其中報告嘛！我非去圖書館找資料不可，你的報告寫完了嗎？/大海 上網找不是比較方便嗎？用搜尋引擎很容易就可以找到任何你需要的資料，下載到隨身碟裡就可以了。/家明 我知道啊，可是我的電腦壞了，不能上網。/大海 那你怎麼不去學校的電腦教室上網呢？/家明 去是想去，可是聽說最近有很多厲害的病毒，我怕。。。/大海 說的也是。雖然裝了防毒軟體，還是把所有的病毒都清除乾淨。", chapter_id: 1)
# far_east_3.vocab_lists.create(title: "Life and Computers", chapter_id: 1)
# far_east_3.vocab_lists.find(1).entries.create(pinyin: "tu2shu1guan3", character: "圖書館", part_of_speech: "N", definition: "library")
# far_east_3.vocab_lists.entries.create(pinyin: "re4men2", character: "熱門", part_of_speech: "SV", definition: "to be popular")

# "大海 嗨，好久不見，你這麼著急，要上哪裡去啊？/家明 就是那篇其中報告嘛！我非去圖書館找資料不可，你的報告寫完了嗎？/大海 上網找不是比較方便嗎？用搜尋引擎很容易就可以找到任何你需要的資料，下載到隨身碟裡就可以了。/家明 我知道啊，可是我的電腦壞了，不能上網。/大海 那你怎麼不去學校的電腦教室上網呢？/家明 去是想去，可是聽說最近有很多厲害的病毒，我怕。。。/大海 說的也是。雖然裝了防毒軟體，還是把所有的病毒都清除乾淨。/家明： 新病毒是很難發現的，最近有一家賣軟體的公司甚至於連自己賣出去的光碟裏面有病毒都堵知道。／大海： 這下子，買光碟的人不是很倒楣嗎？不過話說回來，因為怕病毒就不上網，不用電腦，那多不方便啊！／家明： 你說的對。我這就去電腦教室。對了，我有個問題想請教你，你現在有空嗎？／大海： 什麼問題，你說吧，我現在沒什麼事。"
# 255: 
# yu3
# 與
# Conj
# and, with

# tu2shu1guan3
# 圖書館
# N
# library

# zi1liao4
# 資料
# N
# information, data, materials

# shang4wang3
# 上網
# VO
# to get online/the Internet

# sou1xun2 yin3qing2
# 搜尋引擎
# N
# search engine

# sou1xun2
# 搜尋
# N/V
# search / to search for

# yin3qing2
# 引擎
# N
# engine (sound loan)

# ren4he2
# 任何
# AT
# any, whatever

# xia4zai4
# 下載
# V
# to download

# zai4
# 載
# V
# to carry, to hold

# sui2shen1die2
# 隨身碟
# N
# USB drive

# bing4du2
# 病毒
# N
# virus

# zhuang1
# 裝
# V
# to install; to load, to fill

# fang2du3 ruan3ti3
# 防毒軟體
# N
# antivirus software

# ruan3ti3
# 軟體
# N
# software

# suo3you3 de
# 所有的
# AT
# all, every single one

# shen4zhi4yu2
# 甚至於
# Conj
# go so far as to, even to the point that

# guang1die2
# 光碟
# N
# compact disk

# zhe4xia4zi
# 這下子
# Conj
# now, in this case

# dao3mei2
# 倒楣
# SV
# to be out of luck, an unlucky break

# hua4 shuo1 hui2lai2
# 話說回來
# IE
# however, on the other hand

# shu1ru4
# 輸入
# V
# to enter, to input

# guan1jian4zi4
# 關鍵字
# N
# kewy Entry(s)

# guan1jian4
# 關鍵
# N
# key, turning point, crux

# suo1xiao3
# 縮小
# V
# to reduce, to shrink

# fan4wei2
# 範圍
# N
# range, scope

# kuo4da4
# 擴大
# V
# to enlarge, to expand

# yuan2lai2 ru2ci3
# 原來如此
# IE
# I see (so that's how it is)

# wang3zhi3
# 網址
# N
# web address, URL

# wang3zhan4
# 網站
# N
# website

# wang3ye4
# 網頁
# N
# web page

# hua4mian4
# 畫面
# N
# screen, picture, image

# fan3ying4
# 反應
# N/V
# reaction, response / to react, respond

# lian2xian4
# 連線
# VO
# to connect to (the internet etc.), to get online, to log on to the internet

# shang4xian4
# 上線
# VO
# to get online, to get on the internet

# li2feng1 shi2jian1
# 離峰時間
# N
# off-peak time (i.e. not during busy hours)

# suo3wei4 de
# 所謂的
# IE
# so-called

# zhi3
# 指
# V
# to refer to, to point

# xue2shu4
# 學術
# N
# learning, academics, science

# shang1ye4
# 商業
# N
# commerce, business

# re4men2
# 熱門
# SV
# to be popular