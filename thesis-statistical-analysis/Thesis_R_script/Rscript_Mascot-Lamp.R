# install.packages("reshape2")
# install.packages("rstatix")
# install.packages("survival")
# install.packages("FSA")

# Import libarary for reading your Mascot-Lamp csv file
library(readr)


# Created the variable for our whole Mascot_Lamp table
# As a directory please specify the local directory where your project is located
Mascot_Lamp_Table <- read_csv("~/Desktop/LatifaAbdullayevaThesis/ThesisStatisticalAnalysis/Thesis_Experiment_csv_files/Mascot-Lamps(Responses).csv")

#-------------------------------------------------------------------------------------------------------------------------
#  -------- -------- -------- -------- -------- Creating Tables and Variables -------- -------- -------- -------- --------

# Created a new table that groups 6 personality facets into one personality trait for specific color
# For example, in this table, Extraversion personality trait consists of the following 6 personality facets: 
# 6 Extraversion Facets: "Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness"

# This table contains 6 EXTRAVERSION FACETS for YELLOW color. The table looks like this:
# -----------------------------------------------------------------------------------------------------------
# |    | Friendliness | Gregariousness | Assertiveness | Activity-Level | Excitement-Seeking | Cheerfulness |
# |  1 |              |                |               |                |                    |              |
# | .. |              |                |               |                |                    |              |
# | 25 |              |                |               |                |                    |              |
# -----------------------------------------------------------------------------------------------------------
ExtraversionFacets_Yellow <- matrix(c(Mascot_Lamp_Table$`V1_1) Friendly and warm`, 
                                      Mascot_Lamp_Table$`V1_2) Gregarious and sociable`,
                                      Mascot_Lamp_Table$`V1_3) Assertive and Forceful`,
                                      Mascot_Lamp_Table$`V1_4) Highly active and Energetic`,
                                      Mascot_Lamp_Table$`V1_5) Seeks for Excitement`,
                                      Mascot_Lamp_Table$`V1_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_Yellow) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

# New table for grouping all EXTRAVERSION FACETS for ORANGE color
ExtraversionFacets_Orange <- matrix(c(Mascot_Lamp_Table$`V2_1) Friendly and warm`, 
                                      Mascot_Lamp_Table$`V2_2) Gregarious and sociable`,
                                      Mascot_Lamp_Table$`V2_3) Assertive and Forceful`,
                                      Mascot_Lamp_Table$`V2_4) Highly active and Energetic`,
                                      Mascot_Lamp_Table$`V2_5) Seeks for Excitement`,
                                      Mascot_Lamp_Table$`V2_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_Orange) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

# New table for grouping all EXTRAVERSION FACETS for T color
ExtraversionFacets_Turquoise <- matrix(c(Mascot_Lamp_Table$`V3_1) Friendly and warm`, 
                                     Mascot_Lamp_Table$`V3_2) Gregarious and sociable`,
                                     Mascot_Lamp_Table$`V3_3) Assertive and Forceful`,
                                     Mascot_Lamp_Table$`V3_4) Highly active and Energetic`,
                                     Mascot_Lamp_Table$`V3_5) Seeks for Excitement`,
                                     Mascot_Lamp_Table$`V3_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_Turquoise) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")


# New table for grouping all EXTRAVERSION FACETS for BloodRed color
ExtraversionFacets_BloodRed <- matrix(c(Mascot_Lamp_Table$`V4_1) Friendly and warm`, 
                                   Mascot_Lamp_Table$`V4_2) Gregarious and sociable`,
                                   Mascot_Lamp_Table$`V4_3) Assertive and Forceful`,
                                   Mascot_Lamp_Table$`V4_4) Highly active and Energetic`,
                                   Mascot_Lamp_Table$`V4_5) Seeks for Excitement`,
                                   Mascot_Lamp_Table$`V4_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_BloodRed) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")


# New table for grouping all EXTRAVERSION FACETS for PINK color
ExtraversionFacets_Pink <- matrix(c(Mascot_Lamp_Table$`V5_1) Friendly and warm`, 
                                    Mascot_Lamp_Table$`V5_2) Gregarious and sociable`,
                                    Mascot_Lamp_Table$`V5_3) Assertive and Forceful`,
                                    Mascot_Lamp_Table$`V5_4) Highly active and Energetic`,
                                    Mascot_Lamp_Table$`V5_5) Seeks for Excitement`,
                                    Mascot_Lamp_Table$`V5_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_Pink) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

#-----------
# 6 Agreeable Facets: "Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy"
# New table for grouping all Agreeable facets for yellow color
AgreeablenessFacets_Yellow <- matrix(c(Mascot_Lamp_Table$`V1_7) Trusting and forgiving`,
                                       Mascot_Lamp_Table$`V1_8) Straightforward`,
                                       Mascot_Lamp_Table$`V1_9) Altruistic`,
                                       Mascot_Lamp_Table$`V1_10) Cooperative`,
                                       Mascot_Lamp_Table$`V1_11) Modest`,
                                       Mascot_Lamp_Table$`V1_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_Yellow) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

