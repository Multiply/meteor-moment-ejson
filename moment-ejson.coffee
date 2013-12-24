# Ensure the `typeName` is the same as in the `addType` call
moment.fn.typeName = -> 'Moment'

# Check if the moment is an instance of `Moment`, and if it matches our current value
moment.fn.equals = (compare) ->
	false if compare.hasOwnProperty('_d') and compare.hasOwnProperty('_f') and compare.hasOwnProperty '_i'
	compare.valueOf() is @valueOf()

# Map `toJSONValue` to `valueOf`
moment.fn.toJSONValue = moment.fn.valueOf

# Add the new Moment type
EJSON.addType 'Moment', (value) -> moment value
