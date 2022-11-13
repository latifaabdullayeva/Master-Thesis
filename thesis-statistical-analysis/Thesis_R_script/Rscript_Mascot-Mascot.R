# install.packages("reshape2")
# install.packages("rstatix")
# install.packages("survival")
# install.packages("FSA")

# Import libarary for reading your Mascot-Lamp csv file
library(readr)

# Created the variable for our whole Mascot_Lamp table
Mascot_Mascot_Table <- read_csv("~/Desktop/LatifaAbdullayevaThesis/ThesisStatisticalAnalysis/Thesis_Experiment_csv_files/Mascot-Mascot(Responses).csv")

#-------------------------------------------------------------------------------------------------------------------------
#  -------- -------- -------- -------- -------- Creating Tables and Variables -------- -------- -------- -------- --------

# New table for grouping all EXTRAVERSION FACETS for mascot1 level-1
ExtraversionFacets_mascot1 <- matrix(c(Mascot_Mascot_Table$`V1_1) Friendly and warm`, 
                                      Mascot_Mascot_Table$`V1_2) Gregarious and sociable`,
                                      Mascot_Mascot_Table$`V1_3) Assertive and Forceful`,
                                      Mascot_Mascot_Table$`V1_4) Highly active and Energetic`,
                                      Mascot_Mascot_Table$`V1_5) Seeks for Excitement`,
                                      Mascot_Mascot_Table$`V1_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_mascot1) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_mascot2 <- matrix(c(Mascot_Mascot_Table$`V2_1) Friendly and warm`, 
                                     Mascot_Mascot_Table$`V2_2) Gregarious and sociable`,
                                     Mascot_Mascot_Table$`V2_3) Assertive and Forceful`,
                                     Mascot_Mascot_Table$`V2_4) Highly active and Energetic`,
                                     Mascot_Mascot_Table$`V2_5) Seeks for Excitement`,
                                     Mascot_Mascot_Table$`V2_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_mascot2) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_mascot3 <- matrix(c(Mascot_Mascot_Table$`V3_1) Friendly and warm`, 
                                    Mascot_Mascot_Table$`V3_2) Gregarious and sociable`,
                                    Mascot_Mascot_Table$`V3_3) Assertive and Forceful`,
                                    Mascot_Mascot_Table$`V3_4) Highly active and Energetic`,
                                    Mascot_Mascot_Table$`V3_5) Seeks for Excitement`,
                                    Mascot_Mascot_Table$`V3_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_mascot3) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_mascot4 <- matrix(c(Mascot_Mascot_Table$`V4_1) Friendly and warm`, 
                                      Mascot_Mascot_Table$`V4_2) Gregarious and sociable`,
                                      Mascot_Mascot_Table$`V4_3) Assertive and Forceful`,
                                      Mascot_Mascot_Table$`V4_4) Highly active and Energetic`,
                                      Mascot_Mascot_Table$`V4_5) Seeks for Excitement`,
                                      Mascot_Mascot_Table$`V4_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_mascot4) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_mascot5 <- matrix(c(Mascot_Mascot_Table$`V5_1) Friendly and warm`, 
                                   Mascot_Mascot_Table$`V5_2) Gregarious and sociable`,
                                   Mascot_Mascot_Table$`V5_3) Assertive and Forceful`,
                                   Mascot_Mascot_Table$`V5_4) Highly active and Energetic`,
                                   Mascot_Mascot_Table$`V5_5) Seeks for Excitement`,
                                   Mascot_Mascot_Table$`V5_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_mascot5) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

AgreeablenessFacets_mascot1 <- matrix(c(Mascot_Mascot_Table$`V1_7) Trusting and forgiving`,
                                       Mascot_Mascot_Table$`V1_8) Straightforward`,
                                       Mascot_Mascot_Table$`V1_9) Altruistic`,
                                       Mascot_Mascot_Table$`V1_10) Cooperative`,
                                       Mascot_Mascot_Table$`V1_11) Modest`,
                                       Mascot_Mascot_Table$`V1_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_mascot1) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_mascot2 <- matrix(c(Mascot_Mascot_Table$`V2_7) Trusting and forgiving`,
                                      Mascot_Mascot_Table$`V2_8) Straightforward`,
                                      Mascot_Mascot_Table$`V2_9) Altruistic`,
                                      Mascot_Mascot_Table$`V2_10) Cooperative`,
                                      Mascot_Mascot_Table$`V2_11) Modest`,
                                      Mascot_Mascot_Table$`V2_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_mascot2) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_mascot3 <- matrix(c(Mascot_Mascot_Table$`V3_7) Trusting and forgiving`,
                                     Mascot_Mascot_Table$`V3_8) Straightforward`,
                                     Mascot_Mascot_Table$`V3_9) Altruistic`,
                                     Mascot_Mascot_Table$`V3_10) Cooperative`,
                                     Mascot_Mascot_Table$`V3_11) Modest`,
                                     Mascot_Mascot_Table$`V3_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_mascot3) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_mascot4 <- matrix(c(Mascot_Mascot_Table$`V4_7) Trusting and forgiving`,
                                       Mascot_Mascot_Table$`V4_8) Straightforward`,
                                       Mascot_Mascot_Table$`V4_9) Altruistic`,
                                       Mascot_Mascot_Table$`V4_10) Cooperative`,
                                       Mascot_Mascot_Table$`V4_11) Modest`,
                                       Mascot_Mascot_Table$`V4_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_mascot4) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_mascot5 <- matrix(c(Mascot_Mascot_Table$`V5_7) Trusting and forgiving`,
                                    Mascot_Mascot_Table$`V5_8) Straightforward`,
                                    Mascot_Mascot_Table$`V5_9) Altruistic`,
                                    Mascot_Mascot_Table$`V5_10) Cooperative`,
                                    Mascot_Mascot_Table$`V5_11) Modest`,
                                    Mascot_Mascot_Table$`V5_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_mascot5) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

