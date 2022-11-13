# install.packages("reshape2")
# install.packages("rstatix")
# install.packages("survival")
# install.packages("FSA")

# Import libarary for reading your Mascot-Lamp csv file
library(readr)

# Created the variable for our whole Mascot_Lamp table
Mascot_Speakers_Table <- read_csv("~/Desktop/LatifaAbdullayevaThesis/ThesisStatisticalAnalysis/Thesis_Experiment_csv_files/Mascot-Speakers(Responses).csv")

#-------------------------------------------------------------------------------------------------------------------------
#  -------- -------- -------- -------- -------- Creating Tables and Variables -------- -------- -------- -------- --------

# New table for grouping all EXTRAVERSION FACETS for mascot1 level-1
ExtraversionFacets_song1 <- matrix(c(Mascot_Speakers_Table$`V1_1) Friendly and warm`, 
                                       Mascot_Speakers_Table$`V1_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V1_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V1_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V1_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V1_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song1) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_song2 <- matrix(c(Mascot_Speakers_Table$`V2_1) Friendly and warm`, 
                                       Mascot_Speakers_Table$`V2_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V2_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V2_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V2_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V2_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song2) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_song3 <- matrix(c(Mascot_Speakers_Table$`V3_1) Friendly and warm`, 
                                       Mascot_Speakers_Table$`V3_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V3_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V3_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V3_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V3_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song3) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_song4 <- matrix(c(Mascot_Speakers_Table$`V4_1) Friendly and warm`, 
                                       Mascot_Speakers_Table$`V4_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V4_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V4_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V4_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V4_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song4) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_song5 <- matrix(c(Mascot_Speakers_Table$`V5_1) Friendly and warm`, 
                                       Mascot_Speakers_Table$`V5_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V5_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V5_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V5_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V5_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song5) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_song6 <- matrix(c(Mascot_Speakers_Table$`V6_1) Friendly and war`, 
                                       Mascot_Speakers_Table$`V6_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V6_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V6_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V6_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V6_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song6) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_song7 <- matrix(c(Mascot_Speakers_Table$`V7_1) Friendly and warm`, 
                                       Mascot_Speakers_Table$`V7_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V7_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V7_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V7_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V7_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song7) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_song8 <- matrix(c(Mascot_Speakers_Table$`V8_1) Friendly and warm`, 
                                       Mascot_Speakers_Table$`V8_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V8_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V8_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V8_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V8_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song8) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

ExtraversionFacets_song9 <- matrix(c(Mascot_Speakers_Table$`V9_1) Friendly and warm`, 
                                       Mascot_Speakers_Table$`V9_2) Gregarious and sociable`,
                                       Mascot_Speakers_Table$`V9_3) Assertive and Forceful`,
                                       Mascot_Speakers_Table$`V9_4) Highly active and Energetic`,
                                       Mascot_Speakers_Table$`V9_5) Seeks for Excitement`,
                                       Mascot_Speakers_Table$`V9_6) Cheerful and Positive`), ncol = 6)
colnames(ExtraversionFacets_song9) <- c("Friendliness", "Gregariousness", "Assertiveness", "Activity-Level", "Excitement-Seeking", "Cheerfulness")