# New table for grouping all Agreeable facets for orange color
AgreeablenessFacets_Orange <- matrix(c(Mascot_Lamp_Table$`V2_7) Trusting and forgiving`,
                                       Mascot_Lamp_Table$`V2_8) Straightforward`,
                                       Mascot_Lamp_Table$`V2_9) Altruistic`,
                                       Mascot_Lamp_Table$`V2_10) Cooperative`,
                                       Mascot_Lamp_Table$`V2_11) Modest`,
                                       Mascot_Lamp_Table$`V2_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_Orange) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

# New table for grouping all Agreeable facets for T color
AgreeablenessFacets_Turquoise <- matrix(c(Mascot_Lamp_Table$`V3_7) Trusting and forgiving`,
                                      Mascot_Lamp_Table$`V3_8) Straightforward`,
                                      Mascot_Lamp_Table$`V3_9) Altruistic`,
                                      Mascot_Lamp_Table$`V3_10) Cooperative`,
                                      Mascot_Lamp_Table$`V3_11) Modest`,
                                      Mascot_Lamp_Table$`V3_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_Turquoise) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

# New table for grouping all Agreeable facets for BloodRed color
AgreeablenessFacets_BloodRed <- matrix(c(Mascot_Lamp_Table$`V4_7) Trusting and forgiving`,
                                    Mascot_Lamp_Table$`V4_8) Straightforward`,
                                    Mascot_Lamp_Table$`V4_9) Altruistic`,
                                    Mascot_Lamp_Table$`V4_10) Cooperative`,
                                    Mascot_Lamp_Table$`V4_11) Modest`,
                                    Mascot_Lamp_Table$`V4_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_BloodRed) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

# New table for grouping all Agreeable facets for pink color
AgreeablenessFacets_Pink <- matrix(c(Mascot_Lamp_Table$`V5_7) Trusting and forgiving`,
                                     Mascot_Lamp_Table$`V5_8) Straightforward`,
                                     Mascot_Lamp_Table$`V5_9) Altruistic`,
                                     Mascot_Lamp_Table$`V5_10) Cooperative`,
                                     Mascot_Lamp_Table$`V5_11) Modest`,
                                     Mascot_Lamp_Table$`V5_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_Pink) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

#-----------
# 6 Concientiousness Facets: "Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness"
# New table for grouping all Concientiousness facets for yellow color
ConscientiousnessFacets_Yellow <- matrix(c(Mascot_Lamp_Table$`V1_13) High sense of Self-efficacy`,
                                           Mascot_Lamp_Table$`V1_14) Orderly`,
                                           Mascot_Lamp_Table$`V1_15) Dutiful`,
                                           Mascot_Lamp_Table$`V1_16) Achievement-striving`,
                                           Mascot_Lamp_Table$`V1_17) Self-disciplined`,
                                           Mascot_Lamp_Table$`V1_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_Yellow) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

# New table for grouping all C facets for orange color
ConscientiousnessFacets_Orange <- matrix(c(Mascot_Lamp_Table$`V2_13) High sense of Self-efficacy`,
                                           Mascot_Lamp_Table$`V2_14) Orderly`,
                                           Mascot_Lamp_Table$`V2_15) Dutiful`,
                                           Mascot_Lamp_Table$`V2_16) Achievement-striving`,
                                           Mascot_Lamp_Table$`V2_17) Self-disciplined`,
                                           Mascot_Lamp_Table$`V2_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_Orange) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

# New table for grouping all C facets for Turquoise color
ConscientiousnessFacets_Turquoise <- matrix(c(Mascot_Lamp_Table$`V3_13) High sense of Self-efficacy`,
                                          Mascot_Lamp_Table$`V3_14) Orderly`,
                                          Mascot_Lamp_Table$`V3_15) Dutiful`,
                                          Mascot_Lamp_Table$`V3_16) Achievement-striving`,
                                          Mascot_Lamp_Table$`V3_17) Self-disciplined`,
                                          Mascot_Lamp_Table$`V3_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_Turquoise) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

# New table for grouping all C facets for BloodRed color
ConscientiousnessFacets_BloodRed <- matrix(c(Mascot_Lamp_Table$`V4_13) High sense of Self-efficacy`,
                                        Mascot_Lamp_Table$`V4_14) Orderly`,
                                        Mascot_Lamp_Table$`V4_15) Dutiful`,
                                        Mascot_Lamp_Table$`V4_16) Achievement-striving`,
                                        Mascot_Lamp_Table$`V4_17) Self-disciplined`,
                                        Mascot_Lamp_Table$`V4_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_BloodRed) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