ConscientiousnessFacets_mascot1 <- matrix(c(Mascot_Mascot_Table$`V1_13) High sense of Self-efficacy`,
                                           Mascot_Mascot_Table$`V1_14) Orderly`,
                                           Mascot_Mascot_Table$`V1_15) Dutiful`,
                                           Mascot_Mascot_Table$`V1_16) Achievement-striving`,
                                           Mascot_Mascot_Table$`V1_17) Self-disciplined`,
                                           Mascot_Mascot_Table$`V1_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_mascot1) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_mascot2 <- matrix(c(Mascot_Mascot_Table$`V2_13) High sense of Self-efficacy`,
                                          Mascot_Mascot_Table$`V2_14) Orderly`,
                                          Mascot_Mascot_Table$`V2_15) Dutiful`,
                                          Mascot_Mascot_Table$`V2_16) Achievement-striving`,
                                          Mascot_Mascot_Table$`V2_17) Self-disciplined`,
                                          Mascot_Mascot_Table$`V2_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_mascot2) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_mascot3 <- matrix(c(Mascot_Mascot_Table$`V3_13) High sense of Self-efficacy`,
                                         Mascot_Mascot_Table$`V3_14) Orderly`,
                                         Mascot_Mascot_Table$`V3_15) Dutiful`,
                                         Mascot_Mascot_Table$`V3_16) Achievement-striving`,
                                         Mascot_Mascot_Table$`V3_17) Self-disciplined`,
                                         Mascot_Mascot_Table$`V3_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_mascot3) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_mascot4 <- matrix(c(Mascot_Mascot_Table$`V4_13) High sense of Self-efficacy`,
                                           Mascot_Mascot_Table$`V4_14) Orderly`,
                                           Mascot_Mascot_Table$`V4_15) Dutiful`,
                                           Mascot_Mascot_Table$`V4_16) Achievement-striving`,
                                           Mascot_Mascot_Table$`V4_17) Self-disciplined`,
                                           Mascot_Mascot_Table$`V4_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_mascot4) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_mascot5 <- matrix(c(Mascot_Mascot_Table$`V5_13) High sense of Self-efficacy`,
                                        Mascot_Mascot_Table$`V5_14) Orderly`,
                                        Mascot_Mascot_Table$`V5_15) Dutiful`,
                                        Mascot_Mascot_Table$`V5_16) Achievement-striving`,
                                        Mascot_Mascot_Table$`V5_17) Self-disciplined`,
                                        Mascot_Mascot_Table$`V5_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_mascot5) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

NeuroticismFacets_mascot1 <- matrix(c(Mascot_Mascot_Table$`V1_19) Anxious`,
                                     Mascot_Mascot_Table$`V1_20) Angry and hostile`,
                                     Mascot_Mascot_Table$`V1_21) High level of Depression`,
                                     Mascot_Mascot_Table$`V1_22) Self-conscious`,
                                     Mascot_Mascot_Table$`V1_23) Immoderate behavior`,
                                     Mascot_Mascot_Table$`V1_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_mascot1) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_mascot2 <- matrix(c(Mascot_Mascot_Table$`V2_19) Anxious`,
                                    Mascot_Mascot_Table$`V2_20) Angry and hostile`,
                                    Mascot_Mascot_Table$`V2_21) High level of Depression`,
                                    Mascot_Mascot_Table$`V2_22) Self-conscious`,
                                    Mascot_Mascot_Table$`V2_23) Immoderate behavior`,
                                    Mascot_Mascot_Table$`V2_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_mascot2) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_mascot3 <- matrix(c(Mascot_Mascot_Table$`V3_19) Anxious`,
                                   Mascot_Mascot_Table$`V3_20) Angry and hostile`,
                                   Mascot_Mascot_Table$`V3_21) High level of Depression`,
                                   Mascot_Mascot_Table$`V3_22) Self-conscious`,
                                   Mascot_Mascot_Table$`V3_23) Immoderate behavior`,
                                   Mascot_Mascot_Table$`V3_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_mascot3) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_mascot4 <- matrix(c(Mascot_Mascot_Table$`V4_19) Anxious`,
                                     Mascot_Mascot_Table$`V4_20) Angry and hostile`,
                                     Mascot_Mascot_Table$`V4_21) High level of Depression`,
                                     Mascot_Mascot_Table$`V4_22) Self-conscious`,
                                     Mascot_Mascot_Table$`V4_23) Immoderate behavior`,
                                     Mascot_Mascot_Table$`V4_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_mascot4) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_mascot5 <- matrix(c(Mascot_Mascot_Table$`V5_19) Anxious`,
                                  Mascot_Mascot_Table$`V5_20) Angry and hostile`,
                                  Mascot_Mascot_Table$`V5_21) High level of Depression`,
                                  Mascot_Mascot_Table$`V5_22) Self-conscious`,
                                  Mascot_Mascot_Table$`V5_23) Immoderate behavior`,
                                  Mascot_Mascot_Table$`V5_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_mascot5) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

