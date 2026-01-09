from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
from ui.main_ui import Ui_MoviesWindow
from postgresql import PostgresqlDb



class MoviesApp(QMainWindow):
    def __init__(self):
        super().__init__()
        self.movies_ui=Ui_MoviesWindow()
        self.movies_ui.setupUi(self)

        self.db=PostgresqlDb("movie-250")
        self.combobox_AddItems()

        self.movies_ui.btn_Show.clicked.connect(self.search_movies)

        #Checkbox
        self.movies_ui.checkBox_rating.stateChanged.connect(self.onCheckboxChanged)
        self.movies_ui.checkBox_genre.stateChanged.connect(self.onCheckboxChanged)
        self.movies_ui.checkBox_year.stateChanged.connect(self.onCheckboxChanged)

        #Combobox
        self.movies_ui.comboBox_genre.setEnabled(False)
        self.movies_ui.comboBox_year.setEnabled(False)
        self.movies_ui.comboBox_rating.setEnabled(False)

    #Limit Belirleme
    #Limit Setting

    def get_limit_from_radio(self):
        if self.movies_ui.radioButton_top10.isChecked():
            return 10
        elif self.movies_ui.radioButton_top25.isChecked():
            return 25
        elif self.movies_ui.radioButton_top50.isChecked():
            return 50
        elif self.movies_ui.radioButton_AllList.isChecked():
            return None
        return None
    

    # Combobox'tan değer alma
    # Getting values ​​from a combobox

    def get_selected_genre(self):
        genre = self.movies_ui.comboBox_genre.currentText().strip()
        return None if genre == "All" else genre

    def get_selected_year(self):
        year = self.movies_ui.comboBox_year.currentText().strip()
        return None if year == "All" else int(year)

    def get_selected_rating(self):
        rating = self.movies_ui.comboBox_rating.currentText().strip()
        return None if rating == "All" else float(rating)
        

     #Combobox database'den veri ekleme
     #Adding data from a combobox database   
        
    def combobox_AddItems(self):
        #GEnre
        query="SELECT DISTINCT TRIM(unnest(string_to_array(genre, ','))) AS genre FROM imdb_250 ORDER BY genre "
        rows, _ =self.db.getRows(query)

        self.movies_ui.comboBox_genre.clear()
        self.movies_ui.comboBox_genre.addItem("All")

        for row in rows:
            self.movies_ui.comboBox_genre.addItem(row[0]) 

        # RAting
        query_rating=" SELECT DISTINCT rating FROM imdb_250 ORDER BY rating DESC "
        rating_rows,_ =self.db.getRows(query_rating)
        self.movies_ui.comboBox_rating.clear()
        self.movies_ui.comboBox_rating.addItem("All")

        
        for val in rating_rows:
            self.movies_ui.comboBox_rating.addItem(str(val[0]))


        #Year
        query_year=" SELECT  DISTINCT year FROM imdb_250 ORDER BY year "
        year_rows,_ =self.db.getRows(query_year)
        self.movies_ui.comboBox_year.clear()
        self.movies_ui.comboBox_year.addItem("All")

        
        for vle in year_rows:
            self.movies_ui.comboBox_year.addItem(str(vle[0]))


    #Checkbox Options
    def onCheckboxChanged(self,state):
        sender = self.sender()

        if state != Qt.Checked:
            return  

        checkbox_map = {
            self.movies_ui.checkBox_genre: self.movies_ui.comboBox_genre,
            self.movies_ui.checkBox_year: self.movies_ui.comboBox_year,
            self.movies_ui.checkBox_rating: self.movies_ui.comboBox_rating
        }

        for cbx, combo in checkbox_map.items():
            if cbx == sender:
                cbx.setChecked(True)
                combo.setEnabled(True)
            else:
                cbx.blockSignals(True)
                cbx.setChecked(False)
                cbx.blockSignals(False)

                combo.blockSignals(True)
                combo.setEnabled(False)
                combo.setCurrentIndex(0)
                combo.blockSignals(False)

            
            genre_only = (
                self.movies_ui.checkBox_genre.isChecked() and
                not self.movies_ui.checkBox_year.isChecked() and
                not self.movies_ui.checkBox_rating.isChecked()
        )

        for radio in (
            self.movies_ui.radioButton_AllList,
            self.movies_ui.radioButton_top10,
            self.movies_ui.radioButton_top25,
            self.movies_ui.radioButton_top50
        ):
            radio.setEnabled(genre_only or not any(cbx.isChecked() for cbx in checkbox_map))

    
    #SQL sorgusunu ve parametrelerini üretmek
    #Generating the SQL query and its parameters.
    def build_query(self):
        genre = self.get_selected_genre()
        year = self.get_selected_year()
        rating = self.get_selected_rating()
        limit = self.get_limit_from_radio()

        query = "SELECT * FROM imdb_250 WHERE 1=1"
        params = []

        if genre:
            query += " AND genre ILIKE %s"
            params.append(f"%{genre}%")

        if year:
            query += " AND year = %s"
            params.append(year)

        
        if rating is not None :
            query += " AND rating = %s"
            params.append(rating)
            

        query += " ORDER BY rank"

        if limit:
            query += " LIMIT %s"
            params.append(limit)

        return query, tuple(params)


    

    def search_movies(self):
        query, params = self.build_query()
        rows, columns = self.db.getRows(query, params)
        self.table_Fill(rows, columns)

    




    def table_Fill(self,rows,columns):
        self.movies_ui.tableWidget.clearContents()
        self.movies_ui.tableWidget.setRowCount(len(rows))
        self.movies_ui.tableWidget.setColumnCount(len(columns))
        self.movies_ui.tableWidget.setHorizontalHeaderLabels(columns)


        for row_idx, row_data in enumerate(rows):
            for col_idx, value in enumerate(row_data):
                item = QTableWidgetItem(str(value))
                self.movies_ui.tableWidget.setItem(row_idx, col_idx, item)


    

        

        




        