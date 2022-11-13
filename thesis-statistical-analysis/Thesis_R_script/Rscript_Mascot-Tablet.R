# install.packages("reshape2")
# install.packages("rstatix")
# install.packages("survival")
# install.packages("FSA")

# Import libarary for reading your Mascot-Lamp csv file 
library(readr)

# Created the variable for our whole Mascot_Lamp table
Mascot_Tablet_Table <- read_csv("~/Desktop/LatifaAbdullayevaThesis/ThesisStatisticalAnalysis/Thesis_Experiment_csv_files/Mascot-Tablet(Responses).csv")

#-------------------------------------------------------------------------------------------------------------------------
#  -------- -------- -------- -------- -------- Creating Tables and Variables -------- -------- -------- -------- --------

# New table for grouping all EXTRAVERSION FACETS for yellow color
ExtraversionFacets_T_Yellow <- matrix(c(Mascot_Tablet_Table$`V1_1) Friendly and warm`, 
                                      Mascot_Tablet_Table$`V1_2) Gregarious and sociable`,
                                      Mascot_Tablet_Table$`V1_3) Assertive and Forceful`,
                                      Mascot_Tablet_Table$`V1_4) Highly active and Energetic`,
                                      Mascot_Tablet_Table$`V1_5) Seeks for Excitement`,
                                      Mascot_Tablet_Table$`V1_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_T_Yellow) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_T_Turquoise <- matrix(c(Mascot_Tablet_Table$`V2_1) Friendly and warm`, 
                                      Mascot_Tablet_Table$`V2_2) Gregarious and sociable`,
                                      Mascot_Tablet_Table$`V2_3) Assertive and Forceful`,
                                      Mascot_Tablet_Table$`V2_4) Highly active and Energetic`,
                                      Mascot_Tablet_Table$`V2_5) Seeks for Excitement`,
                                      Mascot_Tablet_Table$`V2_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_T_Turquoise) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_T_Pink <- matrix(c(Mascot_Tablet_Table$`V3_1) Friendly and warm`, 
                                     Mascot_Tablet_Table$`V3_2) Gregarious and sociable`,
                                     Mascot_Tablet_Table$`V3_3) Assertive and Forceful`,
                                     Mascot_Tablet_Table$`V3_4) Highly active and Energetic`,
                                     Mascot_Tablet_Table$`V3_5) Seeks for Excitement`,
                                     Mascot_Tablet_Table$`V3_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_T_Pink) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_T_Orange <- matrix(c(Mascot_Tablet_Table$`V4_1) Friendly and warm`, 
                                   Mascot_Tablet_Table$`V4_2) Gregarious and sociable`,
                                   Mascot_Tablet_Table$`V4_3) Assertive and Forceful`,
                                   Mascot_Tablet_Table$`V4_4) Highly active and Energetic`,
                                   Mascot_Tablet_Table$`V4_5) Seeks for Excitement`,
                                   Mascot_Tablet_Table$`V4_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_T_Orange) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_T_Blood_Red <- matrix(c(Mascot_Tablet_Table$`V5_1) Friendly and warm`, 
                                    Mascot_Tablet_Table$`V5_2) Gregarious and sociable`,
                                    Mascot_Tablet_Table$`V5_3) Assertive and Forceful`,
                                    Mascot_Tablet_Table$`V5_4) Highly active and Energetic`,
                                    Mascot_Tablet_Table$`V5_5) Seeks for Excitement`,
                                    Mascot_Tablet_Table$`V5_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_T_Blood_Red) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

AgreeablenessFacets_T_Yellow <- matrix(c(Mascot_Tablet_Table$`V1_7) Trusting and forgiving`,
                                       Mascot_Tablet_Table$`V1_8) Straightforward`,
                                       Mascot_Tablet_Table$`V1_9) Altruistic`,
                                       Mascot_Tablet_Table$`V1_10) Cooperative`,
                                       Mascot_Tablet_Table$`V1_11) Modest`,
                                       Mascot_Tablet_Table$`V1_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_T_Yellow) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_T_Turquoise <- matrix(c(Mascot_Tablet_Table$`V2_7) Trusting and forgiving`,
                                       Mascot_Tablet_Table$`V2_8) Straightforward`,
                                       Mascot_Tablet_Table$`V2_9) Altruistic`,
                                       Mascot_Tablet_Table$`V2_10) Cooperative`,
                                       Mascot_Tablet_Table$`V2_11) Modest`,
                                       Mascot_Tablet_Table$`V2_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_T_Turquoise) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_T_Pink <- matrix(c(Mascot_Tablet_Table$`V3_7) Trusting and forgiving`,
                                      Mascot_Tablet_Table$`V3_8) Straightforward`,
                                      Mascot_Tablet_Table$`V3_9) Altruistic`,
                                      Mascot_Tablet_Table$`V3_10) Cooperative`,
                                      Mascot_Tablet_Table$`V3_11) Modest`,
                                      Mascot_Tablet_Table$`V3_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_T_Pink) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_T_Orange <- matrix(c(Mascot_Tablet_Table$`V4_7) Trusting and forgiving`,
                                    Mascot_Tablet_Table$`V4_8) Straightforward`,
                                    Mascot_Tablet_Table$`V4_9) Altruistic`,
                                    Mascot_Tablet_Table$`V4_10) Cooperative`,
                                    Mascot_Tablet_Table$`V4_11) Modest`,
                                    Mascot_Tablet_Table$`V4_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_T_Orange) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_T_Blood_Red <- matrix(c(Mascot_Tablet_Table$`V5_7) Trusting and forgiving`,
                                     Mascot_Tablet_Table$`V5_8) Straightforward`,
                                     Mascot_Tablet_Table$`V5_9) Altruistic`,
                                     Mascot_Tablet_Table$`V5_10) Cooperative`,
                                     Mascot_Tablet_Table$`V5_11) Modest`,
                                     Mascot_Tablet_Table$`V5_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_T_Blood_Red) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