OpennessFacets_mascot1 <- matrix(c(Mascot_Mascot_Table$`V1_25) Imaginative`,
                                  Mascot_Mascot_Table$`V1_26) Artistic interests`,
                                  Mascot_Mascot_Table$`V1_27) Emotional`,
                                  Mascot_Mascot_Table$`V1_28) Adventurous`,
                                  Mascot_Mascot_Table$`V1_29) Intellectual`,
                                  Mascot_Mascot_Table$`V1_30) Liberal`), ncol = 6)
colnames(OpennessFacets_mascot1) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_mascot2<- matrix(c(Mascot_Mascot_Table$`V2_25) Imaginative`,
                                 Mascot_Mascot_Table$`V2_26) Artistic interests`,
                                 Mascot_Mascot_Table$`V2_27) Emotional`,
                                 Mascot_Mascot_Table$`V2_28) Adventurous`,
                                 Mascot_Mascot_Table$`V2_29) Intellectual`,
                                 Mascot_Mascot_Table$`V2_30) Liberal`), ncol = 6)
colnames(OpennessFacets_mascot2) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_mascot3 <- matrix(c(Mascot_Mascot_Table$`V3_25) Imaginative`,
                                Mascot_Mascot_Table$`V3_26) Artistic interests`,
                                Mascot_Mascot_Table$`V3_27) Emotional`,
                                Mascot_Mascot_Table$`V3_28) Adventurous`,
                                Mascot_Mascot_Table$`V3_29) Intellectual`,
                                Mascot_Mascot_Table$`V3_30) Liberal`), ncol = 6)
colnames(OpennessFacets_mascot3) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_mascot4 <- matrix(c(Mascot_Mascot_Table$`V4_25) Imaginative`,
                                  Mascot_Mascot_Table$`V4_26) Artistic interests`,
                                  Mascot_Mascot_Table$`V4_27) Emotional`,
                                  Mascot_Mascot_Table$`V4_28) Adventurous`,
                                  Mascot_Mascot_Table$`V4_29) Intellectual`,
                                  Mascot_Mascot_Table$`V4_30) Liberal`), ncol = 6)
