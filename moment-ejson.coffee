# Ensure the `typeName` is the same as in the `addType` call
moment.fn.typeName = -> 'Moment'

# Check if the moment is an instance of `Moment`, and if it matches our current value
moment.fn.equals = (compare) ->
	false if compare not instanceof Moment
	compare.valueOf() is @valueOf()

# Map `toJSONValue` to `valueOf`
moment.fn.toJSONValue = moment.fn.valueOf

# Add the new Moment type
EJSON.addType 'Moment', (value) -> moment value