ConscientiousnessFacets_T_Yellow <- matrix(c(Mascot_Tablet_Table$`V1_13) High sense of Self-efficacy`,
                                           Mascot_Tablet_Table$`V1_14) Orderly`,
                                           Mascot_Tablet_Table$`V1_15) Dutiful`,
                                           Mascot_Tablet_Table$`V1_16) Achievement-striving`,
                                           Mascot_Tablet_Table$`V1_17) Self-disciplined`,
                                           Mascot_Tablet_Table$`V1_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_T_Yellow) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_T_Turquoise <- matrix(c(Mascot_Tablet_Table$`V2_13) High sense of Self-efficacy`,
                                           Mascot_Tablet_Table$`V2_14) Orderly`,
                                           Mascot_Tablet_Table$`V2_15) Dutiful`,
                                           Mascot_Tablet_Table$`V2_16) Achievement-striving`,
                                           Mascot_Tablet_Table$`V2_17) Self-disciplined`,
                                           Mascot_Tablet_Table$`V2_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_T_Turquoise) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_T_Pink <- matrix(c(Mascot_Tablet_Table$`V3_13) High sense of Self-efficacy`,
                                          Mascot_Tablet_Table$`V3_14) Orderly`,
                                          Mascot_Tablet_Table$`V3_15) Dutiful`,
                                          Mascot_Tablet_Table$`V3_16) Achievement-striving`,
                                          Mascot_Tablet_Table$`V3_17) Self-disciplined`,
                                          Mascot_Tablet_Table$`V3_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_T_Pink) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_T_Orange <- matrix(c(Mascot_Tablet_Table$`V4_13) High sense of Self-efficacy`,
                                        Mascot_Tablet_Table$`V4_14) Orderly`,
                                        Mascot_Tablet_Table$`V4_15) Dutiful`,
                                        Mascot_Tablet_Table$`V4_16) Achievement-striving`,
                                        Mascot_Tablet_Table$`V4_17) Self-disciplined`,
                                        Mascot_Tablet_Table$`V4_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_T_Orange) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_T_Blood_Red <- matrix(c(Mascot_Tablet_Table$`V5_13) High sense of Self-efficacy`,
                                         Mascot_Tablet_Table$`V5_14) Orderly`,
                                         Mascot_Tablet_Table$`V5_15) Dutiful`,
                                         Mascot_Tablet_Table$`V5_16) Achievement-striving`,
                                         Mascot_Tablet_Table$`V5_17) Self-disciplined`,
                                         Mascot_Tablet_Table$`V5_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_T_Blood_Red) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

NeuroticismFacets_T_Yellow <- matrix(c(Mascot_Tablet_Table$`V1_19) Anxious`,
                                     Mascot_Tablet_Table$`V1_20) Angry and hostile`,
                                     Mascot_Tablet_Table$`V1_21) High level of Depression`,
                                     Mascot_Tablet_Table$`V1_22) Self-conscious`,
                                     Mascot_Tablet_Table$`V1_23) Immoderate behavior`,
                                     Mascot_Tablet_Table$`V1_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_T_Yellow) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_T_Turquoise <- matrix(c(Mascot_Tablet_Table$`V2_19) Anxious`,
                                     Mascot_Tablet_Table$`V2_20) Angry and hostile`,
                                     Mascot_Tablet_Table$`V2_21) High level of Depression`,
                                     Mascot_Tablet_Table$`V2_22) Self-conscious`,
                                     Mascot_Tablet_Table$`V2_23) Immoderate behavior`,
                                     Mascot_Tablet_Table$`V2_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_T_Turquoise) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_T_Pink <- matrix(c(Mascot_Tablet_Table$`V3_19) Anxious`,
                                   Mascot_Tablet_Table$`V3_20) Angry and hostile`,
                                   Mascot_Tablet_Table$`V3_21) High level of Depression`,
                                   Mascot_Tablet_Table$`V3_22) Self-conscious`,
                                   Mascot_Tablet_Table$`V3_23) Immoderate behavior`,
                                   Mascot_Tablet_Table$`V3_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_T_Pink) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_T_Orange <- matrix(c(Mascot_Tablet_Table$`V4_19) Anxious`,
                                  Mascot_Tablet_Table$`V4_20) Angry and hostile`,
                                  Mascot_Tablet_Table$`V4_21) High level of Depression`,
                                  Mascot_Tablet_Table$`V4_22) Self-conscious`,
                                  Mascot_Tablet_Table$`V4_23) Immoderate behavior`,
                                  Mascot_Tablet_Table$`V4_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_T_Orange) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_T_Blood_Red <- matrix(c(Mascot_Tablet_Table$`V5_19) Anxious`,
                                   Mascot_Tablet_Table$`V5_20) Angry and hostile`,
                                   Mascot_Tablet_Table$`V5_21) High level of Depression`,
                                   Mascot_Tablet_Table$`V5_22) Self-conscious`,
                                   Mascot_Tablet_Table$`V5_23) Immoderate behavior`,
                                   Mascot_Tablet_Table$`V5_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_T_Blood_Red) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