colnames(OpennessFacets_mascot4) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_mascot5 <- matrix(c(Mascot_Mascot_Table$`V5_25) Imaginative`,
                               Mascot_Mascot_Table$`V5_26) Artistic interests`,
                               Mascot_Mascot_Table$`V5_27) Emotional`,
                               Mascot_Mascot_Table$`V5_28) Adventurous`,
                               Mascot_Mascot_Table$`V5_29) Intellectual`,
                               Mascot_Mascot_Table$`V5_30) Liberal`), ncol = 6)
colnames(OpennessFacets_mascot5) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")


#------------------------------------------------------
# EXTRAVERSION between VibrationLevels: i.e each column consists of the mean of all 6 facets of E for specific VibrationLevel

# STUDY-1:
Extraversion_VibrationLevels <- matrix(c(rowMeans(ExtraversionFacets_mascot4), rowMeans(ExtraversionFacets_mascot3), rowMeans(ExtraversionFacets_mascot2), 
                                rowMeans(ExtraversionFacets_mascot5), rowMeans(ExtraversionFacets_mascot1)), ncol = 5)
colnames(Extraversion_VibrationLevels) <- c( "L-1", "L-2", "L-3", "L-4", "L-5")
Extraversion_VibrationLevels_DataFrame <- as.data.frame(Extraversion_VibrationLevels)

# A between VibrationLevels
Agreeableness_VibrationLevels <- matrix(c(rowMeans(AgreeablenessFacets_mascot4), rowMeans(AgreeablenessFacets_mascot3), rowMeans(AgreeablenessFacets_mascot2), 
                                 rowMeans(AgreeablenessFacets_mascot5), rowMeans(AgreeablenessFacets_mascot1)), ncol = 5)
colnames(Agreeableness_VibrationLevels) <-c( "L-1", "L-2", "L-3", "L-4", "L-5")
Agreeableness_VibrationLevels_DataFrame <- as.data.frame(Agreeableness_VibrationLevels)

# C between VibrationLevels
Conscientiousness_VibrationLevels <- matrix(c(rowMeans(ConscientiousnessFacets_mascot4), rowMeans(ConscientiousnessFacets_mascot3), rowMeans(ConscientiousnessFacets_mascot2), 
                                     rowMeans(ConscientiousnessFacets_mascot5), rowMeans(ConscientiousnessFacets_mascot1)), ncol = 5)
colnames(Conscientiousness_VibrationLevels) <- c( "L-1", "L-2", "L-3", "L-4", "L-5")
Conscientiousness_VibrationLevels_DataFrame <- as.data.frame(Conscientiousness_VibrationLevels)

# N between VibrationLevels
Neuroticism_VibrationLevels <- matrix(c(rowMeans(NeuroticismFacets_mascot4), rowMeans(NeuroticismFacets_mascot3), rowMeans(NeuroticismFacets_mascot2), 
                                rowMeans(NeuroticismFacets_mascot5), rowMeans(NeuroticismFacets_mascot1)), ncol = 5)
colnames(Neuroticism_VibrationLevels) <- c( "L-1", "L-2", "L-3", "L-4", "L-5")
Neuroticism_VibrationLevels_DataFrame <- as.data.frame(Neuroticism_VibrationLevels)

# O between VibrationLevels
Openness_VibrationLevels <- matrix(c(rowMeans(OpennessFacets_mascot4), rowMeans(OpennessFacets_mascot3), rowMeans(OpennessFacets_mascot2), 
                            rowMeans(OpennessFacets_mascot5), rowMeans(OpennessFacets_mascot1)), ncol = 5)
colnames(Openness_VibrationLevels) <- c("L-1", "L-2", "L-3", "L-4", "L-5")
Openness_VibrationLevels_DataFrame <- as.data.frame(Openness_VibrationLevels)

# STUDY-2:
# L-5 between personalities
Level5_Personalities <- matrix(c(rowMeans(ExtraversionFacets_mascot1), rowMeans(AgreeablenessFacets_mascot1), rowMeans(ConscientiousnessFacets_mascot1), 
                                 rowMeans(NeuroticismFacets_mascot1), rowMeans(OpennessFacets_mascot1)), ncol = 5)
colnames(Level5_Personalities) <- c("E", "A", "C", "N", "O")
Level5_Personalities_DataFrame <- as.data.frame(Level5_Personalities)

# L-3 between personalities
Level3_Personalities <- matrix(c(rowMeans(ExtraversionFacets_mascot2), rowMeans(AgreeablenessFacets_mascot2), rowMeans(ConscientiousnessFacets_mascot2), 
                                 rowMeans(NeuroticismFacets_mascot2), rowMeans(OpennessFacets_mascot2)), ncol = 5)
