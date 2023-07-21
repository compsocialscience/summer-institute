## Raphael Heiberger: PopBERT. Detecting left and right-wing populism in the German Bundestag.

The ``rise of populism'' concerns many political observers and has been linked to, for instance, increasing economic anxiety or ideological polarization.
Although political theory provides a multi-dimensional perspective on how to approximate populism, its detection in political communications remains fragmentary.
To understand the causes and effects of populists' language, however, researchers require valid, reliable, and scalable measurements.
For that purpose, we created an annotated dataset based on parliamentary speeches of the German Bundestag (2013--2021).
We utilize a transformer-based BERT model to detect the two defining dimensions of populism seperately -- anti-elitism and people-centrism.
To identify, in addition, how the ``thin ideology'' of populism is ``thickened'', our model is also trained on populist statements that are attachted to left or right-wing host ideologies.
A battery of validation checks shows that the predictions (i) rank parties according to expert surveys, (ii) exhibit a high correspondence to out-of-sample tests, (iii) clearly outperform existing approaches, and, finally, (iv) reveal a high face-validity for each dimension when inspected qualitatively.
Our approach enables dynamic analyses investigating how German politicians and parties use populist language, and how it spreads in the interactive setting of parliamentary debates.