OpennessFacets_T_Yellow <- matrix(c(Mascot_Tablet_Table$`V1_25) Imaginative`,
                                  Mascot_Tablet_Table$`V1_26) Artistic interests`,
                                  Mascot_Tablet_Table$`V1_27) Emotional`,
                                  Mascot_Tablet_Table$`V1_28) Adventurous`,
                                  Mascot_Tablet_Table$`V1_29) Intellectual`,
                                  Mascot_Tablet_Table$`V1_30) Liberal`), ncol = 6)
colnames(OpennessFacets_T_Yellow) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_T_Turquoise <- matrix(c(Mascot_Tablet_Table$`V2_25) Imaginative`,
                                  Mascot_Tablet_Table$`V2_26) Artistic interests`,
                                  Mascot_Tablet_Table$`V2_27) Emotional`,
                                  Mascot_Tablet_Table$`V2_28) Adventurous`,
                                  Mascot_Tablet_Table$`V2_29) Intellectual`,
                                  Mascot_Tablet_Table$`V2_30) Liberal`), ncol = 6)
colnames(OpennessFacets_T_Turquoise) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_T_Pink <- matrix(c(Mascot_Tablet_Table$`V3_25) Imaginative`,
                                 Mascot_Tablet_Table$`V3_26) Artistic interests`,
                                 Mascot_Tablet_Table$`V3_27) Emotional`,
                                 Mascot_Tablet_Table$`V3_28) Adventurous`,
                                 Mascot_Tablet_Table$`V3_29) Intellectual`,
                                 Mascot_Tablet_Table$`V3_30) Liberal`), ncol = 6)
colnames(OpennessFacets_T_Pink) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_T_Orange <- matrix(c(Mascot_Tablet_Table$`V4_25) Imaginative`,
                               Mascot_Tablet_Table$`V4_26) Artistic interests`,
                               Mascot_Tablet_Table$`V4_27) Emotional`,
                               Mascot_Tablet_Table$`V4_28) Adventurous`,
                               Mascot_Tablet_Table$`V4_29) Intellectual`,
                               Mascot_Tablet_Table$`V4_30) Liberal`), ncol = 6)