colnames(Level3_Personalities) <- c("E", "A", "C", "N", "O")
Level3_Personalities_DataFrame <- as.data.frame(Level3_Personalities)

# L-2 between personalities
Level2_Personalities <- matrix(c(rowMeans(ExtraversionFacets_mascot3), rowMeans(AgreeablenessFacets_mascot3), rowMeans(ConscientiousnessFacets_mascot3), 
                                 rowMeans(NeuroticismFacets_mascot3), rowMeans(OpennessFacets_mascot3)), ncol = 5)
colnames(Level2_Personalities) <- c("E", "A", "C", "N", "O")
Level2_Personalities_DataFrame <- as.data.frame(Level2_Personalities)

# L-1 between personalities
Level1_Personalities <- matrix(c(rowMeans(ExtraversionFacets_mascot4), rowMeans(AgreeablenessFacets_mascot4), rowMeans(ConscientiousnessFacets_mascot4), 
                                 rowMeans(NeuroticismFacets_mascot4), rowMeans(OpennessFacets_mascot4)), ncol = 5)
colnames(Level1_Personalities) <- c("E", "A", "C", "N", "O")
Level1_Personalities_DataFrame <- as.data.frame(Level1_Personalities)

# L-4 between personalities
Level4_Personalities <- matrix(c(rowMeans(ExtraversionFacets_mascot5), rowMeans(AgreeablenessFacets_mascot5), rowMeans(ConscientiousnessFacets_mascot5), 
                                 rowMeans(NeuroticismFacets_mascot5), rowMeans(OpennessFacets_mascot5)), ncol = 5)
colnames(Level4_Personalities) <- c("E", "A", "C", "N", "O")
Level4_Personalities_DataFrame <- as.data.frame(Level4_Personalities)

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
longExtraversionVibrationLevels <- melt(Extraversion_VibrationLevels, id.vars=c("ID"))
colnames(longExtraversionVibrationLevels) <- c("ID", "VibrationLevels", "Scales")

longAgreeablenessVibrationLevels <- melt(Agreeableness_VibrationLevels, id.vars=c("ID"))
colnames(longAgreeablenessVibrationLevels) <- c("ID", "VibrationLevels", "Scales")

longConscientiousnessVibrationLevels <- melt(Conscientiousness_VibrationLevels, id.vars=c("ID"))
colnames(longConscientiousnessVibrationLevels) <- c("ID", "VibrationLevels", "Scales")

longNeuroticismVibrationLevels <- melt(Neuroticism_VibrationLevels, id.vars=c("ID"))
colnames(longNeuroticismVibrationLevels) <- c("ID", "VibrationLevels", "Scales")

longOpennessVibrationLevels <- melt(Openness_VibrationLevels, id.vars=c("ID"))
colnames(longOpennessVibrationLevels) <- c("ID", "VibrationLevels", "Scales")

# STUDY-2:
longLevel5_Personalities <- melt(Level5_Personalities, id.vars=c("ID"))
colnames(longLevel5_Personalities) <- c("ID", "Personalities", "Scales")

longLevel3_Personalities <- melt(Level3_Personalities, id.vars=c("ID"))
colnames(longLevel3_Personalities) <- c("ID", "Personalities", "Scales")

longLevel2_Personalities <- melt(Level2_Personalities, id.vars=c("ID"))
colnames(longLevel2_Personalities) <- c("ID", "Personalities", "Scales")

longLevel1_Personalities <- melt(Level1_Personalities, id.vars=c("ID"))
colnames(longLevel1_Personalities) <- c("ID", "Personalities", "Scales")

longLevel4_Personalities <- melt(Level4_Personalities, id.vars=c("ID"))
colnames(longLevel4_Personalities) <- c("ID", "Personalities", "Scales")


## Display summary of longExtraversionVibrationLevels matrix
library(FSA)
# STUDY-1:
Summarize(Scales ~ VibrationLevels, data=longExtraversionVibrationLevels)
Summarize(Scales ~ VibrationLevels, data=longAgreeablenessVibrationLevels)
Summarize(Scales ~ VibrationLevels, data=longConscientiousnessVibrationLevels)
Summarize(Scales ~ VibrationLevels, data=longNeuroticismVibrationLevels)
Summarize(Scales ~ VibrationLevels, data=longOpennessVibrationLevels)