AgreeablenessFacets_song1 <- matrix(c(Mascot_Speakers_Table$`V1_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V1_8) Straightforward`,
                                        Mascot_Speakers_Table$`V1_9) Altruistic`,
                                        Mascot_Speakers_Table$`V1_10) Cooperative`,
                                        Mascot_Speakers_Table$`V1_11) Modest`,
                                        Mascot_Speakers_Table$`V1_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song1) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_song2 <- matrix(c(Mascot_Speakers_Table$`V2_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V2_8) Straightforward`,
                                        Mascot_Speakers_Table$`V2_9) Altruistic`,
                                        Mascot_Speakers_Table$`V2_10) Cooperative`,
                                        Mascot_Speakers_Table$`V2_11) Modest`,
                                        Mascot_Speakers_Table$`V2_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song2) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_song3 <- matrix(c(Mascot_Speakers_Table$`V3_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V3_8) Straightforward`,
                                        Mascot_Speakers_Table$`V3_9) Altruistic`,
                                        Mascot_Speakers_Table$`V3_10) Cooperative`,
                                        Mascot_Speakers_Table$`V3_11) Modest`,
                                        Mascot_Speakers_Table$`V3_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song3) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_song4 <- matrix(c(Mascot_Speakers_Table$`V4_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V4_8) Straightforward`,
                                        Mascot_Speakers_Table$`V4_9) Altruistic`,
                                        Mascot_Speakers_Table$`V4_10) Cooperative`,
                                        Mascot_Speakers_Table$`V4_11) Modest`,
                                        Mascot_Speakers_Table$`V4_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song4) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_song5 <- matrix(c(Mascot_Speakers_Table$`V5_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V5_8) Straightforward`,
                                        Mascot_Speakers_Table$`V5_9) Altruistic`,
                                        Mascot_Speakers_Table$`V5_10) Cooperative`,
                                        Mascot_Speakers_Table$`V5_11) Modest`,
                                        Mascot_Speakers_Table$`V5_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song5) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_song6 <- matrix(c(Mascot_Speakers_Table$`V6_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V6_8) Straightforward`,
                                        Mascot_Speakers_Table$`V6_9) Altruistic`,
                                        Mascot_Speakers_Table$`V6_10) Cooperative`,
                                        Mascot_Speakers_Table$`V6_11) Modest`,
                                        Mascot_Speakers_Table$`V6_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song6) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_song7 <- matrix(c(Mascot_Speakers_Table$`V7_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V7_8) Straightforward`,
                                        Mascot_Speakers_Table$`V7_9) Altruistic`,
                                        Mascot_Speakers_Table$`V7_10) Cooperative`,
                                        Mascot_Speakers_Table$`V7_11) Modest`,
                                        Mascot_Speakers_Table$`V7_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song7) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_song8 <- matrix(c(Mascot_Speakers_Table$`V8_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V8_8) Straightforward`,
                                        Mascot_Speakers_Table$`V8_9) Altruistic`,
                                        Mascot_Speakers_Table$`V8_10) Cooperative`,
                                        Mascot_Speakers_Table$`V8_11) Modest`,
                                        Mascot_Speakers_Table$`V8_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song8) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

AgreeablenessFacets_song9 <- matrix(c(Mascot_Speakers_Table$`V9_7) Trusting and forgiving`,
                                        Mascot_Speakers_Table$`V9_8) Straightforward`,
                                        Mascot_Speakers_Table$`V9_9) Altruistic`,
                                        Mascot_Speakers_Table$`V9_10) Cooperative`,
                                        Mascot_Speakers_Table$`V9_11) Modest`,
                                        Mascot_Speakers_Table$`V9_12) Sympathetic`), ncol=6)
colnames(AgreeablenessFacets_song9) <- c("Trust", "Morality", "Altruism", "Cooperation", "Modesty", "Sympathy")

ConscientiousnessFacets_song1 <- matrix(c(Mascot_Speakers_Table$`V1_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V1_14) Orderly`,
                                            Mascot_Speakers_Table$`V1_15) Dutiful`,
                                            Mascot_Speakers_Table$`V1_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V1_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V1_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song1) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_song2 <- matrix(c(Mascot_Speakers_Table$`V2_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V2_14) Orderly`,
                                            Mascot_Speakers_Table$`V2_15) Dutiful`,
                                            Mascot_Speakers_Table$`V2_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V2_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V2_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song2) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_song3 <- matrix(c(Mascot_Speakers_Table$`V3_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V3_14) Orderly`,
                                            Mascot_Speakers_Table$`V3_15) Dutiful`,
                                            Mascot_Speakers_Table$`V3_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V3_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V3_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song3) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_song4 <- matrix(c(Mascot_Speakers_Table$`V4_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V4_14) Orderly`,
                                            Mascot_Speakers_Table$`V4_15) Dutiful`,
                                            Mascot_Speakers_Table$`V4_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V4_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V4_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song4) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_song5 <- matrix(c(Mascot_Speakers_Table$`V5_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V5_14) Orderly`,
                                            Mascot_Speakers_Table$`V5_15) Dutiful`,
                                            Mascot_Speakers_Table$`V5_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V5_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V5_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song5) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_song6 <- matrix(c(Mascot_Speakers_Table$`V6_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V6_14) Orderly`,
                                            Mascot_Speakers_Table$`V6_15) Dutiful`,
                                            Mascot_Speakers_Table$`V6_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V6_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V6_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song6) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_song7 <- matrix(c(Mascot_Speakers_Table$`V7_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V7_14) Orderly`,
                                            Mascot_Speakers_Table$`V7_15) Dutiful`,
                                            Mascot_Speakers_Table$`V7_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V7_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V7_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song7) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_song8 <- matrix(c(Mascot_Speakers_Table$`V8_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V8_14) Orderly`,
                                            Mascot_Speakers_Table$`V8_15) Dutiful`,
                                            Mascot_Speakers_Table$`V8_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V8_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V8_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song8) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