colnames(OpennessFacets_T_Orange) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_T_Blood_Red <- matrix(c(Mascot_Tablet_Table$`V5_25) Imaginative`,
                                Mascot_Tablet_Table$`V5_26) Artistic interests`,
                                Mascot_Tablet_Table$`V5_27) Emotional`,
                                Mascot_Tablet_Table$`V5_28) Adventurous`,
                                Mascot_Tablet_Table$`V5_29) Intellectual`,
                                Mascot_Tablet_Table$`V5_30) Liberal`), ncol = 6)
colnames(OpennessFacets_T_Blood_Red) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")


#------------------------------------------------------
# EXTRAVERSION between colors: i.e each column consists of the mean of all 6 facets of E for specific color

# STUDY-1:
Extraversion_T_Colors <- matrix(c(rowMeans(ExtraversionFacets_T_Yellow),rowMeans(ExtraversionFacets_T_Orange), rowMeans(ExtraversionFacets_T_Turquoise), 
                                  rowMeans(ExtraversionFacets_T_Blood_Red), rowMeans(ExtraversionFacets_T_Pink)), ncol = 5)
colnames(Extraversion_T_Colors) <- c("Y", "O", "T", "B", "P")
Extraversion_T_Colors_DataFrame <- as.data.frame(Extraversion_T_Colors)

# A between colors
Agreeableness_T_Colors <- matrix(c(rowMeans(AgreeablenessFacets_T_Yellow), rowMeans(AgreeablenessFacets_T_Orange), rowMeans(AgreeablenessFacets_T_Turquoise), 
                                  rowMeans(AgreeablenessFacets_T_Blood_Red), rowMeans(AgreeablenessFacets_T_Pink)), ncol = 5)
colnames(Agreeableness_T_Colors) <- c("Y", "O", "T", "B", "P")
Agreeableness_T_Colors_DataFrame <- as.data.frame(Agreeableness_T_Colors)

# C between colors
Conscientiousness_T_Colors <- matrix(c(rowMeans(ConscientiousnessFacets_T_Yellow), rowMeans(ConscientiousnessFacets_T_Orange), rowMeans(ConscientiousnessFacets_T_Turquoise), 
                                      rowMeans(ConscientiousnessFacets_T_Blood_Red), rowMeans(ConscientiousnessFacets_T_Pink)), ncol = 5)
colnames(Conscientiousness_T_Colors) <- c("Y", "O", "T", "B", "P")
Conscientiousness_T_Colors_DataFrame <- as.data.frame(Conscientiousness_T_Colors)

# N between colors
Neuroticism_T_Colors <- matrix(c(rowMeans(NeuroticismFacets_T_Yellow), rowMeans(NeuroticismFacets_T_Orange), rowMeans(NeuroticismFacets_T_Turquoise), 
                                 rowMeans(NeuroticismFacets_T_Blood_Red), rowMeans(NeuroticismFacets_T_Pink)), ncol = 5)
colnames(Neuroticism_T_Colors) <- c("Y", "O", "T", "B", "P")
Neuroticism_T_Colors_DataFrame <- as.data.frame(Neuroticism_T_Colors)

# O between colors
Openness_T_Colors <- matrix(c(rowMeans(OpennessFacets_T_Yellow), rowMeans(OpennessFacets_T_Orange), rowMeans(OpennessFacets_T_Turquoise), 
                              rowMeans(OpennessFacets_T_Blood_Red), rowMeans(OpennessFacets_T_Pink)), ncol = 5)
colnames(Openness_T_Colors) <- c("Y", "O", "T", "B", "P")
Openness_T_Colors_DataFrame <- as.data.frame(Openness_T_Colors)

# STUDY-2:
# Y between personalities
Yellow_T_Personalities <- matrix(c(rowMeans(ExtraversionFacets_T_Yellow), rowMeans(AgreeablenessFacets_T_Yellow), rowMeans(ConscientiousnessFacets_T_Yellow), 
                                 rowMeans(NeuroticismFacets_T_Yellow), rowMeans(OpennessFacets_T_Yellow)), ncol = 5)
colnames(Yellow_T_Personalities) <- c("E", "A", "C", "N", "O")
Yellow_T_Personalities_DataFrame <- as.data.frame(Yellow_T_Personalities)