# STUDY-2:
Summarize(Scales ~ Personalities, data=longLevel5_Personalities)
Summarize(Scales ~ Personalities, data=longLevel3_Personalities)
Summarize(Scales ~ Personalities, data=longLevel2_Personalities)
Summarize(Scales ~ Personalities, data=longLevel1_Personalities)
Summarize(Scales ~ Personalities, data=longLevel4_Personalities)

# Friedman -> Wilcoxon + wilcox value for each group -> Bonferroni
library("rstatix")
library(survival)
library(coin)

# STUDY-1:
friedman.test(Extraversion_VibrationLevels)
longExtraversionVibrationLevels  %>% wilcox_effsize(Scales ~ VibrationLevels, paired = TRUE)
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-1 ~ Extraversion_VibrationLevels_DataFrame$L-2, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-1 ~ Extraversion_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-1 ~ Extraversion_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-1 ~ Extraversion_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-2 ~ Extraversion_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-2 ~ Extraversion_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-2 ~ Extraversion_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-3 ~ Extraversion_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-3 ~ Extraversion_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_VibrationLevels_DataFrame$L-4 ~ Extraversion_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcox_E_p_values <- c(0.3715, 0.09715, 8.438e-05, 0.0003494, 0.1589, 0.0002269, 0.0006033, 0.0003926, 0.003536, 0.08627)
p.adjust(wilcox_E_p_values, method = "bonf")

friedman.test(Agreeableness_VibrationLevels)
longAgreeablenessVibrationLevels %>% wilcox_effsize(Scales ~ VibrationLevels, paired = TRUE)
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-1 ~ Agreeableness_VibrationLevels_DataFrame$L-2, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-1 ~ Agreeableness_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-1 ~ Agreeableness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-1 ~ Agreeableness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-2 ~ Agreeableness_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-2 ~ Agreeableness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-2 ~ Agreeableness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-3 ~ Agreeableness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-3 ~ Agreeableness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_VibrationLevels_DataFrame$L-4 ~ Agreeableness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcox_A_p_values <- c(0.0003756, 0.0002795, 0.7821, 0.7836, 0.3765, 0.002461, 0.002349, 0.002052, 0.004405, 0.3656)
p.adjust(wilcox_A_p_values, method = "bonf")

friedman.test(Conscientiousness_VibrationLevels)
longConscientiousnessVibrationLevels %>% wilcox_effsize(Scales ~ VibrationLevels, paired = TRUE)
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-1 ~ Conscientiousness_VibrationLevels_DataFrame$L-2, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-1 ~ Conscientiousness_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-1 ~ Conscientiousness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-1 ~ Conscientiousness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-2 ~ Conscientiousness_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-2 ~ Conscientiousness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-2 ~ Conscientiousness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-3 ~ Conscientiousness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-3 ~ Conscientiousness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_VibrationLevels_DataFrame$L-4 ~ Conscientiousness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcox_C_p_values <- c(0.9168,  9.64e-05, 4.785e-05, 0.162, 0.0009604, 0.0001351, 0.5366, 0.2345, 0.0007727, 0.0001181)
p.adjust(wilcox_C_p_values, method = "bonf")

friedman.test(Neuroticism_VibrationLevels)
longNeuroticismVibrationLevels %>% wilcox_effsize(Scales ~ VibrationLevels, paired = TRUE)
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-1 ~ Neuroticism_VibrationLevels_DataFrame$L-2, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-1 ~ Neuroticism_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-1 ~ Neuroticism_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-1 ~ Neuroticism_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-2 ~ Neuroticism_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-2 ~ Neuroticism_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-2 ~ Neuroticism_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-3 ~ Neuroticism_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-3 ~ Neuroticism_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_VibrationLevels_DataFrame$L-4 ~ Neuroticism_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcox_N_p_values <- c(0.000881, 0.000135, 0.0001131, 0.0005158, 0.1438, 0.06765, 0.4657, 0.8198, 0.5478,  0.363)
p.adjust(wilcox_N_p_values, method = "bonf")