ConscientiousnessFacets_song9 <- matrix(c(Mascot_Speakers_Table$`V9_13) High sense of Self-efficacy`,
                                            Mascot_Speakers_Table$`V9_14) Orderly`,
                                            Mascot_Speakers_Table$`V9_15) Dutiful`,
                                            Mascot_Speakers_Table$`V9_16) Achievement-striving`,
                                            Mascot_Speakers_Table$`V9_17) Self-disciplined`,
                                            Mascot_Speakers_Table$`V9_18) Deliberating and Continuous`), ncol = 6)
colnames(ConscientiousnessFacets_song9) <- c("Self-Efficacy", "Orderliness", "Dutifulness", "Achievement-Striving", "Self-Discipline", "Cautiousness")

NeuroticismFacets_song1 <- matrix(c(Mascot_Speakers_Table$`V1_19) Anxious`,
                                      Mascot_Speakers_Table$`V1_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V1_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V1_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V1_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V1_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song1) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_song2 <- matrix(c(Mascot_Speakers_Table$`V2_19) Anxious`,
                                      Mascot_Speakers_Table$`V2_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V2_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V2_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V2_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V2_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song2) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_song3 <- matrix(c(Mascot_Speakers_Table$`V3_19) Anxious`,
                                      Mascot_Speakers_Table$`V3_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V3_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V3_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V3_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V3_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song3) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_song4 <- matrix(c(Mascot_Speakers_Table$`V4_19) Anxious`,
                                      Mascot_Speakers_Table$`V4_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V4_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V4_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V4_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V4_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song4) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_song5 <- matrix(c(Mascot_Speakers_Table$`V5_19) Anxious`,
                                      Mascot_Speakers_Table$`V5_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V5_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V5_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V5_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V5_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song5) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_song6 <- matrix(c(Mascot_Speakers_Table$`V6_19) Anxious`,
                                      Mascot_Speakers_Table$`V6_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V6_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V6_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V6_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V6_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song6) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_song7 <- matrix(c(Mascot_Speakers_Table$`V7_19) Anxious`,
                                      Mascot_Speakers_Table$`V7_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V7_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V7_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V7_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V7_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song7) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_song8 <- matrix(c(Mascot_Speakers_Table$`V8_19) Anxious`,
                                      Mascot_Speakers_Table$`V8_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V8_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V8_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V8_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V8_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song8) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

NeuroticismFacets_song9 <- matrix(c(Mascot_Speakers_Table$`V9_19) Anxious`,
                                      Mascot_Speakers_Table$`V9_20) Angry and hostile`,
                                      Mascot_Speakers_Table$`V9_21) High level of Depression`,
                                      Mascot_Speakers_Table$`V9_22) Self-conscious`,
                                      Mascot_Speakers_Table$`V9_23) Immoderate behavior`,
                                      Mascot_Speakers_Table$`V9_24) Vulnerable`), ncol = 6)
colnames(NeuroticismFacets_song9) <- c("Anxiety", "Anger", "Depression", "Self-Consciousness", "Immoderation", "Vulnerability")

OpennessFacets_song1 <- matrix(c(Mascot_Speakers_Table$`V1_25) Imaginative`,
                                   Mascot_Speakers_Table$`V1_26) Artistic interests`,
                                   Mascot_Speakers_Table$`V1_27) Emotional`,
                                   Mascot_Speakers_Table$`V1_28) Adventurous`,
                                   Mascot_Speakers_Table$`V1_29) Intellectual`,
                                   Mascot_Speakers_Table$`V1_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song1) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_song2<- matrix(c(Mascot_Speakers_Table$`V2_25) Imaginative`,
                                  Mascot_Speakers_Table$`V2_26) Artistic interests`,
                                  Mascot_Speakers_Table$`V2_27) Emotional`,
                                  Mascot_Speakers_Table$`V2_28) Adventurous`,
                                  Mascot_Speakers_Table$`V2_29) Intellectual`,
                                  Mascot_Speakers_Table$`V2_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song2) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_song3 <- matrix(c(Mascot_Speakers_Table$`V3_25) Imaginative`,
                                   Mascot_Speakers_Table$`V3_26) Artistic interests`,
                                   Mascot_Speakers_Table$`V3_27) Emotional`,
                                   Mascot_Speakers_Table$`V3_28) Adventurous`,
                                   Mascot_Speakers_Table$`V3_29) Intellectual`,
                                   Mascot_Speakers_Table$`V3_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song3) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_song4 <- matrix(c(Mascot_Speakers_Table$`V4_25) Imaginative`,
                                   Mascot_Speakers_Table$`V4_26) Artistic interests`,
                                   Mascot_Speakers_Table$`V4_27) Emotional`,
                                   Mascot_Speakers_Table$`V4_28) Adventurous`,
                                   Mascot_Speakers_Table$`V4_29) Intellectual`,
                                   Mascot_Speakers_Table$`V4_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song4) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_song5 <- matrix(c(Mascot_Speakers_Table$`V5_25) Imaginative`,
                                   Mascot_Speakers_Table$`V5_26) Artistic interests`,
                                   Mascot_Speakers_Table$`V5_27) Emotional`,
                                   Mascot_Speakers_Table$`V5_28) Adventurous`,
                                   Mascot_Speakers_Table$`V5_29) Intellectual`,
                                   Mascot_Speakers_Table$`V5_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song5) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_song6<- matrix(c(Mascot_Speakers_Table$`V6_25) Imaginative`,
                                  Mascot_Speakers_Table$`V6_26) Artistic interests`,
                                  Mascot_Speakers_Table$`V6_27) Emotional`,
                                  Mascot_Speakers_Table$`V6_28) Adventurous`,
                                  Mascot_Speakers_Table$`V6_29) Intellectual`,
                                  Mascot_Speakers_Table$`V6_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song6) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_song7 <- matrix(c(Mascot_Speakers_Table$`V7_25) Imaginative`,
                                   Mascot_Speakers_Table$`V7_26) Artistic interests`,
                                   Mascot_Speakers_Table$`V7_27) Emotional`,
                                   Mascot_Speakers_Table$`V7_28) Adventurous`,
                                   Mascot_Speakers_Table$`V7_29) Intellectual`,
                                   Mascot_Speakers_Table$`V7_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song7) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_song8 <- matrix(c(Mascot_Speakers_Table$`V8_25) Imaginative`,
                                   Mascot_Speakers_Table$`V8_26) Artistic interests`,
                                   Mascot_Speakers_Table$`V8_27) Emotional`,
                                   Mascot_Speakers_Table$`V8_28) Adventurous`,
                                   Mascot_Speakers_Table$`V8_29) Intellectual`,
                                   Mascot_Speakers_Table$`V8_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song8) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