# O between personalities
Orange_T_Personalities <- matrix(c(rowMeans(ExtraversionFacets_T_Orange), rowMeans(AgreeablenessFacets_T_Orange), rowMeans(ConscientiousnessFacets_T_Orange), 
                                 rowMeans(NeuroticismFacets_T_Orange), rowMeans(OpennessFacets_T_Orange)), ncol = 5)
colnames(Orange_T_Personalities) <- c("E", "A", "C", "N", "O")
Orange_T_Personalities_DataFrame <- as.data.frame(Orange_T_Personalities)

# T between personalities
Turquoise_T_Personalities <- matrix(c(rowMeans(ExtraversionFacets_T_Turquoise), rowMeans(AgreeablenessFacets_T_Turquoise), rowMeans(ConscientiousnessFacets_T_Turquoise), 
                                    rowMeans(NeuroticismFacets_T_Turquoise), rowMeans(OpennessFacets_T_Turquoise)), ncol = 5)
colnames(Turquoise_T_Personalities) <- c("E", "A", "C", "N", "O")
Turquoise_T_Personalities_DataFrame <- as.data.frame(Turquoise_T_Personalities)

# B between personalities
Blood_Red_T_Personalities <- matrix(c(rowMeans(ExtraversionFacets_T_Blood_Red), rowMeans(AgreeablenessFacets_T_Blood_Red), rowMeans(ConscientiousnessFacets_T_Blood_Red), 
                                   rowMeans(NeuroticismFacets_T_Blood_Red), rowMeans(OpennessFacets_T_Blood_Red)), ncol = 5)
colnames(Blood_Red_T_Personalities) <- c("E", "A", "C", "N", "O")
Blood_Red_T_Personalities_DataFrame <- as.data.frame(Blood_Red_T_Personalities)

# P between personalities
Pink_T_Personalities <- matrix(c(rowMeans(ExtraversionFacets_T_Pink), rowMeans(AgreeablenessFacets_T_Pink), rowMeans(ConscientiousnessFacets_T_Pink), 
                               rowMeans(NeuroticismFacets_T_Pink), rowMeans(OpennessFacets_T_Pink)), ncol = 5)
colnames(Pink_T_Personalities) <- c("E", "A", "C", "N", "O")
Pink_T_Personalities_DataFrame <- as.data.frame(Pink_T_Personalities)

#--------------------------------------------------------------------------------------------------------------------------
#  -------- -------- -------- -------- -------- Non-parametric Statistical Tests -------- -------- -------- -------- ------
library(reshape2)
library(magrittr)
library(ggplot2)
library(ggpubr)
library(gridExtra)
library(grid)
library(lattice)

# STUDY-1:
longExtraversionT_Colors <- melt(Extraversion_T_Colors, id.vars=c("ID"))
colnames(longExtraversionT_Colors) <- c("ID", "Colors", "Scales")

longAgreeablenessT_Colors <- melt(Agreeableness_T_Colors, id.vars=c("ID"))
colnames(longAgreeablenessT_Colors) <- c("ID", "Colors", "Scales")

longConscientiousnessT_Colors <- melt(Conscientiousness_T_Colors, id.vars=c("ID"))
colnames(longConscientiousnessT_Colors) <- c("ID", "Colors", "Scales")

longNeuroticismT_Colors <- melt(Neuroticism_T_Colors, id.vars=c("ID"))
colnames(longNeuroticismT_Colors) <- c("ID", "Colors", "Scales")

longOpennessT_Colors <- melt(Openness_T_Colors, id.vars=c("ID"))
colnames(longOpennessT_Colors) <- c("ID", "Colors", "Scales")

# STUDY-2:
longYellow_T_Personalities <- melt(Yellow_T_Personalities, id.vars=c("ID"))
colnames(longYellow_T_Personalities) <- c("ID", "Personalities", "Scales")

longOrange_T_Personalities <- melt(Orange_T_Personalities, id.vars=c("ID"))
colnames(longOrange_T_Personalities) <- c("ID", "Personalities", "Scales")

longTurquoise_T_Personalities <- melt(Turquoise_T_Personalities, id.vars=c("ID"))
colnames(longTurquoise_T_Personalities) <- c("ID", "Personalities", "Scales")

longBlood_Red_T_Personalities <- melt(Blood_Red_T_Personalities, id.vars=c("ID"))
colnames(longBlood_Red_T_Personalities) <- c("ID", "Personalities", "Scales")

