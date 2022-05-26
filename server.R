
suppliers <- read_xlsx("www/supplier_data.xlsx")

coba <- function(input, output, session) {
  
  callModule(
    polished::profile_module,
    "profile"
  )
  
  token <- reactive({
    input$firebase_token
  })
  
  
  output$value1 <- renderValueBox({
    TotalAmount <- as.numeric(suppliers$Quantity * suppliers$Price)
    avg_total_amount <- round(mean(TotalAmount), 2)
    valueBox(
      avg_total_amount,
      "Average of Total Amount",
      icon = icon("balance-scale"),
      color = "orange"
    )
  })
  
  output$value2 <- renderValueBox({
    avg_unit_price <- round(mean(suppliers$Price), 2)
    valueBox(
      avg_unit_price,
      "Average of Unit Price",
      icon = icon("dollar-sign"),
      color = "green"
    )
  })
  
  output$value3 <- renderValueBox({
    avg_quantity <- round(mean(suppliers$Quantity), 2)
    valueBox(
      avg_quantity,
      "Average of Quantity",
      icon = icon("calculator"),
      color = "blue"
    )
  })
  
  output$histogram <- renderPlotly({
    ggplot(suppliers, aes(x=Quantity)) +
      stat_bin(breaks=seq(0,150,6), fill="maroon", color="#e9ecef", alpha=0.9) +
      ggtitle("Density of Quantity That has been Sold ") +
      theme_ipsum() +
      xlab("Quantity") +
      ylab("Density")
  })
  
  output$bar_plot <- renderPlotly({
    ggplot(suppliers, aes(x=Country, y=Quantity) ) +
      geom_bar(stat="identity", fill="#69b3a2") +
      ggtitle("Sales in Each Country") +
      coord_flip() +
      theme_ipsum() +
      xlab("Country") +
      ylab("Quantity") +
      theme(
        panel.grid.minor.y = element_blank(),
        panel.grid.major.y = element_blank(),
        legend.position="none")  
  })
  
  output$box_plot <- renderPlotly({
    Country <- suppliers$Country
    ggplot(suppliers, aes(x=ProductName, y=Quantity, fill=ProductName)) +
      geom_boxplot(color="#69b3a2", alpha=0.8) +
      ggtitle("Number of Product That has been Sold") +
      theme(plot.title = element_text(size=12)) +
      xlab('Product Name') +
      ylab('Quantity')    
  })
  
  
  output$summary  <- renderPrint({
    skim(suppliers)
  })
  
  output$map <- renderPlot({
    countries <- as.data.frame(table(suppliers$Country))
    colnames(countries) <- c("country", "value")
    matched <- joinCountryData2Map(countries, joinCode = "NAME", nameJoinColumn = "country")
    mapCountryData(matched, nameColumnToPlot = "value", mapTitle = "", 
                   catMethod = "pretty", colourPalette = c("yellow", "green"))
  })
  
  output$recency1 <- renderPlot({plots1
  })
  output$recency2 <- renderPlotly({plotc1
    })
  output$recency3 <- renderPlotly({plotp1
  })
  
  output$frequency1 <- renderPlotly({plots2
  })
  output$frequency2 <- renderPlotly({plotc2
  })
  output$frequency3 <- renderPlotly({plotp2
  })
  
  output$monetary1 <- renderPlotly({plots3
  })
  output$monetary2 <- renderPlotly({plotc3
  })
  output$monetary3 <- renderPlotly({plotp3
  })
  output$monetary11 <- renderPlotly({plots31
  })
  output$monetary21 <- renderPlotly({plotc31
  })
  
  output$summary1 <- renderPrint({summary(freq_supp[,"Quantity"])
    })
  output$summary2 <- renderPrint({summary(freq_coun[,"Quantity"])
    })
  output$summary3 <- renderPrint({summary(freq_prod[,"Quantity"])
    })
  output$summary4 <- renderPrint({
      suppliers[,c("SupplierID", "SupplierName", "Quantity")] %>%
      group_by(SupplierID) %>%
      summarise(Quantity=sum(Quantity)) %>%
      summary() 
    })
  output$summary5 <- renderPrint({supp_total$Total %>% summary()
    })
  
  output$summary6 <- renderPrint({summary(coun_quan[,"Quantity"]) 
    })
  output$summary7 <- renderPrint({coun_total$Total %>% summary() 
  })
  output$summary8 <- renderPrint({summary(prod_quan[,"Quantity"]) 
  })
  
  output$RFM1  <- DT::renderDataTable({DT::datatable(RFM1)
  })
  output$RFM2  <- DT::renderDataTable({DT::datatable(RFM2)
  }) 
  output$RFM3  <- DT::renderDataTable({DT::datatable(RFM3)
  })
  
  output$inferensial1 <- renderPlotly({si1
  })
  output$inferensial2 <- renderPlotly({si2
  })
  output$inferensial3 <- renderPlotly({si3
  })
  
  output$summary9 <- renderPrint({summary(lm1)
  })
  output$summary10 <- renderPrint({summary(lm2) 
  })
  output$summary11 <- renderPrint({summary(lm3) 
  })
  
  session$userData$db_trigger <- reactiveVal(0)
  
  callModule(
    cars_table_module,
    "cars_table"
  )

  
  
}



secure_server(coba,
              custom_sign_in_server = sign_in_module_2
)