componentPath = "../../../../app/assets/javascripts/src/components/test.coffee"

jest.dontMock componentPath

describe 'test', ->
  it 'adds 1 + 2 to equal 3', ->
    sum = require componentPath
    expect(sum(1, 2)).toBe 3