OpennessFacets_song9 <- matrix(c(Mascot_Speakers_Table$`V9_25) Imaginative`,
                                   Mascot_Speakers_Table$`V9_26) Artistic interests`,
                                   Mascot_Speakers_Table$`V9_27) Emotional`,
                                   Mascot_Speakers_Table$`V9_28) Adventurous`,
                                   Mascot_Speakers_Table$`V9_29) Intellectual`,
                                   Mascot_Speakers_Table$`V9_30) Liberal`), ncol = 6)
colnames(OpennessFacets_song9) <- c("Imagination", "Artistic-Interests", "Emotionality", "Adventurousness", "Intellect", "Liberalism")

#------------------------------------------------------
# Groupping of songs by MUSIC pattern
# S (song1; song2; song7); C (song4; song5; song9); U (song3; song6; song8)

Extraversion_Sophisticated <- matrix(c(rowMeans(ExtraversionFacets_song1), rowMeans(ExtraversionFacets_song2), rowMeans(ExtraversionFacets_song7)), ncol = 3)
colnames(Extraversion_Sophisticated) <- c("Jazz", "Classic", "Pop/ContemporaryAdult")

Extraversion_Contemporary <- matrix(c(rowMeans(ExtraversionFacets_song4), rowMeans(ExtraversionFacets_song5), rowMeans(ExtraversionFacets_song9)), ncol = 3)
colnames(Extraversion_Contemporary) <- c("Rap", "Soul", "HipHop")

Extraversion_Unpretentious <- matrix(c(rowMeans(ExtraversionFacets_song3), rowMeans(ExtraversionFacets_song6), rowMeans(ExtraversionFacets_song8)), ncol = 3)
colnames(Extraversion_Unpretentious) <- c("Pop", "RockNRoll/Country", "BlueGrass")
#
Agreeableness_Sophisticated <- matrix(c(rowMeans(AgreeablenessFacets_song1), rowMeans(AgreeablenessFacets_song2), rowMeans(AgreeablenessFacets_song7)), ncol = 3)
colnames(Agreeableness_Sophisticated) <- c("Jazz", "Classic", "Pop/ContemporaryAdult")

Agreeableness_Contemporary <- matrix(c(rowMeans(AgreeablenessFacets_song4), rowMeans(AgreeablenessFacets_song5), rowMeans(AgreeablenessFacets_song9)), ncol = 3)
colnames(Agreeableness_Contemporary) <- c("Rap", "Soul", "HipHop")

Agreeableness_Unpretentious <- matrix(c(rowMeans(AgreeablenessFacets_song3), rowMeans(AgreeablenessFacets_song6), rowMeans(AgreeablenessFacets_song8)), ncol = 3)
colnames(Agreeableness_Unpretentious) <- c("Pop", "RockNRoll/Country", "BlueGrass")
#
Conscientiousness_Sophisticated <- matrix(c(rowMeans(ConscientiousnessFacets_song1), rowMeans(ConscientiousnessFacets_song2), rowMeans(ConscientiousnessFacets_song7)), ncol = 3)
colnames(Conscientiousness_Sophisticated) <- c("Jazz", "Classic", "Pop/ContemporaryAdult")