longPink_T_Personalities <- melt(Pink_T_Personalities, id.vars=c("ID"))
colnames(longPink_T_Personalities) <- c("ID", "Personalities", "Scales")

## Display summary of longExtraversionColor matrix
library(FSA)
# STUDY-1:
Summarize(Scales ~ Colors, data=longExtraversionT_Colors)
Summarize(Scales ~ Colors, data=longAgreeablenessT_Colors)
Summarize(Scales ~ Colors, data=longConscientiousnessT_Colors)
Summarize(Scales ~ Colors, data=longNeuroticismT_Colors)
Summarize(Scales ~ Colors, data=longOpennessT_Colors)

# STUDY-2:
Summarize(Scales ~ Personalities, data=longYellow_T_Personalities)
Summarize(Scales ~ Personalities, data=longOrange_T_Personalities)
Summarize(Scales ~ Personalities, data=longTurquoise_T_Personalities)
Summarize(Scales ~ Personalities, data=longBlood_Red_T_Personalities)
Summarize(Scales ~ Personalities, data=longPink_T_Personalities)

# Friedman -> Wilcoxon + wilcox value for each group -> Bonferroni
library("rstatix")
library(survival)
library(coin)

# STUDY-1:
friedman.test(Extraversion_T_Colors)
longExtraversionT_Colors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Extraversion_T_Colors_DataFrame$Y ~ Extraversion_T_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$Y ~ Extraversion_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$Y ~ Extraversion_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$Y ~ Extraversion_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$O ~ Extraversion_T_Colors_DataFrame$T , zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$O ~ Extraversion_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$O ~ Extraversion_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$T ~ Extraversion_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$T ~ Extraversion_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_T_Colors_DataFrame$B ~ Extraversion_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_E_p_values <- c(0.02537, 0.03611, 0.001928, 0.001223, 0.006891,  0.0001904, 0.001751, 0.005772, 0.06482, 0.1282)
p.adjust(wilcox_E_p_values, method = "bonf")

friedman.test(Agreeableness_T_Colors)
longAgreeablenessT_Colors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$Y ~ Agreeableness_T_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$Y ~ Agreeableness_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$Y ~ Agreeableness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$Y ~ Agreeableness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$O ~ Agreeableness_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$O ~ Agreeableness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$O ~ Agreeableness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$T ~ Agreeableness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$T ~ Agreeableness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_T_Colors_DataFrame$B ~ Agreeableness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_A_p_values <- c( 0.02359, 0.0001207, 0.000161, 0.01371, 4.248e-05, 0.00161, 0.0009499, 1.211e-05, 0.6479,  0.0001717)
p.adjust(wilcox_A_p_values, method = "bonf")

friedman.test(Conscientiousness_T_Colors)
longConscientiousnessT_Colors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$Y ~ Conscientiousness_T_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$Y ~ Conscientiousness_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$Y ~ Conscientiousness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$Y ~ Conscientiousness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$O ~ Conscientiousness_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$O ~ Conscientiousness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$O ~ Conscientiousness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$T ~ Conscientiousness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$T ~ Conscientiousness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_T_Colors_DataFrame$B ~ Conscientiousness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_C_p_values <- c(0.05735, 9e-05, 0.1249, 0.1525, 0.001356, 0.0005136, 0.5732, 5.939e-05, 0.0002052, 0.01655)
p.adjust(wilcox_C_p_values, method = "bonf")

friedman.test(Neuroticism_T_Colors)
longNeuroticismT_Colors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$Y ~ Neuroticism_T_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$Y ~ Neuroticism_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$Y ~ Neuroticism_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$Y ~ Neuroticism_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$O ~ Neuroticism_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$O ~ Neuroticism_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$O ~ Neuroticism_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$T ~ Neuroticism_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$T ~ Neuroticism_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_T_Colors_DataFrame$B ~ Neuroticism_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_N_p_values <- c( 0.5106, 0.4151, 0.0001421, 0.4557, 0.5294, 0.0003497, 0.3061, 3.199e-05, 0.5626, 0.0002952)
p.adjust(wilcox_N_p_values, method = "bonf")

