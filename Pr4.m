
a1 = xlsread('SokSerg.xlsx',1,'E8:E4386');
a2 = xlsread('SokSerg.xlsx',1,'K8:K4386');
a3 = xlsread('SokSerg.xlsx',1,'O8:O4386');
a4 = xlsread('SokSerg.xlsx',1,'Q8:Q4386');
a5 = xlsread('SokSerg.xlsx',1,'S8:S4386');
a6 = xlsread('SokSerg.xlsx',1,'T8:T4386');
data = [a1 a2 a3 a4 a5 a6]

t = isnan(data)

j = data(:,1) == 0
data(j,:) = [];

%4 задание
%для первого столбца
q11 = quar(data(:,1),0.25);
q31 = quar(data(:,1),0.75);
Iqr1 = q31 - q11 
l1 = (q31 + 1.5*Iqr1 < data(:,1)) | (q11 - 1.5*Iqr1 > data(:,1))

%для второго столбца
q12 = quar(data(:,2),0.25);
q32 = quar(data(:,2),0.75);
Iqr2 = q32 - q12 
l2 = ((q32 + 1.5*Iqr2 < data(:,2)) | (q12 - 1.5*Iqr2 > data(:,2)))

%для третьего столбца
q13 = quar(data(:,3),0.25);
q33 = quar(data(:,3),0.75);
Iqr3 = q33 - q13 
l3 = ((q33 + 1.5*Iqr3 < data(:,3)) | (q13 - 1.5*Iqr3 > data(:,3)))

%для четвертого столбца
q14 = quar(data(:,4),0.25);
q34 = quar(data(:,4),0.75);
Iqr4 = q34 - q14 
l4 = ((q34 + 1.5*Iqr4 < data(:,4)) | (q14 - 1.5*Iqr4 > data(:,4)))

%для пятого столбца
q15 = quar(data(:,5),0.25);
q35 = quar(data(:,5),0.75);
Iqr5 = q35 - q15 
l5 = ((q35 + 1.5*Iqr5 < data(:,5)) | (q15 - 1.5*Iqr5 > data(:,5)))

%для шестого столбца
q16 = quar(data(:,6),0.25);
q36 = quar(data(:,6),0.75);
Iqr6 = q36 - q16
l6 = ((q36 + 1.5*Iqr6 < data(:,6)) | (q16 - 1.5*Iqr6 > data(:,6)))

L = l1 | l2 | l3 | l4 | l5 | l6;
data(L,:) = [];