Conscientiousness_Contemporary <- matrix(c(rowMeans(ConscientiousnessFacets_song4), rowMeans(ConscientiousnessFacets_song5), rowMeans(ConscientiousnessFacets_song9)), ncol = 3)
colnames(Conscientiousness_Contemporary) <- c("Rap", "Soul", "HipHop")

Conscientiousness_Unpretentious <- matrix(c(rowMeans(ConscientiousnessFacets_song3), rowMeans(ConscientiousnessFacets_song6), rowMeans(ConscientiousnessFacets_song8)), ncol = 3)
colnames(Conscientiousness_Unpretentious) <- c("Pop", "RockNRoll/Country", "BlueGrass")
#
Neuroticism_Sophisticated <- matrix(c(rowMeans(NeuroticismFacets_song1), rowMeans(NeuroticismFacets_song2), rowMeans(NeuroticismFacets_song7)), ncol = 3)
colnames(Neuroticism_Sophisticated) <- c("Jazz", "Classic", "Pop/ContemporaryAdult")

Neuroticism_Contemporary <- matrix(c(rowMeans(NeuroticismFacets_song4), rowMeans(NeuroticismFacets_song5), rowMeans(NeuroticismFacets_song9)), ncol = 3)
colnames(Neuroticism_Contemporary) <- c("Rap", "Soul", "HipHop")

Neuroticism_Unpretentious <- matrix(c(rowMeans(NeuroticismFacets_song3), rowMeans(NeuroticismFacets_song6), rowMeans(NeuroticismFacets_song8)), ncol = 3)
colnames(Neuroticism_Unpretentious) <- c("Pop", "RockNRoll/Country", "BlueGrass")
#
Openness_Sophisticated <- matrix(c(rowMeans(OpennessFacets_song1), rowMeans(OpennessFacets_song2), rowMeans(OpennessFacets_song7)), ncol = 3)
colnames(Openness_Sophisticated) <- c("Jazz", "Classic", "Pop/ContemporaryAdult")

Openness_Contemporary <- matrix(c(rowMeans(OpennessFacets_song4), rowMeans(OpennessFacets_song5), rowMeans(OpennessFacets_song9)), ncol = 3)
colnames(Openness_Contemporary) <- c("Rap", "Soul", "HipHop")

Openness_Unpretentious <- matrix(c(rowMeans(OpennessFacets_song3), rowMeans(OpennessFacets_song6), rowMeans(OpennessFacets_song8)), ncol = 3)
colnames(Openness_Unpretentious) <- c("Pop", "RockNRoll/Country", "BlueGrass")

#------------------------------------------------------
# EXTRAVERSION between VibrationLevels: i.e each column consists of the mean of all 6 facets of E for specific VibrationLevel

# STUDY-1:
Extraversion_Songs <- matrix(c(rowMeans(Extraversion_Sophisticated), rowMeans(Extraversion_Contemporary), rowMeans(Extraversion_Unpretentious)), ncol = 3)
colnames(Extraversion_Songs) <- c("S", "C", "U")
Extraversion_Songs_DataFrame <- as.data.frame(Extraversion_Songs)

# A between VibrationLevels
Agreeableness_Songs <- matrix(c(rowMeans(Agreeableness_Sophisticated), rowMeans(Agreeableness_Contemporary), rowMeans(Agreeableness_Unpretentious)), ncol = 3)
colnames(Agreeableness_Songs) <- c("S", "C", "U")
Agreeableness_Songs_DataFrame <- as.data.frame(Agreeableness_Songs)

# C between VibrationLevels
Conscientiousness_Songs <- matrix(c(rowMeans(Conscientiousness_Sophisticated), rowMeans(Conscientiousness_Contemporary), rowMeans(Conscientiousness_Unpretentious)), ncol = 3)
colnames(Conscientiousness_Songs) <- c("S", "C", "U")
Conscientiousness_Songs_DataFrame <- as.data.frame(Conscientiousness_Songs)

# N between VibrationLevels
Neuroticism_Songs <- matrix(c(rowMeans(Neuroticism_Sophisticated), rowMeans(Neuroticism_Contemporary), rowMeans(Neuroticism_Unpretentious)), ncol = 3)
colnames(Neuroticism_Songs) <- c("S", "C", "U")
Neuroticism_Songs_DataFrame <- as.data.frame(Neuroticism_Songs)