# New table for grouping all C facets for pink color
ConscientiousnessFacets_Pink <- matrix(c(Mascot_Lamp_Table$`V5_13) High sense of Self-efficacy`,
                                         Mascot_Lamp_Table$`V5_14) Orderly`,
                                         Mascot_Lamp_Table$`V5_15) Dutiful`,
                                         Mascot_Lamp_Table$`V5_16) Achievement-striving`,
                                         Mascot_Lamp_Table$`V5_17) Self-disciplined`,
                                         Mascot_Lamp_Table$`V5_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_Pink) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

#-----------
# 6 Neuroticism Facets: "Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability"
# New table for grouping all N facets for yellow color
NeuroticismFacets_Yellow <- matrix(c(Mascot_Lamp_Table$`V1_19) Anxious`,
                                     Mascot_Lamp_Table$`V1_20) Angry and hostile`,
                                     Mascot_Lamp_Table$`V1_21) High level of Depression`,
                                     Mascot_Lamp_Table$`V1_22) Self-conscious`,
                                     Mascot_Lamp_Table$`V1_23) Immoderate behavior`,
                                     Mascot_Lamp_Table$`V1_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_Yellow) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

# New table for grouping all N facets for orange color
NeuroticismFacets_Orange <- matrix(c(Mascot_Lamp_Table$`V2_19) Anxious`,
                                     Mascot_Lamp_Table$`V2_20) Angry and hostile`,
                                     Mascot_Lamp_Table$`V2_21) High level of Depression`,
                                     Mascot_Lamp_Table$`V2_22) Self-conscious`,
                                     Mascot_Lamp_Table$`V2_23) Immoderate behavior`,
                                     Mascot_Lamp_Table$`V2_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_Orange) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

# New table for grouping all N facets for Turquoise color
NeuroticismFacets_Turquoise <- matrix(c(Mascot_Lamp_Table$`V3_19) Anxious`,
                                    Mascot_Lamp_Table$`V3_20) Angry and hostile`,
                                    Mascot_Lamp_Table$`V3_21) High level of Depression`,
                                    Mascot_Lamp_Table$`V3_22) Self-conscious`,
                                    Mascot_Lamp_Table$`V3_23) Immoderate behavior`,
                                    Mascot_Lamp_Table$`V3_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_Turquoise) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

# New table for grouping all N facets for BloodRed color
NeuroticismFacets_BloodRed <- matrix(c(Mascot_Lamp_Table$`V4_19) Anxious`,
                                  Mascot_Lamp_Table$`V4_20) Angry and hostile`,
                                  Mascot_Lamp_Table$`V4_21) High level of Depression`,
                                  Mascot_Lamp_Table$`V4_22) Self-conscious`,
                                  Mascot_Lamp_Table$`V4_23) Immoderate behavior`,
                                  Mascot_Lamp_Table$`V4_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_BloodRed) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

# New table for grouping all N facets for pink color
NeuroticismFacets_Pink <- matrix(c(Mascot_Lamp_Table$`V5_19) Anxious`,
                                   Mascot_Lamp_Table$`V5_20) Angry and hostile`,
                                   Mascot_Lamp_Table$`V5_21) High level of Depression`,
                                   Mascot_Lamp_Table$`V5_22) Self-conscious`,
                                   Mascot_Lamp_Table$`V5_23) Immoderate behavior`,
                                   Mascot_Lamp_Table$`V5_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_Pink) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

#-----------
# New table for grouping all 6 facets of Openness for yellow color
OpennessFacets_Yellow <- matrix(c(Mascot_Lamp_Table$`V1_25) Imaginative`,
                                  Mascot_Lamp_Table$`V1_26) Artistic interests`,
                                  Mascot_Lamp_Table$`V1_27) Emotional`,
                                  Mascot_Lamp_Table$`V1_28) Adventurous`,
                                  Mascot_Lamp_Table$`V1_29) Intellectual`,
                                  Mascot_Lamp_Table$`V1_30) Liberal`), ncol = 6)
colnames(OpennessFacets_Yellow) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

# New table for grouping all 6 facets for orange color
OpennessFacets_Orange <- matrix(c(Mascot_Lamp_Table$`V2_25) Imaginative`,
                                  Mascot_Lamp_Table$`V2_26) Artistic interests`,
                                  Mascot_Lamp_Table$`V2_27) Emotional`,
                                  Mascot_Lamp_Table$`V2_28) Adventurous`,
                                  Mascot_Lamp_Table$`V2_29) Intellectual`,
                                  Mascot_Lamp_Table$`V2_30) Liberal`), ncol = 6)
