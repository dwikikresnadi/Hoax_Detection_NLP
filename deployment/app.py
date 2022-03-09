import home
import modelpred
import streamlit as st

st.set_page_config(
    page_title="H-App",
    page_icon=":newspaper:",
    layout="wide",
    initial_sidebar_state="expanded",
    menu_items={
        'About': "Webapps ini dibuat untuk mendeteksi hoax pada berita."
    }
)

PAGES = {
    "Home": home,
    "News Detection": modelpred
}
st.sidebar.title('Navigation Bar')
selection = st.sidebar.radio("Select pages", list(PAGES.keys()))
page = PAGES[selection]
page.app()