friedman.test(Openness_T_Colors)
longOpennessT_Colors %>% wilcox_effsize(Scales ~ Colors, paired = TRUE)
wilcoxsign_test(Openness_T_Colors_DataFrame$Y ~ Openness_T_Colors_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$Y ~ Openness_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$Y ~ Openness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$Y ~ Openness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$O ~ Openness_T_Colors_DataFrame$T, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$O ~ Openness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$O ~ Openness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$T ~ Openness_T_Colors_DataFrame$B, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$T ~ Openness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_T_Colors_DataFrame$B ~ Openness_T_Colors_DataFrame$P, zero.method = "Wilcoxon")
wilcox_O_p_values <- c(0.001381, 0.0005381, 2.366e-05, 2.329e-05, 0.2411, 0.2291, 0.9249, 0.008, 0.01552, 0.3301)
p.adjust(wilcox_O_p_values, method = "bonf")

# STUDY-2:
friedman.test(Yellow_T_Personalities)
longYellow_T_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Yellow_T_Personalities_DataFrame$E ~ Yellow_T_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$E ~ Yellow_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$E ~ Yellow_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$E ~ Yellow_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$A ~ Yellow_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$A ~ Yellow_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$A ~ Yellow_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$C ~ Yellow_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$C ~ Yellow_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Yellow_T_Personalities_DataFrame$N ~ Yellow_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Yellow_T_p_values <- c(0.02821, 0.002741, 0.0005725, 0.0001709, 0.6148, 0.04428, 0.0001055, 0.06765, 5.225e-05, 2.672e-05)
p.adjust(wilcox_Yellow_T_p_values, method = "bonf")

friedman.test(Orange_T_Personalities)
longOrange_T_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Orange_T_Personalities_DataFrame$E ~ Orange_T_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$E ~ Orange_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$E ~ Orange_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$E ~ Orange_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$A ~ Orange_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$A ~ Orange_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$A ~ Orange_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$C ~ Orange_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$C ~ Orange_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Orange_T_Personalities_DataFrame$N ~ Orange_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Orange_T_p_values <- c(0.0002995, 0.04691, 0.00223, 0.008214, 0.001918, 0.354, 0.0676, 0.005867, 0.2468, 0.4137)
p.adjust(wilcox_Orange_T_p_values, method = "bonf")

friedman.test(Turquoise_T_Personalities)
longTurquoise_T_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$E ~ Turquoise_T_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$E ~ Turquoise_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$E ~ Turquoise_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$E ~ Turquoise_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$A ~ Turquoise_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$A ~ Turquoise_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$A ~ Turquoise_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$C ~ Turquoise_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$C ~ Turquoise_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Turquoise_T_Personalities_DataFrame$N ~ Turquoise_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Turquoise_T_p_values <- c(0.0001799, 8.522e-05, 0.02519, 0.06665, 0.01094, 0.0001114, 0.001403, 4.66e-05, 0.0003649, 0.00145)
p.adjust(wilcox_Turquoise_T_p_values, method = "bonf")

friedman.test(Blood_Red_T_Personalities)
longBlood_Red_T_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$E ~ Blood_Red_T_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$E ~ Blood_Red_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$E ~ Blood_Red_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$E ~ Blood_Red_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$A ~ Blood_Red_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$A ~ Blood_Red_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$A ~ Blood_Red_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$C ~ Blood_Red_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$C ~ Blood_Red_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Blood_Red_T_Personalities_DataFrame$N ~ Blood_Red_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Blood_Red_T_p_values <- c(0.04267, 0.2665, 0.001746, 0.03985, 0.07015,  0.0002393, 0.0001508, 0.00206, 0.1372, 0.0009622)
p.adjust(wilcox_Blood_Red_T_p_values, method = "bonf")

friedman.test(Pink_T_Personalities)
longPink_T_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Pink_T_Personalities_DataFrame$E ~ Pink_T_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$E ~ Pink_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$E ~ Pink_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$E ~ Pink_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$A ~ Pink_T_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$A ~ Pink_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$A ~ Pink_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$C ~ Pink_T_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$C ~ Pink_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Pink_T_Personalities_DataFrame$N ~ Pink_T_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Pink_T_p_values <- c(0.001709, 0.03768, 0.03788, 0.2904, 0.0222, 0.001131, 0.00281, 0.004228, 0.2973, 0.04073)
p.adjust(wilcox_Pink_T_p_values, method = "bonf")