# O between VibrationLevels
Openness_Songs <- matrix(c(rowMeans(Openness_Sophisticated), rowMeans(Openness_Contemporary), rowMeans(Openness_Unpretentious)), ncol = 3)
colnames(Openness_Songs) <- c("S", "C", "U")
Openness_Songs_DataFrame <- as.data.frame(Openness_Songs)

# STUDY-2
# S between personalities
Sophisticated_Personalities <- matrix(c(rowMeans(Extraversion_Sophisticated), rowMeans(Agreeableness_Sophisticated), rowMeans(Conscientiousness_Sophisticated), 
                                 rowMeans(Neuroticism_Sophisticated), rowMeans(Openness_Sophisticated)), ncol = 5)
colnames(Sophisticated_Personalities) <- c("E", "A", "C", "N", "O")
Sophisticated_Personalities_DataFrame <- as.data.frame(Sophisticated_Personalities)

# C between personalities
Contemporary_Personalities <- matrix(c(rowMeans(Extraversion_Contemporary), rowMeans(Agreeableness_Contemporary), rowMeans(Conscientiousness_Contemporary), 
                                 rowMeans(Neuroticism_Contemporary), rowMeans(Openness_Contemporary)), ncol = 5)
colnames(Contemporary_Personalities) <- c("E", "A", "C", "N", "O")
Contemporary_Personalities_DataFrame <- as.data.frame(Contemporary_Personalities)

# U between personalities
Unpretentious_Personalities <- matrix(c(rowMeans(Extraversion_Unpretentious), rowMeans(Agreeableness_Unpretentious), rowMeans(Conscientiousness_Unpretentious), 
                                    rowMeans(Neuroticism_Unpretentious), rowMeans(Openness_Unpretentious)), ncol = 5)
colnames(Unpretentious_Personalities) <- c("E", "A", "C", "N", "O")
Unpretentious_Personalities_DataFrame <- as.data.frame(Unpretentious_Personalities)

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
longExtraversionSongs <- melt(Extraversion_Songs, id.vars=c("ID"))
colnames(longExtraversionSongs) <- c("ID", "Songs", "Scales")

longAgreeablenessSongs <- melt(Agreeableness_Songs, id.vars=c("ID"))
colnames(longAgreeablenessSongs) <- c("ID", "Songs", "Scales")

longConscientiousnessSongs <- melt(Conscientiousness_Songs, id.vars=c("ID"))
colnames(longConscientiousnessSongs) <- c("ID", "Songs", "Scales")

longNeuroticismSongs <- melt(Neuroticism_Songs, id.vars=c("ID"))
colnames(longNeuroticismSongs) <- c("ID", "Songs", "Scales")

longOpennessSongs <- melt(Openness_Songs, id.vars=c("ID"))
colnames(longOpennessSongs) <- c("ID", "Songs", "Scales")

# STUDY-2:
longSophisticated_Personalities <- melt(Sophisticated_Personalities, id.vars=c("ID"))
colnames(longSophisticated_Personalities) <- c("ID", "Personalities", "Scales")

longContemporary_Personalities <- melt(Contemporary_Personalities, id.vars=c("ID"))
colnames(longContemporary_Personalities) <- c("ID", "Personalities", "Scales")

longUnpretentious_Personalities <- melt(Unpretentious_Personalities, id.vars=c("ID"))
colnames(longUnpretentious_Personalities) <- c("ID", "Personalities", "Scales")

## Display summary of longExtraversionVibrationLevels matrix
library(FSA)
# STUDY-1:
Summarize(Scales ~ Songs, data=longExtraversionSongs)
Summarize(Scales ~ Songs, data=longAgreeablenessSongs)
Summarize(Scales ~ Songs, data=longConscientiousnessSongs)
Summarize(Scales ~ Songs, data=longNeuroticismSongs)
Summarize(Scales ~ Songs, data=longOpennessSongs)

# STUDY-2:
Summarize(Scales ~ Personalities, data=longSophisticated_Personalities)
Summarize(Scales ~ Personalities, data=longContemporary_Personalities)
Summarize(Scales ~ Personalities, data=longUnpretentious_Personalities)

# Friedman -> Wilcoxon + wilcox value for each group -> Bonferroni
library("rstatix")
library(survival)
library(coin)

