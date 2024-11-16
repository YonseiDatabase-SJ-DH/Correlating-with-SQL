-- 실업률과 자살률 간의 상관계수 계산
SELECT 
    (COUNT(*) * SUM(unemployment_rate * suicide_rate) - SUM(unemployment_rate) * SUM(suicide_rate)) /
    (SQRT((COUNT(*) * SUM(POWER(unemployment_rate, 2)) - POWER(SUM(unemployment_rate), 2)) *
          (COUNT(*) * SUM(POWER(suicide_rate, 2)) - POWER(SUM(suicide_rate), 2))))
    AS correlation_coefficient
FROM 
    suicide_data;

-- 빈곤율과 자살률 간의 상관계수 계산
SELECT 
    (COUNT(*) * SUM(poverty_rate * suicide_rate) - SUM(poverty_rate) * SUM(suicide_rate)) /
    (SQRT((COUNT(*) * SUM(POWER(poverty_rate, 2)) - POWER(SUM(poverty_rate), 2)) *
          (COUNT(*) * SUM(POWER(suicide_rate, 2)) - POWER(SUM(suicide_rate), 2))))
    AS correlation_coefficient
FROM 
    suicide_data;

-- 지니계수와 자살률 간의 상관계수 계산
SELECT 
    (COUNT(*) * SUM(gini_index * suicide_rate) - SUM(gini_index) * SUM(suicide_rate)) /
    (SQRT((COUNT(*) * SUM(POWER(gini_index, 2)) - POWER(SUM(gini_index), 2)) *
          (COUNT(*) * SUM(POWER(suicide_rate, 2)) - POWER(SUM(suicide_rate), 2))))
    AS correlation_coefficient
FROM 
    suicide_data;

-- 이혼율과 자살률 간의 상관계수 계산
SELECT 
    (COUNT(*) * SUM(divorce_rate * suicide_rate) - SUM(divorce_rate) * SUM(suicide_rate)) /
    (SQRT((COUNT(*) * SUM(POWER(divorce_rate, 2)) - POWER(SUM(divorce_rate), 2)) *
          (COUNT(*) * SUM(POWER(suicide_rate, 2)) - POWER(SUM(suicide_rate), 2))))
    AS correlation_coefficient
FROM 
    suicide_data;

-- 교육 수준과 자살률 간의 상관계수 계산
SELECT 
    (COUNT(*) * SUM(education_level * suicide_rate) - SUM(education_level) * SUM(suicide_rate)) /
    (SQRT((COUNT(*) * SUM(POWER(education_level, 2)) - POWER(SUM(education_level), 2)) *
          (COUNT(*) * SUM(POWER(suicide_rate, 2)) - POWER(SUM(suicide_rate), 2))))
    AS correlation_coefficient
FROM 
    suicide_data;

