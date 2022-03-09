import streamlit as st
from PIL import Image

def app():
    st.title('Exploratory Data Analysis (EDA)')
    st.write("Berikut ini boxplot dari informasi angka yang diekstrak dari dateset teks berita.")
    st.markdown('**Boxplot**')
    image = Image.open('image/__results___38_0.png')
    st.image(image)
    st.markdown('**Boxplot without outliers**')
    image = Image.open('image/__results___40_0.png')
    st.image(image)
    st.write(
        '''  
        Beberapa hal yang menarik yang ditemukan dari grafik di atas adalah
        - Berita palsu lebih banyak menggunakan huruf besar dan hastag dibandingkan berita asli. Saya menduga sebagian besar berita palsu menggunakan huruf besar sebagai penekanan atau membuat berita terlihat lebih heboh. Sedangkan, penggunaan hastag agar berita lebih mudah tersebar,
        - Berita asli lebih banyak menggunakan punctuation dan angka dibandingkan berita palsu. Saya menduga berita asli menggunakan banyak kutipan dan data angka untuk memberikan informasi berdasarkan data.
        '''
    )
    st.markdown('**Wordcloud of Truthful News**')
    image = Image.open('image/__results___42_0.png')
    st.image(image)
    st.markdown('**Wordcloud of Fake News**')
    image = Image.open('image/__results___43_0.png')
    st.image(image)
    st.write(
        '''
        Sebagian besar dari kata-kata yang sering muncul pada berita asli dan palsu adalah "Donald Trump","said", dan "say". Hal ini wajar karena sebagian besar berita berisi tentang politik dan data dikumpulkan saat proses pemilu Amerika Serikat pada tahun 2016.
        
        Pada wordcloud berita asli, salah satu kata yang sering muncul adalah "reuters", sedangkan Reuters adalah salah satu nama portal berita. Saya mencurigai hal ini akan berdampak pada saat model mencoba berita dari portal berita yang berbeda. Bisa saja model terlatih lebih mengenali berita dari Reuters sebagai berita asli, dan selain itu berita palsu.
        '''
    )
    st.markdown('#### Kesimpulan')
    st.write(
        '''
        - Berita palsu lebih banyak menggunakan huruf besar sebagai penekanan agar terlihat lebih heboh. Sedangkan dan menggunakan hastag agar berita lebih mudah tersebar. Sedangkan, berita asli lebih banyak menggunakan punctuation dan angka karena berita asli menggunakan kutipan dan data angka untuk memberikan informasi berdasarkan data.
        - Model deep learning menghasilkan skor terbaik dibandingkan baseline model dan model machine learning Naive Bayes. Model deep learning menggunakan pooling dan LSTM menunjukkan hasil yang overfitting. Model Deep Learning menggunakan GRU merupakan model terbaik dalam memprediksi pada kumpulan data berita dengan nilai akurasi 99,7%.
        '''
    )