colnames(OpennessFacets_Orange) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

# New table for grouping all 6 facets for Turquoise color
OpennessFacets_Turquoise <- matrix(c(Mascot_Lamp_Table$`V3_25) Imaginative`,
                                 Mascot_Lamp_Table$`V3_26) Artistic interests`,
                                 Mascot_Lamp_Table$`V3_27) Emotional`,
                                 Mascot_Lamp_Table$`V3_28) Adventurous`,
                                 Mascot_Lamp_Table$`V3_29) Intellectual`,
                                 Mascot_Lamp_Table$`V3_30) Liberal`), ncol = 6)
colnames(OpennessFacets_Turquoise) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

# New table for grouping all 6 facets for BloodRed color
OpennessFacets_BloodRed <- matrix(c(Mascot_Lamp_Table$`V4_25) Imaginative`,
                               Mascot_Lamp_Table$`V4_26) Artistic interests`,
                               Mascot_Lamp_Table$`V4_27) Emotional`,
                               Mascot_Lamp_Table$`V4_28) Adventurous`,
                               Mascot_Lamp_Table$`V4_29) Intellectual`,
                               Mascot_Lamp_Table$`V4_30) Liberal`), ncol = 6)
colnames(OpennessFacets_BloodRed) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

# New table for grouping all 6 facets for pink color
OpennessFacets_Pink <- matrix(c(Mascot_Lamp_Table$`V5_25) Imaginative`,
                                Mascot_Lamp_Table$`V5_26) Artistic interests`,
                                Mascot_Lamp_Table$`V5_27) Emotional`,
                                Mascot_Lamp_Table$`V5_28) Adventurous`,
                                Mascot_Lamp_Table$`V5_29) Intellectual`,
                                Mascot_Lamp_Table$`V5_30) Liberal`), ncol = 6)
colnames(OpennessFacets_Pink) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

#------------------------------------------------------
# There are 2 studies:
# Study-1: WITHIN PERSONALITY (one table consists of the mean of all 6 facets of same personality with different colors, each color represents one color)
# Study-2: WITHIN COLOR (one table consists of the mean of all 6 facets each personality with the same color, each color represents one personality trait)

# EXTRAVERSION between colors: i.e each column consists of the mean value of all 6 facets of Extraversion for specific color

# Study-1: WITHIN PERSONALITY
# --------------------------------------------------------------------------------
# |    | E_Yellow_Mean | E_Orange_Mean | E_Turquoise_Mean | E_BloodRed_Mean | E_Pink_Mean |
# |  1 |               |               |                  |                 |             |
# | .. |               |               |                  |                 |             |
# | 25 |               |               |                  |                 |             |
# --------------------------------------------------------------------------------
Extraversion_Colors <- matrix(c(rowMeans(ExtraversionFacets_Yellow), rowMeans(ExtraversionFacets_Orange), rowMeans(ExtraversionFacets_Turquoise), 
                                rowMeans(ExtraversionFacets_BloodRed), rowMeans(ExtraversionFacets_Pink)), ncol = 5)
colnames(Extraversion_Colors) <- c("Y", "O", "T", "B", "P")
Extraversion_Colors_DataFrame <- as.data.frame(Extraversion_Colors)

# A between colors
Agreeableness_Colors <- matrix(c(rowMeans(AgreeablenessFacets_Yellow), rowMeans(AgreeablenessFacets_Orange), rowMeans(AgreeablenessFacets_Turquoise), 
                                 rowMeans(AgreeablenessFacets_BloodRed), rowMeans(AgreeablenessFacets_Pink)), ncol = 5)
colnames(Agreeableness_Colors) <- c("Y", "O", "T", "B", "P")
Agreeableness_Colors_DataFrame <- as.data.frame(Agreeableness_Colors)

# C between colors
Conscientiousness_Colors <- matrix(c(rowMeans(ConscientiousnessFacets_Yellow), rowMeans(ConscientiousnessFacets_Orange), rowMeans(ConscientiousnessFacets_Turquoise), 
                                     rowMeans(ConscientiousnessFacets_BloodRed), rowMeans(ConscientiousnessFacets_Pink)), ncol = 5)
colnames(Conscientiousness_Colors) <- c("Y", "O", "T", "B", "P")
Conscientiousness_Colors_DataFrame <- as.data.frame(Conscientiousness_Colors)

# N between colors
Neuroticism_Colors <- matrix(c(rowMeans(NeuroticismFacets_Yellow), rowMeans(NeuroticismFacets_Orange), rowMeans(NeuroticismFacets_Turquoise), 
                               rowMeans(NeuroticismFacets_BloodRed), rowMeans(NeuroticismFacets_Pink)), ncol = 5)