friedman.test(Openness_VibrationLevels)
longOpennessVibrationLevels %>% wilcox_effsize(Scales ~ VibrationLevels, paired = TRUE)
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-1 ~ Openness_VibrationLevels_DataFrame$L-2, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-1 ~ Openness_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-1 ~ Openness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-1 ~ Openness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-2 ~ Openness_VibrationLevels_DataFrame$L-3, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-2 ~ Openness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-2 ~ Openness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-3 ~ Openness_VibrationLevels_DataFrame$L-4, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-3 ~ Openness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_VibrationLevels_DataFrame$L-4 ~ Openness_VibrationLevels_DataFrame$L-5, zero.method = "Wilcoxon")
wilcox_O_p_values <- c(0.004738, 0.01055, 0.4196, 0.09474, 0.07503, 0.1001,  0.06026, 0.03816, 0.02613, 0.8401)
p.adjust(wilcox_O_p_values, method = "bonf")

# STUDY-2:
friedman.test(Level5_Personalities)
longLevel5_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Level5_Personalities_DataFrame$E ~ Level5_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$E ~ Level5_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$E ~ Level5_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$E ~ Level5_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$A ~ Level5_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$A ~ Level5_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$A ~ Level5_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$C ~ Level5_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$C ~ Level5_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level5_Personalities_DataFrame$N ~ Level5_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Level5_p_values <- c(0.00334, 0.001626, 0.0002062, 0.0006274, 0.2064, 0.1855, 0.6754, 0.0124, 0.1407, 0.1073)
p.adjust(wilcox_Level5_p_values, method = "bonf")

friedman.test(Level3_Personalities)
longLevel3_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Level3_Personalities_DataFrame$E ~ Level3_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$E ~ Level3_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$E ~ Level3_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$E ~ Level3_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$A ~ Level3_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$A ~ Level3_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$A ~ Level3_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$C ~ Level3_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$C ~ Level3_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level3_Personalities_DataFrame$N ~ Level3_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Level3_p_values <- c(0.003392, 0.0006917, 0.08601, 0.0572, 0.4214, 0.0001063, 0.0009564, 5.369e-05, 0.0002913, 0.001439)
p.adjust(wilcox_Level3_p_values, method = "bonf")

friedman.test(Level2_Personalities)
longLevel2_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Level2_Personalities_DataFrame$E ~ Level2_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$E ~ Level2_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$E ~ Level2_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$E ~ Level2_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$A ~ Level2_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$A ~ Level2_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$A ~ Level2_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$C ~ Level2_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$C ~ Level2_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level2_Personalities_DataFrame$N ~ Level2_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Level2_p_values <- c(0.0001708, 0.02061, 0.6139, 0.0176, 0.001622, 0.0009588, 0.001631, 0.1061, 0.5255, 0.03021)
p.adjust(wilcox_Level2_p_values, method = "bonf")

friedman.test(Level1_Personalities)
longLevel1_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Level1_Personalities_DataFrame$E ~ Level1_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$E ~ Level1_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$E ~ Level1_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$E ~ Level1_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$A ~ Level1_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$A ~ Level1_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$A ~ Level1_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$C ~ Level1_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$C ~ Level1_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level1_Personalities_DataFrame$N ~ Level1_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Level1_p_values <- c( 0.002842, 0.01396, 0.0006902, 0.02832, 0.5445, 0.002105, 0.2863, 0.001951, 0.06916, 0.002257)
p.adjust(wilcox_Level1_p_values, method = "bonf")

friedman.test(Level4_Personalities)
longLevel4_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Level4_Personalities_DataFrame$E ~ Level4_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$E ~ Level4_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$E ~ Level4_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$E ~ Level4_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$A ~ Level4_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$A ~ Level4_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$A ~ Level4_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$C ~ Level4_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$C ~ Level4_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Level4_Personalities_DataFrame$N ~ Level4_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Level4_p_values <- c(0.0003303, 0.005796, 3.181e-05, 0.0001427, 0.0001602, 0.005545, 0.5998, 3.604e-05, 0.0002021, 0.01681)
p.adjust(wilcox_Level4_p_values, method = "bonf")

########### Visual representation of Study-1 and Study-2 with boxplots with Wilcoxon Signed Rank tests, therefore we pass (paired=True) argument
stars <- list(cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), symbols = c("**", "**", "*", "*", "ns"))
###################
my_comparisonsLampNew1E <- list( c("L-1", "L-4"), 
                                 c("L-1","L-5"), 
                                 c("L-2","L-4"),
                                 c("L-2", "L-5"), 
                                 c("L-3", "L-5"))
