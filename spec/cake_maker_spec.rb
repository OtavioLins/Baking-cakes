require 'spec_helper'

describe 'Cake' do
  it 'Recebe 1 receita e 1 lista de ingredientes e deve retornar 3' do
    recipes = [{flour: 400}]
    ingredients = {flour: 1200}

    expect(CakeMaker.new.maximum(recipes, ingredients)).to eq(3)
  end
  
  it 'Recebe 1 receita e 1 lista de ingredientes e deve retornar 0' do
    recipes = [{flour: 500}]
    ingredients = {flour: 300}

    expect(CakeMaker.new.maximum(recipes, ingredients)).to eq(0)
  end
  
  it 'Recebe 1 receita e 1 lista de ingredientes e deve retornar 2' do
    recipes = [{flour: 500, sugar: 200, eggs: 1}]
    ingredients = {flour: 1200, sugar: 1200, eggs: 5, milk: 200}

    expect(CakeMaker.new.maximum(recipes, ingredients)).to eq(2)
  end

  it 'Recebe 1 receita e 1 lista de ingredientes e deve retornar 0' do
    recipes = [{flour: 500, sugar: 200, eggs: 1, milk: 400}]
    ingredients = {flour: 1200, sugar: 1200, eggs: 5, condensed_milk: 200}

    expect(CakeMaker.new.maximum(recipes, ingredients)).to eq(0)
  end

  it 'Recebe 2 receitas e 1 lista de ingredientes e deve retornar 1' do
    recipes = [{flour: 700, sugar: 100, eggs: 4, milk: 400, condensed_milk: 200}, {flour: 300, sugar: 800, eggs: 3, milk: 200, chocolate: 200}]
    ingredients = {flour: 1200, sugar: 1200, eggs: 5, milk: 1000, condensed_milk: 200, chocolate: 100}

    expect(CakeMaker.new.maximum(recipes, ingredients)).to eq(1)
  end

  it 'Recebe 3 receitas e 1 lista de ingredientes e deve retornar 0' do
    recipes = [{flour: 700, sugar: 100, eggs: 4, milk: 400, condensed_milk: 200}, {flour: 300, sugar: 800, eggs: 3, milk: 400, chocolate: 200},
              {flour: 500, sugar: 100, eggs: 2, milk: 200, strawberry: 20, cream: 250}]
    ingredients = {flour: 600, sugar: 1200, eggs: 5, milk: 200, condensed_milk: 200, strawberry: 15, cream: 250}

    expect(CakeMaker.new.maximum(recipes, ingredients)).to eq(0)
  end

  it 'Recebe 2 receitas e 1 lista de ingredientes e deve retornar 5' do
    recipes = [{flour: 300, sugar: 800, eggs: 3, milk: 400, chocolate: 200}, {flour: 200, sugar: 100, eggs: 1, milk: 400, condensed_milk: 200}]
    ingredients = {flour: 1200, sugar: 1200, eggs: 5, milk: 2000, condensed_milk: 1000, chocolate: 100}

    expect(CakeMaker.new.maximum(recipes, ingredients)).to eq(5)
  end
end