colnames(Neuroticism_Colors) <- c("Y", "O", "T", "B", "P")
Neuroticism_Colors_DataFrame <- as.data.frame(Neuroticism_Colors)

# O between colors
Openness_Colors <- matrix(c(rowMeans(OpennessFacets_Yellow), rowMeans(OpennessFacets_Orange), rowMeans(OpennessFacets_Turquoise), 
                            rowMeans(OpennessFacets_BloodRed), rowMeans(OpennessFacets_Pink)), ncol = 5)
colnames(Openness_Colors) <- c("Y", "O", "T", "B", "P")
Openness_Colors_DataFrame <- as.data.frame(Openness_Colors)

# Study-2: WITHIN COLOR
# -------------------------------------------------------------------------------------
# |    | E_Yellow_Mean | A_Yellow_Mean | C_Yellow_Mean | N_Yellow_Mean | O_Yellow_Mean |
# |  1 |               |               |               |               |               |
# | .. |               |               |               |               |               |
# | 25 |               |               |               |               |               |
# -------------------------------------------------------------------------------------
# Y between personalities
Yellow_Personalities <- matrix(c(rowMeans(ExtraversionFacets_Yellow), rowMeans(AgreeablenessFacets_Yellow), rowMeans(ConscientiousnessFacets_Yellow), 
                                 rowMeans(NeuroticismFacets_Yellow), rowMeans(OpennessFacets_Yellow)), ncol = 5)
colnames(Yellow_Personalities) <- c("E", "A", "C", "N", "O")
Yellow_Personalities_DataFrame <- as.data.frame(Yellow_Personalities)

# O between personalities
Orange_Personalities <- matrix(c(rowMeans(ExtraversionFacets_Orange), rowMeans(AgreeablenessFacets_Orange), rowMeans(ConscientiousnessFacets_Orange), 
                                        rowMeans(NeuroticismFacets_Orange), rowMeans(OpennessFacets_Orange)), ncol = 5)
colnames(Orange_Personalities) <- c("E", "A", "C", "N", "O")
Orange_Personalities_DataFrame <- as.data.frame(Orange_Personalities)

# T between personalities
Turquoise_Personalities <- matrix(c(rowMeans(ExtraversionFacets_Turquoise), rowMeans(AgreeablenessFacets_Turquoise), rowMeans(ConscientiousnessFacets_Turquoise), 
                                    rowMeans(NeuroticismFacets_Turquoise), rowMeans(OpennessFacets_Turquoise)), ncol = 5)
colnames(Turquoise_Personalities) <- c("E", "A", "C", "N", "O")
Turquoise_Personalities_DataFrame <- as.data.frame(Turquoise_Personalities)

# BloodRed between personalities
BloodRed_Personalities <- matrix(c(rowMeans(ExtraversionFacets_BloodRed), rowMeans(AgreeablenessFacets_BloodRed), rowMeans(ConscientiousnessFacets_BloodRed), 
                                   rowMeans(NeuroticismFacets_BloodRed), rowMeans(OpennessFacets_BloodRed)), ncol = 5)
colnames(BloodRed_Personalities) <- c("E", "A", "C", "N", "O")
BloodRed_Personalities_DataFrame <- as.data.frame(BloodRed_Personalities)

# P between personalities
Pink_Personalities <- matrix(c(rowMeans(ExtraversionFacets_Pink), rowMeans(AgreeablenessFacets_Pink), rowMeans(ConscientiousnessFacets_Pink), 
                               rowMeans(NeuroticismFacets_Pink), rowMeans(OpennessFacets_Pink)), ncol = 5)
colnames(Pink_Personalities) <- c("E", "A", "C", "N", "O")
Pink_Personalities_DataFrame <- as.data.frame(Pink_Personalities)

#--------------------------------------------------------------------------------------------------------------------------
#  -------- -------- -------- -------- -------- Non-parametric Statistical Tests -------- -------- -------- -------- ------

# Since we have an ordinal (ranked) data, we would like to use one a non-parametric statistical test - the Friedman's test. 

# Participants watched five videos of Mascot-Lamp interraction where there were 
# one of the following light colors of a lamp in each video (yellow, orange, Turquoise, BloodRed, pink light color) and 
# one Personality of a Mascot (in this case Extraversion) and participants were asked several Likert style questions about each video. 

# Extraversion within all colors
library(reshape2)
library(magrittr)
library(ggplot2)
library(ggpubr)
library(gridExtra)
library(grid)
library(lattice)

# Study-1: WITHIN PERSONALITY
longExtraversionColors <- melt(Extraversion_Colors, id.vars=c("ID"))
colnames(longExtraversionColors) <- c("ID", "Colors", "Scales")

longAgreeablenessColors <- melt(Agreeableness_Colors, id.vars=c("ID"))
colnames(longAgreeablenessColors) <- c("ID", "Colors", "Scales")

