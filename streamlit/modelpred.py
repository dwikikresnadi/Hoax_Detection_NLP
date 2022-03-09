import numpy as np
import streamlit as st
import tensorflow as tf
import string
import re
import nltk
from nltk.corpus import stopwords

def app():
    st.title('Fake News Prediction')
    st.caption('''
    Input news that you suspect is fake news. The prediction accuracy rate of this app is about 99.7%.
    '''
    )
    
    title = st.text_input("Input news title here.")
    body = st.text_area("Input news content here.")

    if title and body:
        # cleaning text
        # stopwords
        try:
            stop_words = set(stopwords.words("english"))
        except:
            nltk.download('stopwords')
            stop_words = set(stopwords.words("english"))

        # remove the stopwords and single-character words
        def remove_sw_and_sc(text):
            final_text = []
            for i in text.split():
                if i.strip() not in stop_words and len(i) > 1:
                    final_text.append(i.strip())
            return " ".join(final_text)

        # combine all functions above
        def clean_text(text):
            text = text.lower() # convert to lowercase
            text = re.sub('\[.*?\]', '', text) # remove text in square brackets
            text = re.sub('[%s]' % re.escape(string.punctuation), '', text) # remove punctuation
            text = re.sub('\w*\d\w*', '', text) # remove words containing numbers
            text = re.sub('http\S+|\S+\.com\S+|bit.ly\S+', '', text) # remove url
            text = re.sub(r'\@\S+', '', text) # remove mention
            text = re.sub('[‘’“”…]', '', text) # remove other punctuation
            text = remove_sw_and_sc(text)
            return text

        # apply function on review column
        data = title + " " + body
        data = clean_text(data)

        # predict
        model = tf.keras.models.load_model('fakenews_pred_model')
        hasil = model.predict([data])
        
        if np.round(hasil) == 1:
            res = "That's fake news."
        else:
            res = "That isn't fake news."
        
        # show results
        st.write(f"{res}")