# STUDY-1:
friedman.test(Extraversion_Songs)
longExtraversionSongs  %>% wilcox_effsize(Scales ~ Songs, paired = TRUE)
wilcoxsign_test(Extraversion_Songs_DataFrame$S ~ Extraversion_Songs_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Songs_DataFrame$S ~ Extraversion_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcoxsign_test(Extraversion_Songs_DataFrame$C ~ Extraversion_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcox_E_p_values <- c(2.541e-05, 0.006551, 0.0001066)
p.adjust(wilcox_E_p_values, method = "bonf")

friedman.test(Agreeableness_Songs)
longAgreeablenessSongs %>% wilcox_effsize(Scales ~ Songs, paired = TRUE)
wilcoxsign_test(Agreeableness_Songs_DataFrame$S ~ Agreeableness_Songs_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Songs_DataFrame$S ~ Agreeableness_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcoxsign_test(Agreeableness_Songs_DataFrame$C ~ Agreeableness_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcox_A_p_values <- c(1.816e-05, 0.1207, 2.53e-05)
p.adjust(wilcox_A_p_values, method = "bonf")

friedman.test(Conscientiousness_Songs)
longConscientiousnessSongs %>% wilcox_effsize(Scales ~ Songs, paired = TRUE)
wilcoxsign_test(Conscientiousness_Songs_DataFrame$S ~ Conscientiousness_Songs_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Songs_DataFrame$S ~ Conscientiousness_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcoxsign_test(Conscientiousness_Songs_DataFrame$C ~ Conscientiousness_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcox_C_p_values <- c(0.002254, 0.136, 0.005332)
p.adjust(wilcox_C_p_values, method = "bonf")

friedman.test(Neuroticism_Songs)
longNeuroticismSongs %>% wilcox_effsize(Scales ~ Songs, paired = TRUE)
wilcoxsign_test(Neuroticism_Songs_DataFrame$S ~ Neuroticism_Songs_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Songs_DataFrame$S ~ Neuroticism_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcoxsign_test(Neuroticism_Songs_DataFrame$C ~ Neuroticism_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcox_N_p_values <- c(7.072e-05, 0.8191, 0.0001938)
p.adjust(wilcox_N_p_values, method = "bonf")

friedman.test(Openness_Songs)
longOpennessSongs %>% wilcox_effsize(Scales ~ Songs, paired = TRUE)
wilcoxsign_test(Openness_Songs_DataFrame$S ~ Openness_Songs_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Songs_DataFrame$S ~ Openness_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcoxsign_test(Openness_Songs_DataFrame$C ~ Openness_Songs_DataFrame$U, zero.method = "Wilcoxon")
wilcox_O_p_values <- c(1.761e-05, 0.002818, 7.159e-05)
p.adjust(wilcox_O_p_values, method = "bonf")

# STUDY-2:
friedman.test(Sophisticated_Personalities)
longSophisticated_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Sophisticated_Personalities_DataFrame$E ~ Sophisticated_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$E ~ Sophisticated_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$E ~ Sophisticated_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$E ~ Sophisticated_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$A ~ Sophisticated_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$A ~ Sophisticated_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$A ~ Sophisticated_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$C ~ Sophisticated_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$C ~ Sophisticated_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Sophisticated_Personalities_DataFrame$N ~ Sophisticated_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Sophisticated_p_values <- c(8.043e-05, 0.0255, 0.0002654, 1.387e-05, 0.003808, 1.225e-05, 0.0008449, 3.404e-05, 0.0001708, 1.223e-05)
p.adjust(wilcox_Sophisticated_p_values, method = "bonf")

friedman.test(Contemporary_Personalities)
longContemporary_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Contemporary_Personalities_DataFrame$E ~ Contemporary_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$E ~ Contemporary_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$E ~ Contemporary_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$E ~ Contemporary_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$A ~ Contemporary_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$A ~ Contemporary_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$A ~ Contemporary_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$C ~ Contemporary_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$C ~ Contemporary_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Contemporary_Personalities_DataFrame$N ~ Contemporary_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Contemporary_p_values <- c(2.069e-05, 1.991e-05, 3.83e-05, 1.814e-05, 0.6667, 0.1283, 0.0148, 0.2011, 0.02825, 0.513)
p.adjust(wilcox_Contemporary_p_values, method = "bonf")

friedman.test(Unpretentious_Personalities)
longUnpretentious_Personalities %>% wilcox_effsize(Scales ~ Personalities, paired = TRUE)
wilcoxsign_test(Unpretentious_Personalities_DataFrame$E ~ Unpretentious_Personalities_DataFrame$A, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$E ~ Unpretentious_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$E ~ Unpretentious_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$E ~ Unpretentious_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$A ~ Unpretentious_Personalities_DataFrame$C, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$A ~ Unpretentious_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$A ~ Unpretentious_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$C ~ Unpretentious_Personalities_DataFrame$N, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$C ~ Unpretentious_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcoxsign_test(Unpretentious_Personalities_DataFrame$N ~ Unpretentious_Personalities_DataFrame$O, zero.method = "Wilcoxon")
wilcox_Unpretentious_p_values <- c(0.001913, 0.459, 1.222e-05, 0.005088, 0.0005371, 1.385e-05, 0.3895, 0.0001477, 0.003296, 1.223e-05)
p.adjust(wilcox_Unpretentious_p_values, method = "bonf")


library(reshape2)
library(magrittr)
library(ggplot2)
library(ggpubr)
library(gridExtra)
library(grid)
library(lattice)

########### Visual representation of Study-1 and Study-2 with boxplots with Wilcoxon Signed Rank tests, therefore we pass (paired=True) argument
###################
stars <- list(cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), symbols = c("**", "**", "*", "*", "ns"))
my_comparisonsSpeakerNew1E <- list( c("S", "C"), 
                                    c("S","U"), 
                                    c("C","U"))
mean_comparison1E <- stat_compare_means(comparisons = my_comparisonsSpeakerNew1E, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1E <- ggboxplot(longExtraversionSongs,
                      x = "Songs", y = "Scales",  xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5), limits=c(1, 6.05)) + mean_comparison1E + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1E
###################
my_comparisonsSpeakerNew1A <- list( c("S", "C"), 
                                    c("C","U"))
mean_comparison1A <- stat_compare_means(comparisons = my_comparisonsSpeakerNew1A, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1A <- ggboxplot(longAgreeablenessSongs,
                        x = "Songs", y = "Scales",  xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5), limits=c(1, 6.05)) + mean_comparison1A + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1A
###################
my_comparisonsSpeakerNew1C <- list( c("S", "C"), 
                                    c("C","U"))
mean_comparison1C <- stat_compare_means(comparisons = my_comparisonsSpeakerNew1C, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1C <- ggboxplot(longConscientiousnessSongs,
                        x = "Songs", y = "Scales",  xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5), limits=c(1, 6.05)) + mean_comparison1C + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1C
###################
my_comparisonsSpeakerNew1N <- list( c("S", "C"), 
                                    c("C","U"))
mean_comparison1N <- stat_compare_means(comparisons = my_comparisonsSpeakerNew1N, paired=TRUE, label =  "p.signif", symnum.args = stars)
testPlot1N <- ggboxplot(longNeuroticismSongs,
                        x = "Songs", y = "Scales",  xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5), limits=c(1, 6.05)) + mean_comparison1N + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1N
###################
my_comparisonsSpeakerNew1O <- list( c("S", "C"), 
                                    c("S","U"), 
                                    c("C","U"))
mean_comparison1O <- stat_compare_means(comparisons = my_comparisonsSpeakerNew1O, paired=TRUE,  label =  "p.signif", symnum.args = stars)
testPlot1O <- ggboxplot(longOpennessSongs,
                        x = "Songs", y = "Scales",  xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5), limits=c(1, 6.05)) + mean_comparison1O + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot1O
###############################################################################################
my_comparisonsSpeakerNew2Sop <- list( c("E", "A"), 
                                      c("E","N"), 
                                      c("E","O"),
                                      c("A", "C"), 
                                      c("A", "N"), 
                                      c("A", "O"),
                                      c("C", "N"), 
                                      c("C", "O"), 
                                      c("N", "O"))
mean_comparison2Sop <- stat_compare_means(comparisons = my_comparisonsSpeakerNew2Sop, paired=TRUE,  label =  "p.signif", symnum.args = stars)
testPlot2Sop <- ggboxplot(longSophisticated_Personalities,
                        x = "Personalities", y = "Scales",  xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5), limits=c(1, 9)) + mean_comparison2Sop + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2Sop
###################
my_comparisonsSpeakerNew2Con <- list( c("E", "A"), 
                                      c("E","C"), 
                                      c("E","N"),
                                      c("E", "O"))
mean_comparison2Con <- stat_compare_means(comparisons = my_comparisonsSpeakerNew2Con, paired=TRUE,  label =  "p.signif", symnum.args = stars)
testPlot2Con <- ggboxplot(longContemporary_Personalities,
                        x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5), limits=c(1, 9)) + mean_comparison2Con + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2Con
###################
my_comparisonsSpeakerNew2Un <- list( c("E", "A"), 
                                     c("E","N"), 
                                     c("A","C"),
                                     c("A", "N"), 
                                     c("C", "N"),
                                     c("C", "O"), 
                                     c("N", "O"))
mean_comparison2Un <- stat_compare_means(comparisons = my_comparisonsSpeakerNew2Un, paired=TRUE,  label =  "p.signif", symnum.args = stars)
testPlot2Un <- ggboxplot(longUnpretentious_Personalities,
                         x = "Personalities", y = "Scales", xlab = FALSE, ylab = FALSE, width = 0.4) +
  scale_y_continuous(breaks = c(1, 2, 3, 4, 5), limits=c(1, 9)) + mean_comparison2Un + theme(legend.position = "none") + grids(linetype = "dashed")
testPlot2Un