longConscientiousnessColors <- melt(Conscientiousness_Colors, id.vars=c("ID"))
colnames(longConscientiousnessColors) <- c("ID", "Colors", "Scales")

longNeuroticismColors <- melt(Neuroticism_Colors, id.vars=c("ID"))
colnames(longNeuroticismColors) <- c("ID", "Colors", "Scales")

longOpennessColors <- melt(Openness_Colors, id.vars=c("ID"))
colnames(longOpennessColors) <- c("ID", "Colors", "Scales")

#############################
# Study-2: WITHIN COLOR
longYellow_Personalities <- melt(Yellow_Personalities, id.vars=c("ID"))
colnames(longYellow_Personalities) <- c("ID", "Personalities", "Scales")

longOrange_Personalities <- melt(Orange_Personalities, id.vars=c("ID"))
colnames(longOrange_Personalities) <- c("ID", "Personalities", "Scales")

longTurquoise_Personalities <- melt(Turquoise_Personalities, id.vars=c("ID"))
colnames(longTurquoise_Personalities) <- c("ID", "Personalities", "Scales")

longBloodRed_Personalities <- melt(BloodRed_Personalities, id.vars=c("ID"))
colnames(longBloodRed_Personalities) <- c("ID", "Personalities", "Scales")

longPink_Personalities <- melt(Pink_Personalities, id.vars=c("ID"))
colnames(longPink_Personalities) <- c("ID", "Personalities", "Scales")

##################################################################################
## Display summary of longExtraversionColor, longAgreeablenessColors and etc matrix
library(FSA)
# Study-1: Within Personality
Summarize(Scales ~ Colors, data=longExtraversionColors)
Summarize(Scales ~ Colors, data=longAgreeablenessColors)
Summarize(Scales ~ Colors, data=longConscientiousnessColors)
Summarize(Scales ~ Colors, data=longNeuroticismColors)
Summarize(Scales ~ Colors, data=longOpennessColors)

# Study-2: Within Color
Summarize(Scales ~ Personalities, data=longYellow_Personalities)
Summarize(Scales ~ Personalities, data=longOrange_Personalities)
Summarize(Scales ~ Personalities, data=longTurquoise_Personalities)
Summarize(Scales ~ Personalities, data=longBloodRed_Personalities)
Summarize(Scales ~ Personalities, data=longPink_Personalities)

################################################################
# Friedman -> Effect Sizes -> Wilcoxon Signed Rank tests + wilcox value for each group -> Wilcoxon with Bonferroni correction
################################################################
library("rstatix")
library(survival)
library(coin)
################################################################
# Study-1: Within Personality
friedman.test(Extraversion_Colors)
longExtraversionColors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Extraversion_Colors_DataFrame$Y ~ Extraversion_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$Y ~ Extraversion_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$Y ~ Extraversion_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$Y ~ Extraversion_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$O ~ Extraversion_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$O ~ Extraversion_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$O ~ Extraversion_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$T ~ Extraversion_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$T ~ Extraversion_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Colors_DataFrame$B ~ Extraversion_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_E_p_values <- c(0.3773, 0.0004132, 2.852e-05, 9.814e-05, 0.01448, 3.382e-05, 0.01552, 0.0006824, 0.8876, 0.0004371)
p.adjust(wilcox_E_p_values, method = "bonf")

friedman.test(Agreeableness_Colors)
longAgreeablenessColors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Agreeableness_Colors_DataFrame$Y ~ Agreeableness_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$Y ~ Agreeableness_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$Y ~ Agreeableness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$Y ~ Agreeableness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$O ~ Agreeableness_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$O ~ Agreeableness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$O ~ Agreeableness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$T ~ Agreeableness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$T ~ Agreeableness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Colors_DataFrame$B ~ Agreeableness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_A_p_values <- c(0.0002933, 0.7453, 5.73e-05, 0.0237, 4.879e-05, 0.06552, 1.755e-05, 1.863e-05, 0.1062, 2.829e-05)
p.adjust(wilcox_A_p_values, method = "bonf")

friedman.test(Conscientiousness_Colors)
longConscientiousnessColors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Conscientiousness_Colors_DataFrame$Y ~ Conscientiousness_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$Y ~ Conscientiousness_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$Y ~ Conscientiousness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$Y ~ Conscientiousness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$O ~ Conscientiousness_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$O ~ Conscientiousness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$O ~ Conscientiousness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$T ~ Conscientiousness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$T ~ Conscientiousness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Colors_DataFrame$B ~ Conscientiousness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_C_p_values <- c(0.0008581, 0.1777, 0.001401, 0.2936, 0.0001342, 0.7163, 0.0001579, 0.001193, 0.2797, 0.001658)
p.adjust(wilcox_C_p_values, method = "bonf")

