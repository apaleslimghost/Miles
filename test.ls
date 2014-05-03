require! {
	'./index.js'.miles
	'karma-sinon-expect'.expect
	'concat-stream'
	σ: 'from'
}

export
	'Miles':
		'should run tasks by the array of files and output them': (done)->
			spec = task: expect.sinon.stub!
			spec.task.with-args 'file.txt' .returns σ <[ output ]>
			output = expect.sinon.stub!
			output.with-args 'file.txt' .returns concat-stream (data)->
				expect data .to.be 'output'
				done!
			files = <[ file.txt ]>

			miles output, spec, files