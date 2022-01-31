Como parte do seu estágio gerenciando uma rede de padarias, você deve ajudar os padeiros da rede no processo de gerenciamento de ingredientes.

Para isso, você deve implementar o código do método maximum, que deve retornar a quantidade máxima de bolos que podem ser feitas ao receber uma quantidade de receitas (recipes) e uma quantidade de ingredientes disponíveis (ingredients). 

Admita que, caso um ingrediente não esteja presente em ingredients mas esteja listado em alguma das recipes, que a quantidade desse ingrediente é 0. Admita, também, que apenas uma receita será seguida, ou seja, se a partir de uma receita podem se fazer 3 bolos e ainda sobrarem ingredientes para se fazer um bolo por outra receita, a resposta final será 3.

Por exemplo, dada a chamada maximum([{flour: 500, sugar: 200, eggs: 1}], {flour: 1200, sugar: 1200, eggs: 5, milk: 200}), o método deve retornar 2. Por outro lado, a chamada maximum([{apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {apples: 7, flour: 250, sugar: 250, milk: 150, oil: 100}], {sugar: 500, flour: 2000, milk: 2000}) deve retornar 0.
