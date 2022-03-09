import numpy as np
import streamlit as st
import tensorflow as tf
import string
import re
import nltk
from nltk.corpus import stopwords
import requests
from streamlit_lottie import st_lottie

# funtion and load icon
## function
def load_lottieurl(url: str):
        r = requests.get(url)
        if r.status_code != 200:
            return None
        return r.json()
## icon varible
lottie_trust = load_lottieurl("https://assets9.lottiefiles.com/packages/lf20_QKAj42.json")
lottie_word = load_lottieurl("https://assets7.lottiefiles.com/packages/lf20_9hoho1z4.json")
lottie_picture = load_lottieurl("https://assets6.lottiefiles.com/packages/lf20_hcew66e3.json")
def app():
    st.title('Hoax Detection :newspaper:')
    st.caption('''
    Input news that you suspect is fake news.
    '''
    )
    st.write('---')
    
    title = st.text_input("Input news title here.")
    body = st.text_area("Input news content here.")

    results = st.button('Predict')

    # if results:
    #     if title and body:
    #         # cleaning text
    #         # stopwords
    #         try:
    #             stop_words = set(stopwords.words("indonesia"))
    #         except:
    #             nltk.download('stopwords')
    #             stop_words = set(stopwords.words("indonesia"))

    #         # remove the stopwords and single-character words
    #         def remove_sw_and_sc(text):
    #             final_text = []
    #             for i in text.split():
    #                 if i.strip() not in stop_words and len(i) > 1:
    #                     final_text.append(i.strip())
    #             return " ".join(final_text)

    #         # combine all functions above
    #         def clean_text(text):
    #             text = text.lower() # convert to lowercase
    #             text = re.sub('\[.*?\]', '', text) # remove text in square brackets
    #             text = re.sub('[%s]' % re.escape(string.punctuation), '', text) # remove punctuation
    #             text = re.sub('\w*\d\w*', '', text) # remove words containing numbers
    #             text = re.sub('http\S+|\S+\.com\S+|bit.ly\S+', '', text) # remove url
    #             text = re.sub(r'\@\S+', '', text) # remove mention
    #             text = re.sub('[‘’“”…]', '', text) # remove other punctuation
    #             text = remove_sw_and_sc(text)
    #             return text

    #         # apply function on review column
    #         data = title + " " + body
    #         data = clean_text(data)

    #         # predict
    #         model = tf.keras.models.load_model('prediksi_hoaks')
    #         hasil = model.predict([data])
            
    #         if np.round(hasil) == 1:
    #             res = "Berita merupakan hoax"
    #             # show results
    #             st.write(f"{res}")
    #             st.write('---')
    #             st.write('''
    #             Karakter Berita Hoax
    #             ''')
    #             col1,col2,col3 = st.columns(3)

    #         else:
    #             res = "Berita tidak hoax"
    #             # show results
    #             st.write(f"{res}")

    if results:
        if body == 'a':
            st.header('Hal - Hal yang dapat dilakukan untuk Validasi')
            st.write('---')
            col1,col2,col3 = st.columns(3)
            with col1:
                st_lottie(
                lottie_trust,
                speed=1,
                reverse=False,
                loop=True,
                quality="medium", # low ; medium ; high
                # renderer="canvas", # canvas
                height=None,
                width=300,
                key=None,
                )
                st.subheader('Kredibilitas Narasumber dalam Berita')
                st.write('''
                - Dapat melakukan pencarian nama **narasumber atau reporter** pada berita dan melihat apakah nama-nama tersebut memiliki track record pemberitaan.
                - Dapat melihat sumber informasi terpercaya dari Dewan Pers, pada link berikut https://dewanpers.or.id/data/perusahaanpers
                ''')
            with col2:
                st_lottie(
                lottie_word,
                speed=1,
                reverse=False,
                loop=True,
                quality="medium", # low ; medium ; high
                # renderer="canvas", # canvas
                height=None,
                width=300,
                key=None,
                )
                st.subheader('Kata-kata yang sering muncul pada berita hoax')
                st.write('''
                Kata yang butuh diwaspadai :
                - informasi
                - salah
                - vaksin
                - jokowi
                ''')
            with col3:
                st_lottie(
                lottie_picture,
                speed=1,
                reverse=False,
                loop=True,
                quality="medium", # low ; medium ; high
                # renderer="canvas", # canvas
                height=None,
                width=300,
                key=None,
                )
                st.subheader('Gambar berita')
                st.write('''
                Cara efektif untuk validasi berita hoax dengan melakukan pencarian gambar yang sesuai dengan topik berita terkait atau dapat dilakukan dengan 
                mencari gambar yang dicantumkan pada berita.
                ''')