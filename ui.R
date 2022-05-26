

library(fresh)
# Create the theme
mytheme <- create_theme(
    content_bg = "#DC
  adminlte_color(
    light_blue = "#434C5E"
  ),
  adminlte_sidebar(
    width = "275px",
    dark_bg = "#696969",
    dark_hover_bg = "#81A1C1",
    dark_color = "#FFFFFF"
  ),
  adminlte_global(DCDC",
    box_bg = "#D8DEE9", 
    info_box_bg = "#D8DEE9"
    
    
  )
)


header <- dashboardHeader(title = div(img(src="images/statbaselogo.png"), strong("STATBASE"), align="left", 
                                      tags$head(tags$style(HTML('
                                            .main-header .logo {
                                              font-family: "Arial";
                                               font-weight: bold;
                                                 font-size: 24px;
                                                }
                                   ')))),
                          dropdownMenu(type = "messages"),
                          dropdownMenu(type = "notifications"),
                          dropdownMenu(type = "tasks"),
                          polished::profile_module_ui("profile")
)

sidebar <- dashboardSidebar(
  sidebarMenu(
    sidebarSearchForm("searchText",
                      "buttonSearch",
                      "Search"),
    menuItem("Home",
             tabName = "home",
             icon = icon("home")),
    menuItem("Dashboard",
             tabName = "dashboard",
             icon = icon("dashboard")),
    menuItem("Database",
             tabName = "table",
             icon = icon("table")),
    menuItem("Summary Data",
             tabName = "summary",
             icon = icon("clipboard-list")),
    menuItem("Location of Suppliers",
             tabName = "map",
             icon = icon("map")),
    menuItem("Statistic Descriptive : RFM Analysis",
             icon = icon("chart-bar"),
             menuSubItem("Recency",
                         tabName = "R",
                         icon = icon("angle-double-right")),
             menuSubItem("Frequency",
                         tabName = "F",
                         icon = icon("angle-double-right")),
             menuSubItem("Monetary",
                         tabName = "M",
                         icon = icon("angle-double-right")),
             menuSubItem("Kesimpulan RFM",
                         tabName = "RFM",
                         icon = icon("angle-double-right"))),
    menuItem("Inferential Analysis",
             tabName = "inferensial",
             icon = icon("chart-line")),
    menuItem("Kesimpulan dan Saran",
             tabName = "kesimpulan",
             icon = icon("comment-dots")),
    menuItem("Raw Data & Source Code",
             icon = icon("download"),
             menuItem('Github',
                      icon = icon('github'),
             href = "https://github.com/sherlytaurin/KelBDBS/"),
             menuItem('Rpubs',
                      icon = icon('r-project'),
                      href = "https://rpubs.com/sherlytaurin/uassbd")),
    menuItem("Youtube Video",
             tabName = "youtube",
             icon = icon("youtube")),
    
    menuItem("StatBase Member",
             icon = icon("id-card"),
             menuItem('Nikita',
                      tabName = 'Nikita',
                      icon = icon('chess-queen'),
                      menuSubItem('LinkedIn',
                                  icon = icon('linkedin'),
                                  href = "https://www.linkedin.com/in/nikita-indriyani-2286101b6/"),
                      menuSubItem('Instagram',
                                  icon = icon('instagram'),
                                  href = "https://www.instagram.com/nikitaindriyni/")),
             menuItem('Putri',
                      tabName = 'Putri',
                      icon = icon('chess-queen'),
                      menuSubItem('LinkedIn',
                                  icon = icon('linkedin'),
                                  href = "https://www.linkedin.com/in/putri-angelina-69736a180/"),
                      menuSubItem('Instagram',
                                  icon = icon('instagram'),
                                  href = "https://www.instagram.com/putriangelinaw/")),
             menuItem('Sherly',
                      tabName = 'Sherly',
                      icon = icon('chess-queen'),
                      menuSubItem('LinkedIn',
                                  icon = icon('linkedin'),
                                  href = "https://www.linkedin.com/in/sherly-taurin-8a50221b4/"),
                      menuSubItem('Instagram',
                                  icon = icon('instagram'),
                                  href = "https://www.instagram.com/sherlytaurin/")),
             menuItem('Jeffry',
                      tabName = 'Jeffry',
                      icon = icon('chess-king'),
                      menuSubItem('LinkedIn',
                                  icon = icon('linkedin'),
                                  href = "https://www.linkedin.com/in/jeffry-wijaya-087a191b5/"),
                      menuSubItem('Instagram',
                                  icon = icon('instagram'),
                                  href = "https://www.instagram.com/marvis.zerex/"))
    )))

body <- dashboardBody(
  use_theme(mytheme),
  
  tabItems(
    tabItem(
      tabName = "home",
      fluidRow(
        color = "#000080",
        style = "margin-left: 30px; margin-right: 30px;",
        HTML("<h1><center>WELCOME TO <b>STATBASE</b> FIRST APPLICATION</center></h1>"),
        tags$hr(style="border-color: purple;"),
        HTML("<h4> <b>STATBASE</b> adalah nama dari kelompok B untuk UAS Sistem Basis Data Matana University. Dimana pada aplikasi ini kami akan menunjukkan beberapa analisis dari data sebuah toko.</h4>"),
        HTML('<br><center><img src="images/statbase1.png" width="200"></center>'),
        br(),
        box(
          width = NULL, background = "navy",
          HTML("<h1> <Center> Soal</center></h1>")
        ),
        br(),
        fluidRow(
          box(title = "Soal Pertama",
              status = "danger",
              solidHeader = T,
              collapsible = F,
              HTML('<h4>Buatlah dokumen Rmd untuk melakukan analisa Database Factory yang berpusat pada data/tabel Suplier (suppliers).
                        <ol>
                        <li>Buatlah database</li>
                        <li>Konfigurasi database</li>
                        <li>Join tabel (yang berhubungan dengan data supplier)</li>
                        <li>Membersihkan data</li>
                        <li>Analisis Statistik Deskriptif  (RFM)</li>
                        <li>Statistik Inferensial (Regresi dan Klasifikasi) </li>
                        <li>Kesimpulan dan Saran</li>
                   </ol </h4>')),
          box(title = "Soal Kedua",
              status = "danger",
              solidHeader = T,
              collapsible = F,
              HTML( ' <h4>Buatlah Shiny App dengan data tabel Suplier (suppliers ) yang memuat konten sebagai berikut:
                      <ol>
                      <li>Sistem Login, Logo, Homepage</li>
                      <li>Introduction</li>
                      <li>CRUD Database </li>
                     <li> Analisis Statistik Deskriptif </li>
                     <ul>
                        <li>univariate  (Pie/Donat Chart, Bar chart, Line chart, Violin-Boxplot, etc)</li>
                        <li>multivariate  (Pie/Donat Chart, Bar chart, Line chart, Violin-Boxplot, etc)</li>
                     </ul>  
                      <li> Statistik Inferensial </li>
                      <ul>
                        <li>Analisis Korelasi</li>
                        <li>Statistik Inferensial (Regresi dan Klasifikasi) </li>
                      </ul>
                      <li>About (your team member, social link, app link, github source code, youtube persentasi hasil)</li>
                   </ol>
                   </h4>
                   '))),
        br(),
        box(
          width = NULL, background = "navy",
          HTML("<h1> <Center> Our Team Member </center></h1>")
        ),
        br(),
        fluidRow(
          box(title = HTML("<h3><center>Nikita Indriyani <h4>20194920009</h4></center></h3>"),
              background = "light-blue",
              solidHeader = T,
              collapsible = F,
              HTML('<a  href = "https://rpubs.com/nikitaindriyani/"> <center><img src="images/nikita.png" width="150"></center></a>')
             ),
          
          box(title = HTML("<h3><center>Putri Angelina Windjaya <h4>20194920010</h4></center></h3>"),
              background = "light-blue",
              solidHeader = T,
              collapsible = F,
              HTML('<a  href = "https://rpubs.com/putriangelinaw/"><center><img src="images/angel.png" width="150"></center></a>')),
          
          box(title = HTML("<h3><center>Sherly Taurin Siridion <h4>20194920011</h4></center></h3>"),
              background = "light-blue",
              solidHeader = T,
              collapsible = F,
              HTML('<a  href = "https://rpubs.com/sherlytaurin/"><center><img src="images/sherly.png" width="150"></center></a>')),
          
          box(title = HTML("<h3><center>Jeffry Wijaya <h4> 20194920016 </h4></center></h3>"),
              background = "light-blue",
              solidHeader = T,
              collapsible = F,
              HTML('<a  href = "https://rpubs.com/invokerarts/"><center><img src="images/jeffry.png" width="150"></center></a>'))
       ))),
       
    tabItem(
      tabName = "dashboard",
      fluidRow(
        infoBox("Top Sales (Country)",
                1610,"Australia",
                width = 3,
                icon = icon("globe-americas"),
                color = "olive"),
        infoBox("Top Sales (City)",
                1148, "Melbourne",
                width = 3,
                icon = icon("city"),
                color = "teal"),
        infoBox("Top Product",
                458, "Gorgonzola Telino",
                width = 3,
                icon = icon("heart"),
                color = "olive"),
        infoBox("Top Quantity",
                120, "Pâté chinois",
                width = 3,
                icon = icon("thumbs-up"),
                color = "teal")
      ),
      fixedRow(
        valueBoxOutput("value1", width = 4),
        valueBoxOutput("value2", width = 4),
        valueBoxOutput("value3", width = 4)
      ),
      fluidRow(
        box(title = "Histogram",
            status = "primary",
            solidHeader = T,
            collapsible = T,
            plotlyOutput("histogram")),
        
        box(title = "Bar Plot",
            status = "danger",
            solidHeader = T,
            collapsible = T,
            plotlyOutput("bar_plot"))
      ),
      fluidRow(
        box(title = "Box Plot",
            width = 12,
            status = "success",
            solidHeader = F,
            collapsible = T,
            plotlyOutput("box_plot")))
    ),
    tabItem(tabName = "table",
            fluidPage(
              shinyFeedback::useShinyFeedback(),
              shinyjs::useShinyjs(),
              # Application Title
              titlePanel(
                h1("Suppliers Database", align = 'center'),
                windowTitle = "Suppliers Database"
              ),
              cars_table_module_ui("cars_table")
            )
    ),
    tabItem(tabName = "summary",
            fluidPage(
              verbatimTextOutput("summary")
            )
    ),
    tabItem(tabName = "map",
            fluidPage(
              box(
                title = "Location of Suppliers",
                id = "map",
                status = "success",
                solidHeader = TRUE,
                width = 12,
                plotOutput("map", height = "750px")
              )
            )
    ),
    tabItem(tabName = "R",
            fluidRow(
              HTML("<h2> <Center> Recency Analysis </center></h2>"),
              br(),
              box(title = "Recency Supplier",
                  width = 12,
                  status = "primary",
                  solidHeader = T,
                  collapsible = T,
                  plotOutput("recency1"),
                  h4("24 Nama di atas merupakan supplier yang memenuhi standard recency, 
                      yaitu melakukan transaksi dalam sebulan terakhir, 
                      sehingga memiliki kemungkinan lebih besar untuk melakukan transaksi lagi.")),
    
             
               box(title = "Recency Country",
                  width = 12,
                  status = "danger",
                  solidHeader = T,
                  collapsible = T,
                  plotlyOutput("recency2"),
                  h4("14 negara di atas merupakan negara yang memenuhi standard recency, 
                      yaitu melakukan transaksi dalam sebulan terakhir, sehingga supplier dari negara terkait 
                      memiliki kemungkinan lebih besar untuk melakukan transaksi lagi.")),
                  
              
              box(title = "Recency Product",
                  width = 12,
                  status = "success",
                  solidHeader = T,
                  collapsible = T,
                  plotlyOutput("recency3"),
                  h4("46 produk di atas merupakan produk yang memenuhi standard recency, 
                      yaitu dibeli dalam sebulan terakhir, sehingga produk 
                      terkait memiliki kemungkinan lebih besar untuk memproduksi lagi.")),
            )),
    
            tabItem(tabName = "F",
                    fluidRow(
                      HTML("<h2> <Center> Frequency Analysis </center></h2>"),
                      box(title = "Frequency Supplier",
                          width = 12,
                          status = "primary",
                          solidHeader = T,
                          collapsible = T,
                          verbatimTextOutput("summary1"),
                          h4("Kuartil ketiga dari total transaksi supplier adalah 20 kali transaksi."),
                          h4("Supplier dengan total transaksi di atas 20 adalah"),
                          plotlyOutput("frequency1"),
                          h4("9 Nama di atas merupakan supplier yang memenuhi standard frequency, 
                              yaitu memiliki total transaksi diatas 20 transaksi, 
                              sehingga memiliki kemungkinan lebih besar untuk melakukan transaksi lagi.")),
                      
                      box(title = "Frequency Country",
                          width = 12,
                          status = "danger",
                          solidHeader = T,
                          collapsible = T,
                          verbatimTextOutput("summary2"),
                          h4("Kuartil ketiga dari total transaksi tiap negara adalah 51.75 kali transaksi."),
                          h4("Negara dengan total transaksi di atas 51.75 adalah"),
                          plotlyOutput("frequency2"),
                          h4("4 Negara di atas merupakan negara yang memenuhi standard frequency,
                          yaitu memiliki total transaksi diatas 51.75 transaksi, 
                          sehingga memiliki kemungkinan lebih besar untuk melakukan transaksi lagi.")),
                     
                       box(title = "Frequency Product",
                          width = 12,
                          status = "success",
                          solidHeader = T,
                          collapsible = T,
                          verbatimTextOutput("summary3"),
                          h4("Kuartil ketiga dari total transaksi setiap produk adalah 9 kali transaksi."),
                          h4("Produk dengan total transaksi di atas 9 adalah"),
                          plotlyOutput("frequency3"),
                          h4("25 produk di atas merupakan produk yang memenuhi standard frequency, 
                              yaitu memiliki total transaksi diatas 9, 
                              sehingga produk terkait memiliki kemungkinan lebih besar untuk diproduksi lagi."))
                    )
                    ),
    tabItem(tabName = "M",
            fluidRow(
              HTML("<h2> <Center> Monetary Analysis </center></h2>"),
              box(title = "Monetary Supplier",
                  width = 12,
                  status = "primary",
                  solidHeader = T,
                  collapsible = T,
                  verbatimTextOutput("summary4"),
                  h4("Kuartil ketiga dari total unit produksi supplier adalah 518 unit."),
                  h4("Supplier dengan total unit produksi diatas 518"),
                  plotlyOutput("monetary1"),
                  h4("8 Nama di atas merupakan supplier yang memenuhi standard Monetary, 
                      yaitu memiliki total unit produksi diatas 518 unit, sehingga 
                      memiliki kemungkinan lebih besar untuk melakukan transaksi lagi."),
                  verbatimTextOutput("summary5"),
                  h4("Kuartil ketiga dari total jumlah produksi supplier adalah 822.2"),
                  h4("Supplier dengan total jumlah produksi di atas $822.2 adalah"),
                  plotlyOutput("monetary11")
                  ),
              
              box(title = "Monetary Country",
                  width = 12,
                  status = "danger",
                  solidHeader = T,
                  collapsible = T,
                  verbatimTextOutput("summary6"),
                  h4("Kuartil ketiga dari total unit produksi negara adalah 1247.5 unit."),
                  h4("Negara dengan total unit produksi diatas 1247.5"),
                  plotlyOutput("monetary2"),
                  h4("4 Negara di atas merupakan negara yang memenuhi standard Monetary, 
                      yaitu memiliki total unit produksi diatas 1247.5 unit, sehingga memiliki 
                      kemungkinan lebih besar untuk melakukan transaksi lagi."),
                  verbatimTextOutput("summary7"),
                  h4("Kuartil ketiga dari total jumlah produksi negara adalah 30681"),
                  h4("Supplier dengan total jumlah produksi di atas $30681 adalah"),
                  plotlyOutput("monetary21"),
                  h4("4 Negara di atas merupakan negara yang memenuhi standard Monetary, 
                      yaitu memiliki total jumlah pembelian di atas 30681, sehingga 
                      memiliki kemungkinan lebih besar untuk melakukan transaksi lagi.")
                  ),
             
               box(title = "Monetary Product",
                  width = 12,
                  status = "success",
                  solidHeader = T,
                  collapsible = T,
                  verbatimTextOutput("summary8"),
                  h4("Kuartil ketiga dari total unit produk adalah 209.0 unit. "),
                  h4("produk dengan total unit produksi diatas 209.0"),
                  plotlyOutput("monetary3"),
                  h4("20 produk di atas merupakan produk yang memenuhi standard Monetary, 
                      yaitu memiliki total unit pembelian di atas 20, sehingga 
                      produk terkait memiliki kemungkinan lebih besar untuk diproduksi lagi."))
            )),
    
    tabItem(tabName = "RFM",
            fluidRow(
              box(title = "RFM Supplier",
                  width = 12,
                  status = "success",
                  solidHeader = T,
                  collapsible = T,
                  DT::dataTableOutput("RFM1")),
              box(title = "RFM Country",
                  width = 12,
                  status = "success",
                  solidHeader = T,
                  collapsible = T,
                  DT::dataTableOutput("RFM2")),
              box(title = "RFM Product",
                  width = 12,
                  status = "success",
                  solidHeader = T,
                  collapsible = T,
                  DT::dataTableOutput("RFM3"))
              
              
            )),
            
    tabItem(tabName = "inferensial",
            fluidRow(
              box(title = "Pengaruh kuantitas pembelian terhadap total keuntungan per negara.",
                  width = 12,
                  status = "danger",
                  solidHeader = T,
                  collapsible = T,
                  plotlyOutput("inferensial1"),
                  h3("Summary"),
                  verbatimTextOutput("summary9"),
                  h4(HTML('<center style="font-family:cambria">Total=-10301.725+41.378×Quantity</center>'))
                  ),
              
              box(title = "Pengaruh harga produk terhadap kuantitas pemesanan",
                  width = 12,
                  status = "danger",
                  solidHeader = T,
                  collapsible = T,
                  plotlyOutput("inferensial2"),
                  h3("Summary"),
                  verbatimTextOutput("summary10"),
                  h4(HTML('<center style="font-family:cambria">Total=1026.9790+2.7254×Price</center>'))
                  ),
              
              box(title = "Pengaruh jumlah supplier dengan kuantitas pembelian per negara.",
                  width = 12,
                  status = "danger",
                  solidHeader = T,
                  collapsible = T,
                  plotlyOutput("inferensial3"),
                  h3("Summary"),
                  verbatimTextOutput("summary11"),
                  h4(HTML('<center style="font-family:cambria">Total=25.0362+24.2298×Total_Supplier_Per_Country</center>'))
                  )
              
              
            )),
    
    tabItem(tabName = "kesimpulan",
            fluidRow(
              HTML("<h1><center> KESIMPULAN DAN SARAN </center></h1>"),
              tags$hr(style="border-color: navy;"),
              box(title = HTML("<h1><center> Kesimpulan </center></h1>"),
                  width = 12,
                  status = "primary",
                  solidHeader = T,
                  collapsible = F,
                  HTML(
                    "<h4>Dari data RFM yang kita peroleh diatas, dapat kita lihat terdapat ada supplier, negara, dan produk yang memenuhi standard Recency Frequency dan Monetary yaitu kuartil 3 diatas dimana berarti seorang supplier dan negara diharapkan untuk memproduksi lebih banyak barang dan ada barang yang diharapkan lebih banyak di produksi. Terdapat 28 Supplier, 14 Negara, dan 52 produk yang memenuhi standard RFM.
                  </h4>")),
              box(title = HTML("<h1><center> Saran </center></h1>"),
                  width = 12,
                  status = "primary",
                  solidHeader = T,
                  collapsible = F,
                  HTML( 
                    "<h4> Dari sisi 28 supplier yang memenuhi standar RFM maka mereka dapat meningkatkan produksi dan penyaluran suatu barang kepada konsumen. 14 negara yang memiliki nilai diatas standart RFM juga dapat melakukan impor barang untuk mencari informasi kelarisan produk negaranya di negara lain. 52 produk yang memenuhi standard RFM dapat dipertimbangkan harganya kembali untuk mencari keuntungan semaksimal mungkin. </h4>"
                    ))
               
            )),
    tabItem(tabName = "youtube",
            fluidRow(
              HTML("<h1><center> Youtube Video </center></h1>"),
              br(),
              HTML('<center><iframe width="90%" height="600" src="https://www.youtube.com/embed/Hk6CK7pd4yw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>')
              ) 
            ))
)
    
  




ui <- dashboardPage(
  title = "StatBase First App",
  header,
  sidebar,
  body
)



secure_ui(
  ui,
  sign_in_page_ui = sign_in_ui_default(
    sign_in_module = sign_in_module_2_ui("sign_in"),
    color = "#00008B",
    align = "center",
    company_name = "StatBase",
    logo_top = tags$img(
      src = "images/statbase.png",
      alt = "Statbase Logo",
      align = "center",
      style = "width: `100 px; margin-top: 10px; margin-bottom: 10px;",
      tags$div(
        style = "width: 500px; max-width: 100%; color: #FFF;",
        class = "text-center",
        h2("Welcome to StatBase First App", style = "margin-bottom: 50px; margin-top: 2px;")
      )), 
    icon_href = "images/statbase.png",
    background_image = "images/background.jpg"
  )
)