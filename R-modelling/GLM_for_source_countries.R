# GLM for total student count by year and source contries:
dataset = read.csv("R_data/total_count_by_year_and_source.csv")
dataset$source_country <- factor(dataset$source_country)
glm_model = glm(total_student_count 
                ~ source_country + year + src_population 
                + src_qoe_top20 + src_qoe_top100 + src_qoe_top200 + src_qoe_top500 
                + src_gni + src_gdp + src_rate_of_one_usd + src_tertiary_enrolment
                + year:source_country + src_population:source_country 
                + src_qoe_top20:source_country + src_qoe_top100:source_country + src_qoe_top200:source_country + src_qoe_top500:source_country 
                + src_gni:source_country + src_gdp:source_country + src_rate_of_one_usd:source_country + src_tertiary_enrolment:source_country
                , data = dataset, family = poisson)
summary(glm_model)


# GLM for student go to AUS by year and source contries:
dataset_aus = read.csv("R_data/AUS_count_by_year_and_source.csv")
aus_model = glm(total_student_count 
                ~ source_country + year + src_population 
                + src_qoe_top20 + src_qoe_top100 + src_qoe_top200 + src_qoe_top500 
                + src_gni + src_gdp + src_rate_of_one_usd + src_tertiary_enrolment
                + year:source_country + src_population:source_country 
                + src_qoe_top20:source_country + src_qoe_top100:source_country + src_qoe_top200:source_country + src_qoe_top500:source_country 
                + src_gni:source_country + src_gdp:source_country + src_rate_of_one_usd:source_country + src_tertiary_enrolment:source_country
                , data = dataset_aus, family = poisson)
summary(aus_model)


# GLM for student go to GO8 by year and source contries:
dataset_go8 = read.csv("R_data/GO8_count_by_year_and_source.csv")
go8_model = glm(GO8_count 
                ~ source_country + year + src_population 
                + src_qoe_top20 + src_qoe_top100 + src_qoe_top200 + src_qoe_top500 
                + src_gni + src_gdp + src_rate_of_one_usd + src_tertiary_enrolment
                + year:source_country + src_population:source_country 
                + src_qoe_top20:source_country + src_qoe_top100:source_country + src_qoe_top200:source_country + src_qoe_top500:source_country 
                + src_gni:source_country + src_gdp:source_country + src_rate_of_one_usd:source_country + src_tertiary_enrolment:source_country
                , data = dataset_go8, family = poisson)
summary(go8_model)


# GLM for student go to UOM by year and source contries:
dataset_uom = read.csv("R_data/UOM_count_by_year_and_source.csv")
uom_model = glm(UOM_count 
                ~ source_country + year + src_population 
                + src_qoe_top20 + src_qoe_top100 + src_qoe_top200 + src_qoe_top500 
                + src_gni + src_gdp + src_rate_of_one_usd + src_tertiary_enrolment
                + year:source_country + src_population:source_country 
                + src_qoe_top20:source_country + src_qoe_top100:source_country + src_qoe_top200:source_country + src_qoe_top500:source_country 
                + src_gni:source_country + src_gdp:source_country + src_rate_of_one_usd:source_country + src_tertiary_enrolment:source_country
                , data = dataset_uom, family = poisson)
summary(uom_model)