friedman.test(Neuroticism_Colors)
longNeuroticismColors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Neuroticism_Colors_DataFrame$Y ~ Neuroticism_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$Y ~ Neuroticism_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$Y ~ Neuroticism_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$Y ~ Neuroticism_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$O ~ Neuroticism_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$O ~ Neuroticism_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$O ~ Neuroticism_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$T ~ Neuroticism_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$T ~ Neuroticism_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Colors_DataFrame$B ~ Neuroticism_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_N_p_values <- c(0.4949, 0.651, 1.565e-05, 0.04182, 0.2624, 2.043e-05, 0.01774, 1.811e-05, 0.1929, 1.221e-05)
p.adjust(wilcox_N_p_values, method = "bonf")

friedman.test(Openness_Colors)
longOpennessColors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Openness_Colors_DataFrame$Y ~ Openness_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$Y ~ Openness_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$Y ~ Openness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$Y ~ Openness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$O ~ Openness_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$O ~ Openness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$O ~ Openness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$T ~ Openness_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$T ~ Openness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Colors_DataFrame$B ~ Openness_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_O_p_values <- c(0.1008, 0.006888, 0.0005363, 0.004396, 0.3292, 0.002139, 0.1, 0.07493, 0.4398, 0.1824)
p.adjust(wilcox_O_p_values, method = "bonf")

################################################################
# Friedman -> Effect Sizes -> Wilcoxon Signed Rank tests + wilcox value for each group -> Wilcoxon with Bonferroni correction
################################################################
# Study-2: Within Color/Condition
friedman.test(Yellow_Personalities)
longYellow_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Yellow_Personalities_DataFrame$E ~ Yellow_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$E ~ Yellow_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$E ~ Yellow_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$E ~ Yellow_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$A ~ Yellow_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$A ~ Yellow_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$A ~ Yellow_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$C ~ Yellow_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$C ~ Yellow_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_Personalities_DataFrame$N ~ Yellow_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Yellow_p_values <- c(0.2414, 0.05916, 8.51e-05, 0.3938, 0.6258, 0.0003694, 0.6727, 0.0005404, 0.3894, 0.000284)
p.adjust(wilcox_Yellow_p_values, method = "bonf")

friedman.test(Orange_Personalities)
longOrange_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Orange_Personalities_DataFrame$E ~ Orange_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$E ~ Orange_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$E ~ Orange_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$E ~ Orange_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$A ~ Orange_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$A ~ Orange_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$A ~ Orange_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$C ~ Orange_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$C ~ Orange_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_Personalities_DataFrame$N ~ Orange_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Orange_p_values <- c(5.592e-05, 0.0005811, 0.0009712, 0.2008, 0.08277, 0.8188, 3.98e-05, 0.09084, 0.003521, 0.001703)
p.adjust(wilcox_Orange_p_values, method = "bonf")

friedman.test(Turquoise_Personalities)
longTurquoise_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Turquoise_Personalities_DataFrame$E ~ Turquoise_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$E ~ Turquoise_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$E ~ Turquoise_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$E ~ Turquoise_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$A ~ Turquoise_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$A ~ Turquoise_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$A ~ Turquoise_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$C ~ Turquoise_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$C ~ Turquoise_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_Personalities_DataFrame$N ~ Turquoise_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Turquoise_p_values <- c(0.0001124, 0.0008407, 0.002453, 0.1971, 0.3079, 0.0001634, 0.004433, 2.816e-05, 0.000595, 0.0005057)
p.adjust(wilcox_Turquoise_p_values, method = "bonf")

