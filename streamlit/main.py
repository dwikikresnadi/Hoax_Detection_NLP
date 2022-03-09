import eda
import modelpred
import streamlit as st

st.set_page_config(
    page_title="Fake News Prediction",
    page_icon="📊",
    layout="wide",
    initial_sidebar_state="expanded",
    menu_items={
        'About': "Aplikasi ini dibuat oleh Risqi Rahmatullah (Batch 007) dan merupakan tugas Milestone 2 Phase 2s."
    }
)

PAGES = {
    "Exploratory Data Analysis (EDA)": eda,
    "Fake News Prediction": modelpred
}
st.sidebar.title('Model of Fake News Prediction')
selection = st.sidebar.selectbox("Select pages", list(PAGES.keys()))
page = PAGES[selection]
page.app()