########### Visual representation of Study-1 and Study-2 with boxplots with Wilcoxon Signed Rank tests, therefore we pass (paired=True) argument
stars <- list(cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), symbols = c("**", "*", "*", "*", "ns"))
###################
my_comparisonsLampNew1TE <- list( c("Y", "B"), 
                                 c("Y","P"),
                                 c("O", "B"),
                                 c("O", "P"))
mean_comparison1TE <- stat_compare_means(comparisons = my_comparisonsLampNew1TE, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1TE <- ggboxplot(longExtraversionT_Colors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.2)) + mean_comparison1TE + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1TE
###################
my_comparisonsLampNew1TA <- list( c("Y", "T"), 
                                 c("Y","B"), 
                                 c("O", "T"), 
                                 c("O", "B"),
                                 c("O", "P"),
                                 c("T", "B"), 
                                 c("B", "P"))
mean_comparison1TA <- stat_compare_means(comparisons = my_comparisonsLampNew1TA, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1TA <- ggboxplot(longAgreeablenessT_Colors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.2)) + mean_comparison1TA + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1TA
###################
my_comparisonsLampNew1TC <- list( c("Y", "T"), 
                                 c("O", "T"), 
                                 c("O", "B"),
                                 c("T", "B"), 
                                 c("T", "P"))
mean_comparison1TC <- stat_compare_means(comparisons = my_comparisonsLampNew1TC, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1TC <- ggboxplot(longConscientiousnessT_Colors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.2)) + mean_comparison1TC + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1TC
###################
my_comparisonsLampNew1TN <- list( c("Y","B"), 
                                 c("O", "B"),
                                 c("T", "B"), 
                                 c("B", "P"))
mean_comparison1TN <- stat_compare_means(comparisons = my_comparisonsLampNew1TN, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1TN <- ggboxplot(longNeuroticismT_Colors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.2)) + mean_comparison1TN + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1TN
###################
my_comparisonsLampNew1TO <- list( c("Y", "O"), 
                                 c("Y", "T"), 
                                 c("Y","B"), 
                                 c("Y","P"))
mean_comparison1TO <- stat_compare_means(comparisons = my_comparisonsLampNew1TO, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1TO <- ggboxplot(longOpennessT_Colors,
                        x = "Colors", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.2)) + mean_comparison1TO + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1TO
###############################################################################################
my_comparisonsLampNew2TYel <- list( c("E", "C"), 
                                   c("E","N"), 
                                   c("E","O"),
                                   c("A", "O"), 
                                   c("C", "O"),
                                   c("N", "O"))
mean_comparison2TYel <- stat_compare_means(comparisons = my_comparisonsLampNew2TYel, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2TYel <- ggboxplot(longYellow_T_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.1)) + mean_comparison2TYel + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2TYel
###################
my_comparisonsLampNew2TOra <- list( c("E", "A"), 
                                   c("E","N"), 
                                   c("A","C"))
mean_comparison2TOra <- stat_compare_means(comparisons = my_comparisonsLampNew2TOra, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2TOra <- ggboxplot(longOrange_T_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.1)) + mean_comparison2TOra + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2TOra
###################
my_comparisonsLampNew2TTur <- list( c("E", "A"), 
                                   c("E","C"), 
                                   c("A","N"),
                                   c("A", "O"), 
                                   c("C", "N"),
                                   c("C", "O"), 
                                   c("N", "O"))
mean_comparison2TTur <- stat_compare_means(comparisons = my_comparisonsLampNew2TTur, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2TTur <- ggboxplot(longTurquoise_T_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.1)) + mean_comparison2TTur + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2TTur
###################
my_comparisonsLampNew2TBlo <- list( c("E", "N"), 
                                   c("A","N"), 
                                   c("A","O"),
                                   c("C", "N"), 
                                   c("N", "O"))
mean_comparison2TBlo <- stat_compare_means(comparisons = my_comparisonsLampNew2TBlo, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2TBlo <- ggboxplot(longBlood_Red_T_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.1)) + mean_comparison2TBlo + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2TBlo
###################
my_comparisonsLampNew2TPin <- list( c("E", "A"), 
                                   c("A","N"), 
                                   c("A","O"),
                                   c("C", "N"))
mean_comparison2TPin <- stat_compare_means(comparisons = my_comparisonsLampNew2TPin, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2TPin <- ggboxplot(longPink_T_Personalities,
                          x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 8.1)) + mean_comparison2TPin + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2TPin