friedman.test(BloodRed_Personalities)
longBloodRed_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(BloodRed_Personalities_DataFrame$E ~ BloodRed_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$E ~ BloodRed_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$E ~ BloodRed_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$E ~ BloodRed_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$A ~ BloodRed_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$A ~ BloodRed_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$A ~ BloodRed_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$C ~ BloodRed_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$C ~ BloodRed_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(BloodRed_Personalities_DataFrame$N ~ BloodRed_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_BloodRed_p_values <- c(0.8223, 0.008625, 1.384e-05,  0.003628, 0.00326, 2.3e-05, 0.001292, 0.0001122, 0.7936, 7.159e-05)
p.adjust(wilcox_BloodRed_p_values, method = "bonf")

friedman.test(Pink_Personalities)
longPink_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Pink_Personalities_DataFrame$E ~ Pink_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$E ~ Pink_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$E ~ Pink_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$E ~ Pink_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$A ~ Pink_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$A ~ Pink_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$A ~ Pink_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$C ~ Pink_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$C ~ Pink_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_Personalities_DataFrame$N ~ Pink_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Pink_p_values <- c(6.771e-05, 0.0005513, 0.0002405, 0.7033, 0.03893, 2.241e-05, 8.881e-05, 2.243e-05, 0.001431, 8.418e-05)
p.adjust(wilcox_Pink_p_values, method = "bonf")

########### Visual representation of Study-1 and Study-2 with boxplots with Wilcoxon Signed Rank tests, therefore we pass (paired=True) argument
stars <- list(cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), symbols = c("**", "**", "*", "*", "ns"))
###################
my_comparisonsLampNew1E <- list( c("Y", "T"), 
                                 c("Y","B"), 
                                 c("Y","P"),
                                 c("O", "B"),
                                 c("T", "B"), 
                                 c("B", "P"))
mean_comparison1E <- stat_compare_means(comparisons = my_comparisonsLampNew1E, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1E <- ggboxplot(longExtraversionColors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.7)) + mean_comparison1E + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1E
###################
my_comparisonsLampNew1A <- list( c("Y", "O"), 
                                 c("Y","B"), 
                                 c("O", "T"), 
                                 c("O", "P"),
                                 c("T", "B"), 
                                 c("B", "P"))
mean_comparison1A <- stat_compare_means(comparisons = my_comparisonsLampNew1A, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1A <- ggboxplot(longAgreeablenessColors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.7)) + mean_comparison1A + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1A
###################
my_comparisonsLampNew1C <- list( c("Y", "O"), 
                                 c("Y","B"), 
                                 c("O","T"),
                                 c("O", "P"), 
                                 c("T", "B"),
                                 c("B", "P"))
mean_comparison1C <- stat_compare_means(comparisons = my_comparisonsLampNew1C, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1C <- ggboxplot(longConscientiousnessColors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.7)) + mean_comparison1C + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1C
###################
my_comparisonsLampNew1N <- list( c("Y", "B"), 
                                 c("O", "B"),
                                 c("T", "B"), 
                                 c("B", "P"))
mean_comparison1N <- stat_compare_means(comparisons = my_comparisonsLampNew1N, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1N <- ggboxplot(longNeuroticismColors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.7)) + mean_comparison1N + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1N
###################
my_comparisonsLampNew1O <- list( c("Y", "B"), 
                                 c("Y","P"),
                                 c("O", "B"))
mean_comparison1O <- stat_compare_means(comparisons = my_comparisonsLampNew1O, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1O <- ggboxplot(longOpennessColors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.7)) + mean_comparison1O + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1O
###############################################################################################
my_comparisonsLampNew2Yel <- list( c("E", "N"), 
                                   c("A","N"), 
                                   c("C","N"),
                                   c("N", "O"))
mean_comparison2Yel <- stat_compare_means(comparisons = my_comparisonsLampNew2Yel, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2Yel <- ggboxplot(longYellow_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.7)) + mean_comparison2Yel + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2Yel
###################
my_comparisonsLampNew2Ora <- list( c("E", "A"), 
                                   c("E","C"), 
                                   c("E","N"),
                                   c("A", "O"), 
                                   c("C", "O"),
                                   c("N", "O"))
mean_comparison2Ora <- stat_compare_means(comparisons = my_comparisonsLampNew2Ora, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2Ora <- ggboxplot(longOrange_Personalities,
                          x = "Personalities", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                          palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.7)) + mean_comparison2Ora + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2Ora
###################
my_comparisonsLampNew2Tur <- list( c("E", "A"), 
                                   c("E","C"), 
                                   c("E","N"),
                                   c("A", "N"),
                                   c("A", "O"),
                                   c("C", "N"),
                                   c("C", "O"),
                                   c("N", "O"))
mean_comparison2Tur <- stat_compare_means(comparisons = my_comparisonsLampNew2Tur, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2Tur <- ggboxplot(longTurquoise_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.7)) + mean_comparison2Tur + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2Tur
###################
my_comparisonsLampNew2Blo <- list( c("E", "N"), 
                                   c("E","O"), 
                                   c("A","C"),
                                   c("A", "N"), 
                                   c("A", "O"),
                                   c("C", "N"), 
                                   c("N", "O"))
mean_comparison2Blo <- stat_compare_means(comparisons = my_comparisonsLampNew2Blo, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2Blo <- ggboxplot(longBloodRed_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.7)) + mean_comparison2Blo + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2Blo
###################
my_comparisonsLampNew2Pin <- list( c("E", "A"), 
                                   c("E","C"), 
                                   c("E","N"),
                                   c("A", "N"), 
                                   c("A", "O"),
                                   c("C", "N"),
                                   c("C", "O"),
                                   c("N", "O"))
mean_comparison2Pin <- stat_compare_means(comparisons = my_comparisonsLampNew2Pin, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2Pin <- ggboxplot(longPink_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.7)) + mean_comparison2Pin + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2Pin