mean_comparison1E <- stat_compare_means(comparisons = my_comparisonsLampNew1E, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1E <- ggboxplot(longExtraversionVibrationLevels,
                        x = "VibrationLevels", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.5)) + mean_comparison1E + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1E
###################
my_comparisonsLampNew1A <- list( c("L-1", "L-2"), 
                                 c("L-1","L-3"), 
                                 c("L-2","L-4"),
                                 c("L-2", "L-5"), 
                                 c("L-3", "L-4"),
                                 c("L-3", "L-5"))
mean_comparison1A <- stat_compare_means(comparisons = my_comparisonsLampNew1A, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1A <- ggboxplot(longAgreeablenessVibrationLevels,
                        x = "VibrationLevels", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.5)) + mean_comparison1A + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1A
###################
my_comparisonsLampNew1C <- list( c("L-1", "L-3"), 
                                 c("L-1","L-4"), 
                                 c("L-2","L-3"),
                                 c("L-2", "L-4"), 
                                 c("L-3", "L-5"),
                                 c("L-4", "L-5"))
mean_comparison1C <- stat_compare_means(comparisons = my_comparisonsLampNew1C, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1C <- ggboxplot(longConscientiousnessVibrationLevels,
                        x = "VibrationLevels", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7)) + mean_comparison1C + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1C
###################
my_comparisonsLampNew1N <- list( c("L-1", "L-2"), 
                                 c("L-1","L-3"), 
                                 c("L-1","L-4"),
                                 c("L-1", "L-5"))
mean_comparison1N <- stat_compare_means(comparisons = my_comparisonsLampNew1N, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1N <- ggboxplot(longNeuroticismVibrationLevels,
                        x = "VibrationLevels", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7)) + mean_comparison1N + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1N
###################
my_comparisonsLampNew1O <- list( c("L-1", "L-2"))
mean_comparison1O <- stat_compare_means(comparisons = my_comparisonsLampNew1O, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1O <- ggboxplot(longOpennessVibrationLevels,
                        x = "VibrationLevels", y = "Scales", fill = "Colors", xlab = FALSE, ylab = FALSE, width = 0.4,
                        palette = c("#FFFF00", "#FFA500", "#40e0d0", "#8a0303", "#FFC0CB")) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7)) + mean_comparison1O + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1O
###############################################################################################
my_comparisonsLampNew2L1 <- list( c("E", "A"), 
                                  c("E","N"), 
                                  c("A","N"),
                                  c("C", "N"), 
                                  c("N", "O"))
mean_comparison2L1 <- stat_compare_means(comparisons = my_comparisonsLampNew2L1, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2L1 <- ggboxplot(longLevel1_Personalities,
                         x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.9)) + mean_comparison2L1 + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2L1
###################
my_comparisonsLampNew2L2 <- list( c("E", "A"), 
                                  c("A","C"), 
                                  c("A","N"),
                                  c("A", "O"))
mean_comparison2L2 <- stat_compare_means(comparisons = my_comparisonsLampNew2L2, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2L2 <- ggboxplot(longLevel2_Personalities,
                         x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.9)) + mean_comparison2L2 + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2L2
###################
my_comparisonsLampNew2L3 <- list( c("E", "A"), 
                                  c("E","C"), 
                                  c("A","N"),
                                  c("A", "O"), 
                                  c("C", "N"),
                                  c("C", "O"), 
                                  c("N", "O"))
mean_comparison2L3 <- stat_compare_means(comparisons = my_comparisonsLampNew2L3, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2L3 <- ggboxplot(longLevel3_Personalities,
                         x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.9)) + mean_comparison2L3 + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2L3
###################
my_comparisonsLampNew2L4 <- list( c("E", "A"), 
                                  c("E","N"), 
                                  c("E","O"),
                                  c("A", "C"), 
                                  c("C", "N"),
                                  c("C", "O"))
mean_comparison2L4 <- stat_compare_means(comparisons = my_comparisonsLampNew2L4, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2L4 <- ggboxplot(longLevel4_Personalities,
                         x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.9)) + mean_comparison2L4 + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2L4
###################
my_comparisonsLampNew2L5 <- list( c("E", "A"), 
                                  c("E","C"), 
                                  c("E","N"),
                                  c("E", "O"))
mean_comparison2L5 <- stat_compare_means(comparisons = my_comparisonsLampNew2L5, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot2L5 <- ggboxplot(longLevel5_Personalities,
                         x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5),  limits=c(1, 7.9)) + mean_comparison2L5 + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2L5

