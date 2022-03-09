import streamlit as st
from streamlit_lottie import st_lottie
import requests


# funtion and load icon
## function
def load_lottieurl(url: str):
        r = requests.get(url)
        if r.status_code != 200:
            return None
        return r.json()
## icon varible
lottie_hello = load_lottieurl("https://assets3.lottiefiles.com/packages/lf20_597nlu.json")
def app():
    col1, col2, col3 = st.columns(3)
    cols1, cols2, cols3 = st.columns(3)
    with col2:
        st.title('Welcome to H-App!')
     
    with cols2:
        st_lottie(
            lottie_hello,
            speed=1,
            reverse=False,
            loop=True,
            quality="medium", # low ; medium ; high
            # renderer="canvas", # canvas
            height=None,
            width=400,
            key=None,
            )
    st.write('---')

    expander = st.expander("About")
    expander.write("Webapps ini memiliki kemampuan untuk mendekteksi berita hoax hanya dengan 'One Click Predict'")